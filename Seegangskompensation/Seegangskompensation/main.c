//----------------------------------------------------------------------------
// C main line
// Programm: Seegangskompensation bei Krahnanlagen
// Version: 0.0.0.1
// Controler: CY8C27446-24PXI
// Variablenbenennung nach Apps Hungaryan
//----------------------------------------------------------------------------

#include <m8c.h>        // part specific constants and macros
#include "PSoCAPI.h"    // PSoC API definitions for all User Modules


void main(void)
{
	// Difinition der Konstanten
	char kochPeriodendauer = 50;					// Periodendauer
	// Variablendeklration
	
	char rgchLCD[] = "Test";   						// Define RAM string
	char pdchBechleunigung, pdchEntfernung;			// Variablen zum Einlesen der Daten
	char pbchSollwert;								
	char pbchPulsweite;
	char hichAusgangswert;							
	// Initialisierung des Controlers
	
	M8C_EnableGInt;                     			// Enable global interrupts	
  	
	LCD_1_Start();                 					// Initialisieren des LCD-Displays
   	
	PWM8_1_WritePeriod(kochPeriodendauer);        	// Initialisieren der PWM-Module                    
    PWM8_1_Start();
	PWM8_2_WritePeriod(kochPeriodendauer);                             
    PWM8_2_Start();

	DUALADC8_Start(DUALADC8_HIGHPOWER); 			// Initialisieren des Dualen AD-Wandlers
   	DUALADC8_SetCalcTime(100);          			// für Entfernung und Beschleunigung
   	DUALADC8_GetSamples(); 
	
	ADCINC_Start(ADCINC_HIGHPOWER);      			// Initialisieren des AD-Wandlers
	ADCINC_GetSamples();                 			// für den Sollwert
		
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
		
		// Ausgang Setzen
		// positive Drehrichtung
		if (hichAusgangswert >= OSC_CR0){				
			PWM8_1_WritePulseWidth(pbchPulsweite);
			PWM8_2_WritePulseWidth(0);
		}
		// negative Drehrichtung
		if (hichAusgangswert >= OSC_CR0){				
			PWM8_2_WritePulseWidth(pbchPulsweite);
			PWM8_1_WritePulseWidth(0);
		}
		
		
		// LCD Ansteuern 
		LCD_1_Position(0,5);            
   		LCD_1_PrString(rgchLCD);
	
	};
	
}
