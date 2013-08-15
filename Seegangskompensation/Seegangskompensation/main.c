//----------------------------------------------------------------------------
// C main line
// Programm: Seegangskompensation bei Krahnanlagen
// Version: 0.0.0.1
// Controler: CY8C27446-24PXI
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules

void main(void)
{
	// Difinition der Konstanten
	char kochPeriodendauer = 50;					// Periodendauer
	char kochKP;
	char kochKS;
	
	
	// Variablendeklration
	
	char rgchLCD[] = "Test";   						
	char pdchBechleunigung, pdchEntfernung;			
	char pbchSollwert;								
	char pbchPulsweite;
	char hichAusgangswert;							
	char hichBeschleunigungssumme;
		
	// Initialisierung des Controlers
	
	M8C_EnableGInt;                     			// Enable global interrupts	
  	
	LCD_1_Start();                 					// Initialisieren des LCD-Displays
   	
	PWM8_1_WritePeriod(kochPeriodendauer);        	// Initialisieren der PWM-Module                    
    PWM8_1_Start();

	PGA_1_SetGain(PGA_1_G0_12);						// Initialisieren der Verstärker
	PGA_2_SetGain(PGA_2_G0_12);
	PGA_3_SetGain(PGA_3_G0_12);
	
	PGA_1_Start(PGA_1_LOWPOWER);
	PGA_2_Start(PGA_2_LOWPOWER);
	PGA_3_Start(PGA_3_LOWPOWER);	
	
	DUALADC8_Start(DUALADC8_HIGHPOWER); 			// Initialisieren des Dualen AD-Wandlers
   	DUALADC8_SetCalcTime(100);          			// für Entfernung und Beschleunigung
   	DUALADC8_GetSamples(); 
	
	ADCINC_Start(ADCINC_HIGHPOWER);      			// Initialisieren des AD-Wandlers
	ADCINC_GetSamples(0);                 			// für den Sollwert
	
	DIGITALOUT_Start;								//Initialisieren der Digitalen Ausgangs
	
	// Endlosschleife
	while(1) {
	
		// Daten Einlesen
		if(ADCINC_fIsDataAvailable() != 0)   			// Wenn Sollwertdaten bereit sind
		pbchSollwert = ADCINC_cClearFlagGetData();		// Einlesen des Sollwertes
                                               			// data ready flag zurüvksetzen
              	   
    	while(DUALADC8_fIsDataAvailable == 0);    		// Auf Entfernung und Position Warten
   		pdchBechleunigung = DUALADC8_cGetData1();      	// Einlesen der Beschleunigung
    	pdchEntfernung = DUALADC8_cGetData2ClearFlag();	// Einlesen der Entfernung
                                               			// data ready flag zurüvksetzen                                    
		// Parameter Berechnen
		
		hichBeschleunigungssumme = hichBeschleunigungssumme + pdchBechleunigung;
		
		hichAusgangswert = ( pbchSollwert - pdchBechleunigung ) * kochKP
							- 1 / kochKS * hichBeschleunigungssumme;
		
		pbchPulsweite = hichAusgangswert; //TODO: Korekturfaktor Einfügen 
		// Ausgang Setzen
				
		// positive Drehrichtung
		if (hichAusgangswert >= 0){				
			DIGITALOUT_On;
			PWM8_1_WritePulseWidth(pbchPulsweite);
		}
		// negative Drehrichtung
		else {				
			DIGITALOUT_Off;
			PWM8_1_WritePulseWidth(-pbchPulsweite);
		}
				
		// LCD Ansteuern 
		LCD_1_Position(0,5);            
   		LCD_1_PrString(rgchLCD);
	
	};
	
}
