//----------------------------------------------------------------------------
// C main-Funktion
// Programm: Seegangskompensation bei Krahnanlagen
// Controler: CY8C27446-24PXI
//----------------------------------------------------------------------------

#include <m8c.h>        
#include "PSoCAPI.h"    

void main(void)
{
	// Difinition der Konstanten
	char kochPeriodendauer = 50;					
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
	
	//globale Interrupts Freigeben
	M8C_EnableGInt;                     				
  	
	// Initialisieren des LCD-Displays
	LCD_1_Start();                 					
   	
	// Initialisieren des PWM-Moduls
	PWM8_1_WritePeriod(kochPeriodendauer);        	                    
    PWM8_1_Start();
	
	// Initialisieren der Verstärker
	PGA_1_SetGain(PGA_1_G0_12);						
	PGA_2_SetGain(PGA_2_G0_12);
	PGA_3_SetGain(PGA_3_G0_12);
	
	PGA_1_Start(PGA_1_LOWPOWER);
	PGA_2_Start(PGA_2_LOWPOWER);
	PGA_3_Start(PGA_3_LOWPOWER);	
	
	// Initialisieren des Dualen AD-Wandlers
	// für Entfernung und Beschleunigung
	DUALADC8_Start(DUALADC8_HIGHPOWER); 			
   	DUALADC8_SetCalcTime(100);          			
   	DUALADC8_GetSamples(); 
	
	// Initialisieren des AD-Wandlers
	// für den Sollwert
	ADCINC_Start(ADCINC_HIGHPOWER);      			
	ADCINC_GetSamples(0);                 			
	
	//Initialisieren der Digitalen Ausgangs
	DIGITALOUT_Start;								
	
	// Endlosschleife
	while(1) {
	
		// Daten Einlesen
		
		// Wenn Sollwertdaten bereit sind
		if(ADCINC_fIsDataAvailable() != 0)
			
		// Einlesen des Sollwertes
        // data ready flag zurüvksetzen	
		pbchSollwert = ADCINC_cClearFlagGetData();		
              	   
    	// Auf Entfernung und Position Warten
		while(DUALADC8_fIsDataAvailable == 0);    		
   		// Einlesen der Beschleunigung
		pdchBechleunigung = DUALADC8_cGetData1();      	
    	
		// Einlesen der Entfernung
        // data ready flag zurüvksetzen         
		pdchEntfernung = DUALADC8_cGetData2ClearFlag();	                           
		// Parameter Berechnen
		
		hichBeschleunigungssumme = hichBeschleunigungssumme + pdchBechleunigung;
		
		hichAusgangswert = ( pbchSollwert - pdchBechleunigung ) * kochKP
							- 1 / kochKS * hichBeschleunigungssumme;
		//TODO: Korekturfaktor Einfügen 
		pbchPulsweite = hichAusgangswert; 
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
