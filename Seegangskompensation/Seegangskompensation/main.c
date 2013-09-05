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

#include <stdio.h>
#include <m8c.h>        
#include "PSoCAPI.h"    

// Präprozessor:Für testzwecke 
// #defein Test nicht auskomentieren:
#define TEST

// Funktionsprototypen:
void LCDansteuern(char, char );
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
	char pdchPulsweite;
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
	
	//Initialisieren der Digitalen Ausgänge
	IN1_Start;	
	IN2_Start;
	SELBSTTEST_Start;
	
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
			//TODO: Korekturfaktor Einfügen 
			prozess.pdchPulsweite = hichAusgangswert; 
			
			Ausgangansteuern(hichAusgangswert);
			LCDansteuern(prozess.pdchEntfernung, 0);
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
		SELBSTTEST_On;
			
		// whileschleife zu testzwecken
		// Konstante zur verweildauer in der schleife
		while (1)
			{
				// Daten Einlesen
				void Dateneinlesen(void);
				// Daten Nacheinander auf LCD Ausgeeben
				prozess.pdchPulsweite = 50;
				//prozess.pdchBechleunigung = 1;
				//prozess.pdchEntfernung =2;
				//prozess.pdchSollwert =3;
				Ausgangansteuern(100);
				test(prozess.pdchBechleunigung);
				test(prozess.pdchEntfernung);
				test(prozess.pdchSollwert);
				Ausgangansteuern(-100);
				test(prozess.pdchBechleunigung);
				test(prozess.pdchEntfernung);
				test(prozess.pdchSollwert);
				
				
			};
			
	// Präprozessor: Ende der Verzweifung
	#endif 
}
	
/********************************************************
* 			Funktionsdeklarationen						*
********************************************************/
	
void LCDansteuern(char hichdata, char hichfehler)
	{
	char rgchErstezeile[16];
	char rgchZweitezeile[16];
	
	// Text in Variablen Schreiben
	csprintf(rgchErstezeile,"Abstand: %c",hichdata);
	
	// ist ein Fehler aufgetreten
	// dann ist hichFehler != 0
	if (hichfehler != 0)
		{
		csprintf(rgchZweitezeile,"Achtung Fehler");
		};
		
	// LCD Ansteuern 
	LCD_1_Position(1,0);
	LCD_1_PrString(rgchErstezeile);
	LCD_1_Position(2,0);
	LCD_1_PrString(rgchZweitezeile);	
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
		// linksdrehend 
		if (hichAusgangswert > 0){				
			IN1_On;
			IN2_Off;
			PWM8_1_WritePulseWidth(prozess.pdchPulsweite);
		}
		// rechtsdrehend
		else if (hichAusgangswert < 0){				
			IN1_On;
			IN2_Off;
			PWM8_1_WritePulseWidth(-prozess.pdchPulsweite);
		}
		// Bremsen durch Kurzschluss
		else{				
			IN1_On;
			IN2_On;
			PWM8_1_WritePulseWidth(0);
		}
	}
	
// Präprozessor: kompiliere Funktion nur wenn Test
#ifdef TEST
	// Ausgabe der Testdaten auf LCD-Display
	void test(char hichdata)
		{
		// gibt 99999 mal LCD Aus
		int iin;
		for (iin = 0; iin <= 999; iin ++)
			{
			LCDansteuern(hichdata, 0);	
			}
		}
#endif 