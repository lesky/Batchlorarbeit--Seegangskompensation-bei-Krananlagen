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
	
	// Variablendeklration
	char rgchLCD[] = "Test";   // Define RAM string
	
	// Initialisierung des Controlers
		
  	LCD_Start();                  // Initialisation des LCD-Displays
   	
	// Endlosschleife
	while(){
	
		// Daten Einlesen
		
		// Parameter Berechnen
		
		// Ausgang Setzen
		
		// LCD Ansteuern 
		LCD_Position(0,5);            
   		LCD_PrString(rgchLCD);        
	};
	
}
