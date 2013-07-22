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
	
	// Variablendeklration
	
	char rgchLCD[] = "Test";   						// Define RAM string
	char pdchBechleunigung, pdchEntfernung;			// Variablen zum Einlesen der Daten
	char pbchSollwert;								// Sollwert
	
	// Initialisierung des Controlers
	
	M8C_EnableGInt;                     			// Enable global interrupts	
  	
	LCD_1_Start();                 					// Initialisieren des LCD-Displays
   
   	DUALADC8_Start(DUALADC8_HIGHPOWER); 			// Initialisieren des Dualen AD-Wandlers
   	DUALADC8_SetCalcTime(100);          			// für Entfernung und Beschleunigung
   	DUALADC8_GetSamples(); 
	
	ADCINC_Start(ADCINC_HIGHPOWER);      			// Initialisieren des AD-Wandlers
	ADCINC_GetSamples(0);                 			// für den Sollwert
		
	// Endlosschleife
	while(1) {
	
		// Daten Einlesen
		if(ADCINC_fIsDataAvailable() != 0)   			// Wenn Sollwertdaten bereit sind
		pbchSollwert  ADCINC_cClearFlagGetData(void)	// Einlesen des Sollwertes
                                               			// data ready flag zurüvksetzen
              	   
    	while(DUALADC8_fIsDataAvailable == 0);    		// Auf Entfernung und Position Warten
   		pdchBechleunigung = DUALADC8_cGetData1();      	// Einlesen der Beschleunigung
    	pdchEntfernung = DUALADC8_cGetData2ClearFlag();	// Einlesen der Entfernung
                                               			// data ready flag zurüvksetzen
                                                 
     
		// Parameter Berechnen
		
		// Ausgang Setzen
		
		// LCD Ansteuern 
		LCD_1_Position(0,5);            
   		LCD_1_PrString(rgchLCD);
	
	};
	
}
