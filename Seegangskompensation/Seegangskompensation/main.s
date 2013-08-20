	.module main.c
	.area text(rom, con, rel)
	.dbfile ./main.c
	.dbfile C:\Users\Lesky\Desktop\Dropbox\Studium\Bechlor\SOFTWA~1\neu\SEEGAN~1\SEEGAN~1\main.c
	.dbfunc e LCDansteuern _LCDansteuern fV
_LCDansteuern::
	.dbline -1
	.dbline 20
; //----------------------------------------------------------------------------
; // C main-Funktion
; // Programm: Seegangskompensation bei Krahnanlagen
; // Controler: CY8C27446-24PXI
; //----------------------------------------------------------------------------
; 
; #include <m8c.h>        
; #include "PSoCAPI.h"    
; 
; // structur der Prozessdaten
; struct 
;    {	
; 	char rgchLCD[15];	//TODO: Arraygröße anpassen   						
; 	char pdchBechleunigung, pdchEntfernung;			
; 	char pdchSollwert;								
; 	char pdchPulsweite;
;     } prozess;
; 
; void LCDansteuern(void)
; 	{
	.dbline 22
; 	// LCD Ansteuern 
; 	LCD_1_Position(0,5);            
	push X
	mov X,5
	mov A,0
	xcall _LCD_1_Position
	.dbline 23
;    	LCD_1_PrString(prozess.rgchLCD);
	mov A,>_prozess
	push A
	mov A,<_prozess
	mov X,A
	pop A
	xcall _LCD_1_PrString
	pop X
	.dbline -2
L2:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Dateneinlesen _Dateneinlesen fV
_Dateneinlesen::
	.dbline -1
	.dbline 27
; 	}
; 	
; void Dateneinlesen(void)
; 	{	
	.dbline 29
; 	// Wenn Sollwertdaten bereit sind
; 	if(ADCINC_fIsDataAvailable() != 0)
	push X
	xcall _ADCINC_fIsDataAvailable
	pop X
	cmp A,0
	jz L8
	.dbline 33
; 			
; 		// Einlesen des Sollwertes
;        	// data ready flag zurüvksetzen	
; 		prozess.pdchSollwert = ADCINC_cClearFlagGetData();		
	push X
	xcall _ADCINC_cClearFlagGetData
	pop X
	mov [_prozess+17],A
L7:
	.dbline 36
;               	   
;     // Auf Entfernung und Position Warten
; 	while(DUALADC8_fIsDataAvailable == 0);    		
L8:
	.dbline 36
	mov A,<PL_DUALADC8_fIsDataAvailable
	push X
	mov X,[__r1]
	push A
	romx
	mov [__r0],A
	pop A
	inc X
	adc A,0
	romx
	pop X
	cmp [__r0],0
	jz L7
	.dbline 38
;    		// Einlesen der Beschleunigung
; 		prozess.pdchBechleunigung = DUALADC8_cGetData1();      	
	push X
	xcall _DUALADC8_cGetData1
	pop X
	mov [_prozess+15],A
	.dbline 42
;     	
; 		// Einlesen der Entfernung
;         // data ready flag zurüvksetzen         
; 		prozess.pdchEntfernung = DUALADC8_cGetData2ClearFlag();	 	
	push X
	xcall _DUALADC8_cGetData2ClearFlag
	pop X
	mov [_prozess+16],A
	.dbline -2
L3:
	.dbline 0 ; func end
	ret
	.dbend
	.dbfunc e Ausgangansteuern _Ausgangansteuern fV
; hichAusgangswert -> X-4
_Ausgangansteuern::
	.dbline -1
	push X
	mov X,SP
	.dbline 46
; 	}
; 
; void Ausgangansteuern(char hichAusgangswert)
; 	{
	.dbline 48
; 		// linksdrehend 
; 		if (hichAusgangswert >= 0){				
	cmp [X-4],0
	jc L13
X0:
	.dbline 49
; 			DIGITALOUT_On;
	.dbline 49
	.dbline 50
; 			PWM8_1_WritePulseWidth(prozess.pdchPulsweite);
	push X
	mov A,[_prozess+18]
	xcall _PWM8_1_WritePulseWidth
	pop X
	.dbline 51
; 		}
	xjmp L14
L13:
	.dbline 54
; 		
; 		// rechtsdrehend
; 		else {				
	.dbline 55
; 			DIGITALOUT_Off;
	.dbline 56
; 			PWM8_1_WritePulseWidth(-prozess.pdchPulsweite);
	mov A,[_prozess+18]
	cpl A
	sub A,-1
	push X
	xcall _PWM8_1_WritePulseWidth
	pop X
	.dbline 57
; 		}
L14:
	.dbline -2
L12:
	pop X
	.dbline 0 ; func end
	ret
	.dbsym l hichAusgangswert -4 c
	.dbend
	.dbfunc e main _main fV
_main::
	.dbline 0 ; func end
	jmp .
	.dbend
	.area bss(ram, con, rel)
	.dbfile C:\Users\Lesky\Desktop\Dropbox\Studium\Bechlor\SOFTWA~1\neu\SEEGAN~1\SEEGAN~1\main.c
_prozess::
	.blkb 19
	.dbstruct 0 19 .1
	.dbfield 0 rgchLCD A[15:15]c
	.dbfield 15 pdchBechleunigung c
	.dbfield 16 pdchEntfernung c
	.dbfield 17 pdchSollwert c
	.dbfield 18 pdchPulsweite c
	.dbend
	.dbsym e prozess _prozess S[.1]
	.area lit(rom, con, rel, lit)
L22:
	.byte 'F,'e,'h,'l,'e,'r,33,33,0
	.area func_lit(rom, con, rel, proclab)
PL_DUALADC8_fIsDataAvailable:	.word _DUALADC8_fIsDataAvailable
