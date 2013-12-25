;;*****************************************************************************
;;*****************************************************************************
;;  FILENAME:   ADCINCVR_1.inc
;;  Version: 4.00, Updated on 2013/5/19 at 10:39:58
;;  Generated by PSoC Designer 5.4.2946
;;
;;  DESCRIPTION:  Assembler declarations for the ADCINCVR user module interface.
;;
;;-----------------------------------------------------------------------------
;;  Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;;*****************************************************************************
;;*****************************************************************************


;--------------------------------------------------
; Register Address Constants for ADCINCVR_1
;--------------------------------------------------

; Counter Constants
ADCINCVR_1_bfCounter_Mask:             equ   08h
ADCINCVR_1_bfCounter_INT_REG:          equ   0e1h

; PWM Constants
ADCINCVR_1_bfPWM16_Mask:               equ   20h
ADCINCVR_1_bfPWM16_INT_REG:            equ   0e1h

; Power Settings
ADCINCVR_1_bfPOWERMASK:                equ   03h
ADCINCVR_1_OFF:                        equ   00h
ADCINCVR_1_LOWPOWER:                   equ   01h
ADCINCVR_1_MEDPOWER:                   equ   02h
ADCINCVR_1_HIGHPOWER:                  equ   03h

; Parameter Settings
ADCINCVR_1_bNUMBITS:                   equ   ah
ADCINCVR_1_bCALCTIME:                  equ   1h
ADCINCVR_1_bMAXRES:                    equ   0Dh      ; Max resolution 13 bits
ADCINCVR_1_bMINRES:                    equ   07h      ; Min resolution 7 bits
ADCINCVR_1_fCOMPARE_TRUE:              equ   08h      ; Bit to enable compare True interrupts

; Functionality constants
ADCINCVR_1_fFSW0:                      equ   10h      ; Switch Cap FSW0 switch enable
ADCINCVR_1_NoAZ:                       equ   01h      ; Set if AutoZero is not enabled
ADCINCVR_1_fAutoZero:                  equ   20h      ; Switch Cap AutoZero switch enable
ADCINCVR_1_fDBLK_ENABLE:               equ   01h      ; Digital block enable bit
ADCINCVR_1_fPULSE_WIDE:                equ   04h      ; Enable wide terminal count pulse.

; fStatus definitions
ADCINCVR_1_fDATA_READY:                equ   10h      ; This bit is set when data is available
ADCINCVR_1_bRES_MASK:                  equ   0Fh      ; This bit while in integrate cycle

; Data Format
ADCINCVR_1_DATA_FORMAT:                equ   1

; Flag in CR2 register mask
ADCINCVR_1_fRES_SET:                   equ   01h

;--------------------------------------------------
; Registers used by ADCINCVR_1
;--------------------------------------------------
; ADCINCVR PSoC Block register Definitions
; Integrator Block Register Definitions
ADCINCVR_1_bfAtoDcr0:   equ 84h
ADCINCVR_1_bfAtoDcr1:   equ 85h
ADCINCVR_1_bfAtoDcr2:   equ 86h
ADCINCVR_1_bfAtoDcr3:   equ 87h

; Counter Block Register Definitions
ADCINCVR_1_fCounterFN:  equ 2ch
ADCINCVR_1_fCounterSL:  equ 2dh
ADCINCVR_1_fCounterOS:  equ 2eh
ADCINCVR_1_bCount:  equ 2ch
ADCINCVR_1_bPeriod: equ 2dh
ADCINCVR_1_bCompare:    equ 2eh
ADCINCVR_1_bCounter_CR0:    equ 2fh

; PWM16 Block Register Definitions
ADCINCVR_1_bfPWM_LSB_FN:    equ 30h
ADCINCVR_1_bfPWM_MSB_FN:    equ 34h
ADCINCVR_1_fPWM_LSB_CR0:    equ 33h
ADCINCVR_1_fPWM_MSB_CR0:    equ 37h
ADCINCVR_1_bPWM_Count_MSB:  equ 34h
ADCINCVR_1_bPWM_Count_LSB:  equ 30h
ADCINCVR_1_bPWM_Period_MSB: equ 35h
ADCINCVR_1_bPWM_Period_LSB: equ 31h
ADCINCVR_1_bPWM_IntTime_MSB:    equ 36h
ADCINCVR_1_bPWM_IntTime_LSB:    equ 32h
ADCINCVR_1_bfPWM_LSB_FN:    equ 30h
ADCINCVR_1_bfPWM_MSB_FN:    equ 34h


; End of File ADCINCVR_1.inc

