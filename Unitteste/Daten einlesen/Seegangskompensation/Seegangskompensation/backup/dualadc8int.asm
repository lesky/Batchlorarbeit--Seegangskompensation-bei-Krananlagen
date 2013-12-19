;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME: DUALADC8INT.asm
;;   Version: 1.20, Updated on 2013/5/19 at 10:43:29
;;  Generated by PSoC Designer 5.4.2946
;;
;;  DESCRIPTION: DualADC8 Interrupt Service Routines
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************

include "m8c.inc"
include "memory.inc"
include "DUALADC8.inc"

; Prototypes for ADCINCVR Interrupt routines
export _DUALADC8_CNT1_ISR
export _DUALADC8_CNT2_ISR
export _DUALADC8_PWM16_ISR

; Define the ADCVARINC RAM variables
area InterruptRAM(RAM,REL,CON)
 export  DUALADC8_cCounter1U
 export  DUALADC8_cCounter2U
 export _DUALADC8_iResult1
 export  DUALADC8_iResult1
 export _DUALADC8_iResult2
 export  DUALADC8_iResult2
 export _DUALADC8_bfStatus
 export  DUALADC8_bfStatus

;-----------------------------------------------
; Variable Allocation
;-----------------------------------------------
 DUALADC8_cCounter1U:     BLK   1  ;The Upper byte of the Counter
 DUALADC8_cCounter2U:     BLK   1  ;The Upper byte of the Counter
_DUALADC8_iResult1:
 DUALADC8_iResult1:       BLK   2  ;A/D value
_DUALADC8_iResult2:
 DUALADC8_iResult2:       BLK   2  ;A/D value
_DUALADC8_bfStatus:
 DUALADC8_bfStatus:       BLK   1  ;Data Valid Flag


;-----------------------------------------------
;  Constant Definitions
;-----------------------------------------------
LowByte:   equ 1
HighByte:  equ 0

AREA UserModules (ROM, REL)

;@PSoC_UserCode_INIT@ (Do not change this line.)
;---------------------------------------------------
; Insert your custom declarations below this banner
;---------------------------------------------------

;------------------------
; Includes
;------------------------

	
;------------------------
;  Constant Definitions
;------------------------


;------------------------
; Variable Allocation
;------------------------


;---------------------------------------------------
; Insert your custom declarations above this banner
;---------------------------------------------------
;@PSoC_UserCode_END@ (Do not change this line.)

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _DUALADC8CNT1_ISR
;
;  DESCRIPTION:
;    Increment the upper (software) half on the counter whenever the
;    lower (hardware) half of the counter underflows.  This counter
;    should start out at the most negative value.
;
;-----------------------------------------------------------------------------
;
_DUALADC8_CNT1_ISR:
   inc [DUALADC8_cCounter1U]
   ;@PSoC_UserCode_BODY_1@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)
   reti

;-----------------------------------------------------------------------------
;  FUNCTION NAME: _DUALADC8CNT2_ISR
;
;  DESCRIPTION:
;     Increment the upper (software) half on the counter whenever the
;     lower (hardware) half of the counter underflows.  This counter
;     should start out at the most negative value.
;
;-----------------------------------------------------------------------------
;
_DUALADC8_CNT2_ISR:
   inc [DUALADC8_cCounter2U]
   ;@PSoC_UserCode_BODY_2@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)
   reti
;-----------------------------------------------------------------------------
;  FUNCTION NAME: _DUALADC8PWM16_ISR
;
;  DESCRIPTION:
;     This service routine may be called at the beginning of a compare
;     and at the terminal count of the PWM.
;
;     This routine allows the counter to collect data for 64 timer cycles
;     This routine then holds the integrater in reset for one cycle while
;     the A/D value is calculated.
;
;-----------------------------------------------------------------------------
;
_DUALADC8_PWM16_ISR:
   and   reg[DUALADC8_bCounter1_CR0], ~DUALADC8_fDBLK_ENABLE  ; Disable Counter
   and   reg[DUALADC8_bCounter2_CR0], ~DUALADC8_fDBLK_ENABLE  ; Disable Counter
IF DUALADC8_NoAZ
   or    reg[DUALADC8_bfADC1cr2], DUALADC8_fAutoZero       ; Put Integrator in AutoZero
   or    reg[DUALADC8_bfADC2cr2], DUALADC8_fAutoZero       ; Put Integrator in AutoZero
