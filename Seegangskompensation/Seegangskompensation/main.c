/********************************************************
* C main-Funktion										*
* Programm: Seegangskompensation bei Krahnanlagen		*
* Controler: CY8C27446-24PXI							*
* 														*
* I/O-Konfiguration:									*
* LCD 			-> Port 2								*
* SDA			-> 1.0									*
* SCL 			-> 1.1			 						*
* IN1		 	-> 1.3									*
* IN2			-> 1.5									*
* PWM 1			-> 1.4									*
* Beschleunigung-> 0.7									*
* Entfernung 	-> 0.4									*
* Sollwert		-> 0.5									*
* 														*
* Zusätzlich definierte Prüfixe zur Variablenbenennung	*
* Mittels Ungaricher Notation nach Charles Simonyi:		*
* pd	-> Prozessbezogene Daten						*
* ko	-> Konstanten									*
* hi	-> Interne Hilfsgrößen							*
* in	-> Datentyp Integer								*
********************************************************/

#include <m8c.h>        
#include "PSoCAPI.h"    
#include <stdlib.h>

// globale Structur zur Übergabe der Prozessdaten:
struct 
   {	  						
	char pdchBechleunigung, pdchEntfernung;			
	char pdchSollwert;								
	} prozess;

// Funktionsprototypen:
void Initalisierung(void);

void main(void)
	{
	
	
	Initalisierung();
	
		
}
	


void Initalisierung(void)
	{
	//globale Interrupts Freigeben
	M8C_EnableGInt;
		
	// I2C Starten
	I2Cm_Start();
//  	// A/D Wandler konfigurieren
//	I2Cm_fSendStart(0x48,I2Cm_WRITE);       
//    I2Cm_fWrite(0x00);
//	I2Cm_SendStop();
	// Initialisieren des LCD-Displays
	LCD_1_Start();                 					
   	
	// Initialisieren des PWM-Moduls
	// PWM8_1_WritePeriod(kochPeriodendauer);        	                    
    PWM8_1_Start();
         			
	
	//Initialisieren der Digitalen Ausgänge
		
	IN1_Start();	
	IN2_Start();
	}