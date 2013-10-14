/********************************************************
* C main-Funktion										*
* Programm: Seegangskompensation bei Krahnanlagen		*
* Controler: CY8C27446-24PXI							*
* 														*
* I/O-Konfiguration:									*
* LCD 			-> Port 2								*
* Selbsttest 	-> 1.1			 						*
* IN1		 	-> 1.2									*
* IN2			-> 1.3									*
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

// Präprozessor:Für testzwecke 
// #defein Test nicht auskomentieren:
#define TEST

// Funktionsprototypen:
void LCDansteuern(char);
void Dateneinlesen(void);
void Ausgangansteuern(char, char);
void Initalisierung(void);
// globale Structur zur Übergabe der Prozessdaten:
struct 
   {	  						
	char pdchBechleunigung, pdchEntfernung;			
	char pdchSollwert;								
	} prozess;


void main(void)
	{
	
	/********************************************************
	* 			Deffinitionen und Deklarationen				*
	********************************************************/	
		
	// Konstanten					
	char kochKR;
	char kochKRZ;
		
	// Variablen
	char hichAusgangswert;							
	char hichBeschleunigungssumme;  
		
	// Initialisierung des Controllers
	Initalisierung();
	
	// Präprozessor: kompiliere whileschleife wenn kein test
	#ifndef TEST
		
		/********************************************************
		* 			Endlosschleife für Dauerbetrieb				*
		********************************************************/

		while(1) 
			{
			// Daten Einlesen
			
			Dateneinlesen();		                         
			// Parameter Berechnen
			
			hichBeschleunigungssumme = hichBeschleunigungssumme + prozess.pdchBechleunigung;
			
			hichAusgangswert = ( prozess.pdchSollwert - prozess.pdchBechleunigung ) * kochKR
								- kochKRZ * hichBeschleunigungssumme;
			
			// Daten Ausgeben:
				
			Ausgangansteuern(hichAusgangswert);
			
			LCDansteuern(prozess.pdchEntfernung);

				
			};
			
	/********************************************************
	* Achtung die Folgenden Zeilen dienen nur zu Testzwecken*
	* und sind für das Fertige Programm nicht relevant.		*
	* Sie werden anstelle der Regulären while Schleife 		*
	* Kompiliert, wenn die Bedingung #ifndef TEST nicht 	*
	* erfüllt ist.											*
	********************************************************/

	#else
						
		// whileschleife zu testzwecken
		// Konstante zur verweildauer in der schleife
		while (1)
			{
				Dateneinlesen();
				//Ausgangansteuern(250, 2);
				// LCDansteuern(1);
				//if (PRT0DR & 0x01)
				//{LCDansteuern(1);}
				//else {LCDansteuern(PRT0DR & 0x01);}
					//LCDansteuern(PRT0DR & 0x01);
				
				// Erkennen von eingangssignalen über A/D-Wandler
				if (prozess.pdchEntfernung <= 110)
				{
					LCDansteuern(1);
					Ausgangansteuern(250,1);}
				else if (prozess.pdchBechleunigung <= 110)
				{	LCDansteuern(2);
					Ausgangansteuern(250,2);}
				else {
				Ausgangansteuern(0,0);	
				}
			};
			
	// Präprozessor: Ende der Verzweifung
	#endif 
}
	
/********************************************************
* 			Funktionsdeklarationen						*
********************************************************/
	
void LCDansteuern(char hichdata)
	{		
			char rgch[5];
			// Text auf LCD ausgeben
			LCD_1_Position(0,5);    
			LCD_1_PrCString("Wert:");
			
			// Zahl Auf LCD ausgeben
			itoa(rgch,hichdata,10);
			LCD_1_PrString(rgch);		

	}
	
void Dateneinlesen(void)
	{	
		// To Do: Parameter Anpassen 
		// Variablen deklarieren
		I2Cm_fSendStart(0x68,I2Cm_WRITE);        // Do a write
       	I2Cm_fWrite(0x00);                       // Set sub address 
                                                // to zero
       	I2Cm_fSendRepeatStart(0x68,I2Cm_READ);   // Do a read

       	for(i = 0; i < 6; i++) {
         	rxBuf[i] = I2Cm_bRead(I2Cm_ACKslave); // Read first 6 bytes,
                                                // and ACK the slave
       }
	
	}

	void Ausgangansteuern(char hichAusgangswert, char hichRichtung)
	{
		// Drehrichtung Auswählen
		switch(hichRichtung) {
			
			// Linkslauf
			case 1: 
				// IN1 und IN2 Ansteuern
				IN1_Switch(0);
				IN2_Switch(1);
				break;
			
			// Rechtslauf
			case 2:
				
				// IN1 und IN2 Ansteuern
				IN1_Switch(1);
				IN2_Switch(0);
				break;
				
			// Ungültiger Wert
			default:
				// Pulsweite auf 0 setzen
				PWM8_1_WritePulseWidth(0);
				// Funktion verlassen
				return ;
				
			}
		
		// Pulsweite auf hichAusgangswert setzen 		
		PWM8_1_WritePulseWidth(hichAusgangswert);
	}

void Initalisierung(void)
	{
	//globale Interrupts Freigeben
	M8C_EnableGInt;
		
	// I2C Starten
	I2Cm_Start();
  	
	// Initialisieren des LCD-Displays
	LCD_1_Start();                 					
   	
	// Initialisieren des PWM-Moduls
	// PWM8_1_WritePeriod(kochPeriodendauer);        	                    
    PWM8_1_Start();
         			
	
	//Initialisieren der Digitalen Ausgänge
	IN1_Start();	
	IN2_Start();
	}