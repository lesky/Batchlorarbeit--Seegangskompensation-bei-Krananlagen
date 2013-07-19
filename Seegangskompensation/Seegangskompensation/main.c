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
	
	// Initialisierung des Controlers
	
	M8C_EnableGInt;                     			// Enable global interrupts	
  	LCD_1_Start();                 					// Initialisieren des LCD-Displays
   
   	DUALADC8_Start(DUALADC8_HIGHPOWER); 			// Turn on Analog section
   	DUALADC8_SetCalcTime(100);          			// Set CalcTime to 100
   	DUALADC8_GetSamples();              			// Start ADC
	// Endlosschleife
	while(1) {
	
	// Daten Einlesen
	   
    while(DUALADC8_fIsDataAvailable == 0);    		// Auf Daten warten
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
