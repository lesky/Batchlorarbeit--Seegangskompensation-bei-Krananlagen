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
* Beschleunigung-> 0.1									*
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
void Ausgangansteuern(char);

// Präprozessor: kompiliere Funktion nur wenn Test
#ifdef TEST
	void test(char);
#endif 

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
	char kochPeriodendauer = 50;					
	char kochKP;
	char kochKS;
		
	// Variablen
	char hichAusgangswert;							
	char hichBeschleunigungssumme;  
		
	/********************************************************
	* 			Initialisierung des Controllers				*
	********************************************************/
	
	//globale Interrupts Freigeben
	M8C_EnableGInt;                     				
  	
	// Initialisieren des LCD-Displays
	LCD_1_Start();                 					
   	
	// Initialisieren des PWM-Moduls
	PWM8_1_WritePeriod(kochPeriodendauer);        	                    
    PWM8_1_Start();
	
	PGA_1_Start(PGA_1_LOWPOWER);
	PGA_2_Start(PGA_2_LOWPOWER);
	PGA_3_Start(PGA_3_LOWPOWER);	
	
	// Initialisieren des Dualen AD-Wandlers
	// für Entfernung und Beschleunigung
	DUALADC8_Start(DUALADC8_HIGHPOWER); 			    			
   	DUALADC8_GetSamples(); 
	
	// Initialisieren des AD-Wandlers
	// für den Sollwert
	ADCINC_Start(ADCINC_HIGHPOWER);      			
	ADCINC_GetSamples(0);                 			
	
	//Initialisieren der Digitalen Ausgänge
	IN1_Start();	
	IN2_Start();
	SELBSTTEST_Start();
	
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
			
			hichAusgangswert = ( prozess.pdchSollwert - prozess.pdchBechleunigung ) * kochKP
								- 1 / kochKS * hichBeschleunigungssumme;
			
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
		
		// Selbsttest des Beshleunigungssensoers anschalten
		SELBSTTEST_Switch(1);
			
		// whileschleife zu testzwecken
		// Konstante zur verweildauer in der schleife
		while (1)
			{
				Dateneinlesen();
				Ausgangansteuern(50);
				
				// Testfunktionen Aufrufen:
				test(prozess.pdchBechleunigung);
				// test(prozess.pdchEntfernung);
				// test(prozess.pdchSollwert);
				
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
	// Wenn Sollwertdaten bereit sind
	if(ADCINC_fIsDataAvailable() != 0)
			
		// Einlesen des Sollwertes
       	// data ready flag zurüvksetzen	
		prozess.pdchSollwert = ADCINC_cClearFlagGetData();		
              	   
    	// Auf Entfernung und Position Warten
		while(DUALADC8_fIsDataAvailable == 0);    		
   		// Einlesen der Beschleunigung
		prozess.pdchBechleunigung = DUALADC8_cGetData1();      	
    	
		// Einlesen der Entfernung
        // data ready flag zurüvksetzen         
		prozess.pdchEntfernung = DUALADC8_cGetData2ClearFlag();	 	
	}

void Ausgangansteuern(char hichAusgangswert)
	{
		int iin;
		// Korekturfaktor zur 
		// bestimmung der Pulsweite:
		char kochKorekturfaktor = 1;
		
		// Bremsen durch Leerlauf
		if (hichAusgangswert == 0){				
			// Ausgänge ansteuern
			IN1_Switch(0);
			IN2_Switch(0);
			PWM8_1_WritePulseWidth(0);
		}
		
		// Seil Abwickeln 
		
		if (hichAusgangswert > 0){				
			
			//wenn sich die Drehrichtung ändert:
			//vorher 100 mal Bremsen
			
			if (IN2_GetState() == 1){
				for (iin = 0; iin < 100; iin ++)
					{
						Ausgangansteuern(0);
					}
				}
			
			// Ausgänge ansteuern
			IN1_Switch(1);
			IN2_Switch(0);
			PWM8_1_WritePulseWidth(hichAusgangswert * kochKorekturfaktor);
		}
		
		// Seil Aufwickeln
		
		else if (hichAusgangswert < 0){				
			
			//wenn sich die Drehrichtung ändert:
			//vorher 100 mal Bremsen
			for (iin = 0; iin < 100; iin ++)
					{
						Ausgangansteuern(0);
					}
				}
			
			// Ausgänge ansteuern
			IN1_Switch(0);
			IN2_Switch(1);
			PWM8_1_WritePulseWidth(- hichAusgangswert * kochKorekturfaktor);
		}
		
	
	
// Präprozessor: kompiliere Funktion nur wenn Test
#ifdef TEST
	// Ausgabe der Testdaten auf LCD-Display
	void test(char hichdata)
		{
		// gibt 99999 mal LCD Aus
		int iin;
		for (iin = 0; iin <= 500; iin ++)
			{
			LCDansteuern(hichdata);	
			}
		}
#endif 