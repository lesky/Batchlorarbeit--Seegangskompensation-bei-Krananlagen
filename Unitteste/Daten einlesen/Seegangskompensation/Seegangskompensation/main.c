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

// Präprozessor:Für Unittesting:
// #defein Test nicht auskomentieren:
#define UTEST

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
void Dateneinlesen(void);

// mainfunktion
// Präprozessor: kompiliere wenn kein test
#ifndef UTEST

#else
	// Funktion zum Unittesting
	void main(void){
		Initalisierung();
		
		// Unittest des LCD
		
		LCD_1_Position(1,0);    
    	LCD_1_PrCString("OK");
		}
#endif 


void Initalisierung(void)
	{
	//globale Interrupts Freigeben
	M8C_EnableGInt;
		
	// I2C Starten
	I2Cm_Start();
  	// A/D Wandler konfigurieren
	I2Cm_fSendStart(0x48,I2Cm_WRITE);       
    I2Cm_fWrite(0x00);
	I2Cm_SendStop();
	// Initialisieren des LCD-Displays
	LCD_1_Start();                 					
   	
	// Initialisieren des PWM-Moduls
	// PWM8_1_WritePeriod(kochPeriodendauer);        	                    
    PWM8_1_Start();
	
	//Initialisieren der Digitalen Ausgänge
	IN1_Start();	
	IN2_Start();
	}
	
void Dateneinlesen(void)
	{	
		// I2C Adresse: 1001 000 -> 0x48
		// Einleseforgang beginnen
		I2Cm_fSendRepeatStart(0x48,I2Cm_READ);
		
		// Daten Einlesen und ACK an slafe senden
		I2Cm_bRead(I2Cm_ACKslave);
		prozess.pdchBechleunigung = I2Cm_bRead(I2Cm_ACKslave);
		prozess.pdchEntfernung	= I2Cm_bRead(I2Cm_ACKslave);
		
		// lezte Daten ohne ACK einlesen
		prozess.pdchSollwert = I2Cm_bRead(I2Cm_NAKslave);
		
		//Stop Condition
       	I2Cm_SendStop();

	}