ENDIF
   or   reg[DUALADC8_bfADC1cr3],DUALADC8_fFSW0             ; Put Integrator in reset
   or   reg[DUALADC8_bfADC2cr3],DUALADC8_fFSW0             ; Put Integrator in reset

                                                           ; Enable interrupts for a short period of time just in case.
                                                           ; Make sure we didn't have a counter interrupt ready to fire
   M8C_EnableGInt
   nop                                                     ; Wait a couple cycles
   M8C_DisableGInt                                         ; Disable interrupt, read to complete processing
   push  A                                                 ; Save the Accumulator


   ; Get ADC1 result
   mov   A,reg[DUALADC8_bCount1]                           ; Read counter value  (Bogus read puts value in Period register)
   mov   A,reg[DUALADC8_bCompare1]                         ; Read counter value
   dec   A                                                 ; Decrement by one to make sure we didn't miss a count
   cpl   A                                                 ; Invert the value
   jnc   DUALADC8_ISR_CALCV1                               ; if carry, then inc MSB as well
   inc   [DUALADC8_cCounter1U]
DUALADC8_ISR_CALCV1:
   mov   [(DUALADC8_iResult1 + LowByte)],A                 ; Store LSB value
   mov   A, [DUALADC8_cCounter1U]                          ; Store MSB from temp counter
   mov   [(DUALADC8_iResult1 + HighByte)],A

   ; Get ADC2 result
   mov   A,reg[DUALADC8_bCount2]                           ; Read counter value  (Bogus read puts value in Period register)
   mov   A,reg[DUALADC8_bCompare2]                         ; Read counter value
   dec   A                                                 ; Decrement by one to make sure we didn't miss a count
   cpl   A                                                 ; Invert the value
   jnc   DUALADC8_ISR_CALCV2                               ; if carry, then inc MSB as well
   inc   [DUALADC8_cCounter2U]
DUALADC8_ISR_CALCV2:
   mov   [(DUALADC8_iResult2 + LowByte)],A                 ; Store LSB value
   mov   A, [DUALADC8_cCounter2U]                          ; Store MSB from temp counter
   mov   [(DUALADC8_iResult2 + HighByte)],A

                                                           ; The new value has been stored,
                                                           ; so get counters ready for next reading first.
   mov   reg[DUALADC8_bPeriod1], ffh                       ; Initialize counter1 to FF - Set to overflow after 256 counts
   mov   reg[DUALADC8_bPeriod2], ffh                       ; Initialize counter2 to FF - Set to overflow after 256 counts
   mov   reg[DUALADC8_bCounter1_CR0],DUALADC8_fDBLK_ENABLE ; Enable Counter1
   mov   reg[DUALADC8_bCounter2_CR0],DUALADC8_fDBLK_ENABLE ; Enable Counter2


IF (DUALADC8_DATA_FORMAT)                                  ; Only check for Negative numbers if SIGNED result
   mov   [DUALADC8_cCounter1U], 0xFE                       ; load MSB with Max negative *4
   mov   [DUALADC8_cCounter2U], 0xFE                       ; Load MSB with Max negative *4
ELSE
   mov   [DUALADC8_cCounter1U], 00h                        ; Place result back into MSB of counter
   mov   [DUALADC8_cCounter2U], 00h                        ; Place result back into MSB of counter
ENDIF

   ;***********************************************
   ; If the input is muxed with multiple inputs
   ; this is a good place to change inputs.
   ;***********************************************
   ;@PSoC_UserCode_BODY_3@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)

   and   reg[DUALADC8_bfADC1cr3],~DUALADC8_fFSW0           ; Take Integrator out of reset
   and   reg[DUALADC8_bfADC2cr3],~DUALADC8_fFSW0           ; Take Integrator out of reset
IF DUALADC8_NoAZ
   and   reg[DUALADC8_bfADC1cr2],~DUALADC8_fAutoZero       ; Take Integrator out of AutoZero
   and   reg[DUALADC8_bfADC2cr2],~DUALADC8_fAutoZero       ; Take Integrator out of AutoZero
ENDIF

   ;****************************************************************************
   ;M8C_EnableGInt            ; May want to re-enable interrupts at this point,
   ;                          ; if stack space isn't at a premium.
   ; NOTE:  this will make system more responsive but, will increase the
   ;        overall processing time of the A/D calctime.  If an interrupt is
   ;        taken, it must return within the specified CalcTime to guarantee
   ;        successful acquisition of the next byte.
   ;****************************************************************************

