//----------------------------------------------------------------------------
// C main-Funktion
// Programm: Seegangskompensation bei Krahnanlagen
// Controler: CY8C27446-24PXI
//----------------------------------------------------------------------------

#include <m8c.h>        
#include "PSoCAPI.h"    

// structur der Prozessdaten
struct 
   {	
	char rgchLCD[15];	//TODO: Arraygröße anpassen   						
	char pdchBechleunigung, pdchEntfernung;			
	char pdchSollwert;								
	char pdchPulsweite;
    } prozess;

void LCDansteuern(void)
	{
	// LCD Ansteuern 
	LCD_1_Position(0,5);            
   	LCD_1_PrString(prozess.rgchLCD);
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
		if (hichAusgangswert >= 0){				
			DIGITALOUT_On;
			PWM8_1_WritePulseWidth(prozess.pdchPulsweite);
		}
		
		// rechtsdrehend
		else {				
			DIGITALOUT_Off;
			PWM8_1_WritePulseWidth(-prozess.pdchPulsweite);
		}
	}	
		
void main(void)
	{
	// Difinition der Konstanten
	char kochPeriodendauer = 50;					
	char kochKP;
	char kochKS;
	char kochNullG;
		
	// Variablendeklration
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
	
	// Selbsttest
	SELBSTTEST_Start
	SELBSTTEST_On
	Dateneinlesen();
	while (prozess.pdchBechleunigung <= kochNullG)
		{
		prozess.rgchLCD = "Fehler!!";
		LCDansteuern();
		}		
			
		
	// Endlosschleife
	while(1) {
	
		// Daten Einlesen
		
		                         
		// Parameter Berechnen
		
		hichBeschleunigungssumme = hichBeschleunigungssumme + prozess.pdchBechleunigung;
		
		hichAusgangswert = ( prozess.pdchSollwert - prozess.pdchBechleunigung ) * kochKP
							- 1 / kochKS * hichBeschleunigungssumme;
		//TODO: Korekturfaktor Einfügen 
		prozess.pdchPulsweite = hichAusgangswert; 
		
		Ausgangansteuern(hichAusgangswert);
		LCDansteuern();
		
	};
}