;------------------------------------ ADC1 --------------------------------------
IF (DUALADC8_DATA_FORMAT)                        ; Only check for Negative numbers if SIGNED result
                                                 ; Negative Overflow Check
   tst   [(DUALADC8_iResult1 + HighByte)],80h
   jnz   DUALADC8_NOT_POVFL1
                                                 ; Postive Overflow Check
   mov   A,0x02                                  ; Overflow if signed result  (4x of MSB)
   and   A, [(DUALADC8_iResult1 + HighByte)]
   jz    DUALADC8_NOT_POVFL1
                                                 ; Positive overflow, fix it - set to Max Positive + 1
   mov   A,0x01                                  ; Overflow if signed result  (4x of MSB - 1)
ELSE
                                                 ; Postive Overflow Check
   mov   A,0x04                                  ; Overflow if unsigned result (4x of MSB)
   and   A, [(DUALADC8_iResult1 + HighByte)]
   jz    DUALADC8_NOT_POVFL1
                                                 ; Positive overflow, fix it - set to Max Positive + 1
   mov   A,0x03                                  ; Overflow if unsigned result (4x of MSB - 1)
ENDIF

                                                 ; Force most positive * 4 into result
   mov   [(DUALADC8_iResult1 + HighByte)], A
   mov   [(DUALADC8_iResult1 + LowByte)], ffh

DUALADC8_NOT_POVFL1:
   asr   [(DUALADC8_iResult1 + HighByte)]        ; Shift MSB and LSB right twice to divide by four
   rrc   [(DUALADC8_iResult1 + LowByte)]         ; Remember digital clock 4 times analog clock
   asr   [(DUALADC8_iResult1 + HighByte)]
   rrc   [(DUALADC8_iResult1 + LowByte)]

;------------------------------------ ADC2 --------------------------------------
IF (DUALADC8_DATA_FORMAT)                        ; Only check for Negative numbers if SIGNED result
                                                 ; Negative Overflow Check
   tst   [(DUALADC8_iResult2 + HighByte)],80h
   jnz   DUALADC8_NOT_POVFL2
                                                 ; Postive Overflow Check
   mov   A,0x02                                  ; Overflow if signed result  (4x of MSB)
   and   A, [(DUALADC8_iResult2 + HighByte)]
   jz    DUALADC8_NOT_POVFL2
   mov   A,0x01                                  ; Overflow if signed result  (4x of MSB - 1)
ELSE
                                                 ; Postive Overflow Check
   mov   A,0x04                                  ; Overflow if unsigned result (4x of MSB)
   and   A, [(DUALADC8_iResult2 + HighByte)]
   jz    DUALADC8_NOT_POVFL2
   mov   A,0x03                                  ; Overflow if unsigned result (4x of MSB - 1)
ENDIF

                                                 ; Positive overflow, fix it - set to Max Positive + 1
                                                 ; Force most positive * 4 into result
   mov   [(DUALADC8_iResult2 + HighByte)], A
   mov   [(DUALADC8_iResult2 + LowByte)], ffh

DUALADC8_NOT_POVFL2:
   asr   [(DUALADC8_iResult2 + HighByte)]        ; Shift MSB and LSB right twice to divide by four
   rrc   [(DUALADC8_iResult2 + LowByte)]         ; Remember digital clock 4 times analog clock
   asr   [(DUALADC8_iResult2 + HighByte)]
   rrc   [(DUALADC8_iResult2 + LowByte)]

   pop   A                                       ; Restore A, not used any more
   or    [DUALADC8_bfStatus],DUALADC8_fDATA_READY  ; Set Data ready bit

   ;**********************************************
   ; Data is ready at this point.
   ; If processing Data at Interrupt level - add
   ;     User Code to handle the data
   ;**********************************************
   ;@PSoC_UserCode_BODY_4@ (Do not change this line.)
   ;---------------------------------------------------
   ; Insert your custom code below this banner
   ;---------------------------------------------------

   ;---------------------------------------------------
   ; Insert your custom code above this banner
   ;---------------------------------------------------
   ;@PSoC_UserCode_END@ (Do not change this line.)


DUALADC8_END_PWM16_ISR:
   reti

DUALADC8_APIINT_END:

; end of file DUALADC8INT.asm
