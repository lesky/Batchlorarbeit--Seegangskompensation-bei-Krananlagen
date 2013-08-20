;  Generated by PSoC Designer 5.4.2946
;
; =============================================================================
; FILENAME: PSoCConfigTBL.asm
;  
; Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
;  
; NOTES:
; Do not modify this file. It is generated by PSoC Designer each time the
; generate application function is run. The values of the parameters in this
; file can be modified by changing the values of the global parameters in the
; device editor.
;  
; =============================================================================
 
include "m8c.inc"
;  Personalization tables 
export LoadConfigTBL_seegangskompensation_Bank1
export LoadConfigTBL_seegangskompensation_Bank0
export LoadConfigTBL_seegangskompensation_Ordered
AREA lit(rom, rel)
LoadConfigTBL_seegangskompensation_Bank0:
;  Instance name ADCINC, User Module ADCINC
;       Instance name ADCINC, Block Name ADC(ASC12)
	db		88h, 90h		;ADCINC_AtoDcr0(ASC12CR0)
	db		89h, 00h		;ADCINC_AtoDcr1(ASC12CR1)
	db		8ah, 60h		;ADCINC_AtoDcr2(ASC12CR2)
	db		8bh, f0h		;ADCINC_AtoDcr3(ASC12CR3)
;       Instance name ADCINC, Block Name PWM(DCB12)
	db		3bh, 00h		;ADCINC_PWMcr0(DCB12CR0)
	db		39h, 00h		;ADCINC_PWMdr1(DCB12DR1)
	db		3ah, 01h		;ADCINC_PWMdr2(DCB12DR2)
;  Instance name DIGITALOUT, User Module LED
;  Instance name DUALADC8, User Module DUALADC8
;       Instance name DUALADC8, Block Name ADC1(ASC10)
	db		80h, 90h		;DUALADC8_bfADC1cr0(ASC10CR0)
	db		81h, 00h		;DUALADC8_bfADC1cr1(ASC10CR1)
	db		82h, 60h		;DUALADC8_bfADC1cr2(ASC10CR2)
	db		83h, f0h		;DUALADC8_bfADC1cr3(ASC10CR3)
;       Instance name DUALADC8, Block Name ADC2(ASD11)
	db		84h, 90h		;DUALADC8_bfADC2cr0(ASD11CR0)
	db		85h, 00h		;DUALADC8_bfADC2cr1(ASD11CR1)
	db		86h, 60h		;DUALADC8_bfADC2cr2(ASD11CR2)
	db		87h, f0h		;DUALADC8_bfADC2cr3(ASD11CR3)
;       Instance name DUALADC8, Block Name CNT1(DCB02)
	db		2bh, 00h		;DUALADC8_bCounter1_CR0(DCB02CR0)
	db		29h, 00h		;DUALADC8_bPeriod1(DCB02DR1)
	db		2ah, 00h		;DUALADC8_bCompare1(DCB02DR2)
;       Instance name DUALADC8, Block Name CNT2(DBB11)
	db		37h, 00h		;DUALADC8_bCounter2_CR0(DBB11CR0)
	db		35h, 00h		;DUALADC8_bPeriod2(DBB11DR1)
	db		36h, 00h		;DUALADC8_bCompare2(DBB11DR2)
;       Instance name DUALADC8, Block Name PWM16_LSB(DCB03)
	db		2fh, 00h		;DUALADC8_fPWM_LSB_CR0(DCB03CR0)
	db		2dh, 00h		;DUALADC8_bPWM_Period_LSB(DCB03DR1)
	db		2eh, 00h		;DUALADC8_bPWM_IntTime_LSB(DCB03DR2)
;       Instance name DUALADC8, Block Name PWM16_MSB(DBB10)
	db		33h, 00h		;DUALADC8_fPWM_MSB_CR0(DBB10CR0)
	db		31h, 00h		;DUALADC8_bPWM_Period_MSB(DBB10DR1)
	db		32h, 00h		;DUALADC8_bPWM_IntTime_MSB(DBB10DR2)
;  Instance name LCD_1, User Module LCD
;  Instance name PGA_1, User Module PGA
;       Instance name PGA_1, Block Name GAIN(ACB00)
	db		71h, 0ch		;PGA_1_GAIN_CR0(ACB00CR0)
	db		72h, 21h		;PGA_1_GAIN_CR1(ACB00CR1)
	db		73h, 20h		;PGA_1_GAIN_CR2(ACB00CR2)
	db		70h, 00h		;PGA_1_GAIN_CR3(ACB00CR3)
;  Instance name PGA_2, User Module PGA
;       Instance name PGA_2, Block Name GAIN(ACB01)
	db		75h, 0ch		;PGA_2_GAIN_CR0(ACB01CR0)
	db		76h, 21h		;PGA_2_GAIN_CR1(ACB01CR1)
	db		77h, 20h		;PGA_2_GAIN_CR2(ACB01CR2)
	db		74h, 00h		;PGA_2_GAIN_CR3(ACB01CR3)
;  Instance name PGA_3, User Module PGA
;       Instance name PGA_3, Block Name GAIN(ACB02)
	db		79h, 0ch		;PGA_3_GAIN_CR0(ACB02CR0)
	db		7ah, 21h		;PGA_3_GAIN_CR1(ACB02CR1)
	db		7bh, 20h		;PGA_3_GAIN_CR2(ACB02CR2)
	db		78h, 00h		;PGA_3_GAIN_CR3(ACB02CR3)
;  Instance name PWM8_1, User Module PWM8
;       Instance name PWM8_1, Block Name PWM8(DBB00)
	db		23h, 00h		;PWM8_1_CONTROL_REG(DBB00CR0)
	db		21h, 00h		;PWM8_1_PERIOD_REG(DBB00DR1)
	db		22h, 00h		;PWM8_1_COMPARE_REG(DBB00DR2)
;  Instance name SELFTEST, User Module LED
;  Global Register values Bank 0
	db		60h, 28h		; AnalogColumnInputSelect register (AMX_IN)
	db		66h, 00h		; AnalogComparatorControl1 register (CMP_CR1)
	db		63h, 05h		; AnalogReferenceControl register (ARF_CR)
	db		65h, 00h		; AnalogSyncControl register (ASY_CR)
	db		e6h, 3dh		; DecimatorControl_0 register (DEC_CR0)
	db		e7h, 10h		; DecimatorControl_1 register (DEC_CR1)
	db		d6h, 00h		; I2CConfig register (I2CCFG)
	db		b0h, 00h		; Row_0_InputMux register (RDI0RI)
	db		b1h, 00h		; Row_0_InputSync register (RDI0SYN)
	db		b2h, 00h		; Row_0_LogicInputAMux register (RDI0IS)
	db		b3h, 33h		; Row_0_LogicSelect_0 register (RDI0LT0)
	db		b4h, 33h		; Row_0_LogicSelect_1 register (RDI0LT1)
	db		b5h, 08h		; Row_0_OutputDrive_0 register (RDI0SRO0)
	db		b6h, 00h		; Row_0_OutputDrive_1 register (RDI0SRO1)
	db		b8h, 55h		; Row_1_InputMux register (RDI1RI)
	db		b9h, 00h		; Row_1_InputSync register (RDI1SYN)
	db		bah, 10h		; Row_1_LogicInputAMux register (RDI1IS)
	db		bbh, 33h		; Row_1_LogicSelect_0 register (RDI1LT0)
	db		bch, 33h		; Row_1_LogicSelect_1 register (RDI1LT1)
	db		bdh, 00h		; Row_1_OutputDrive_0 register (RDI1SRO0)
	db		beh, 00h		; Row_1_OutputDrive_1 register (RDI1SRO1)
	db		ffh
LoadConfigTBL_seegangskompensation_Bank1:
;  Instance name ADCINC, User Module ADCINC
;       Instance name ADCINC, Block Name ADC(ASC12)
;       Instance name ADCINC, Block Name PWM(DCB12)
	db		38h, 31h		;ADCINC_PWMfn(DCB12FN)
	db		39h, 10h		;ADCINC_PWMsl(DCB12IN)
	db		3ah, 40h		;ADCINC_PWMos(DCB12OU)
;  Instance name DIGITALOUT, User Module LED
;  Instance name DUALADC8, User Module DUALADC8
;       Instance name DUALADC8, Block Name ADC1(ASC10)
;       Instance name DUALADC8, Block Name ADC2(ASD11)
;       Instance name DUALADC8, Block Name CNT1(DCB02)
	db		28h, 21h		;DUALADC8_fCounter1FN(DCB02FN)
	db		29h, 40h		;DUALADC8_fCounter1SL(DCB02IN)
	db		2ah, 40h		;DUALADC8_fCounter1OS(DCB02OU)
;       Instance name DUALADC8, Block Name CNT2(DBB11)
	db		34h, 21h		;DUALADC8_fCounter2FN(DBB11FN)
	db		35h, 50h		;DUALADC8_fCounter2SL(DBB11IN)
	db		36h, 40h		;DUALADC8_fCounter2OS(DBB11OU)
;       Instance name DUALADC8, Block Name PWM16_LSB(DCB03)
	db		2ch, 01h		;DUALADC8_bfPWM_LSB_FN(DCB03FN)
	db		2dh, 10h		;DUALADC8_(DCB03IN)
	db		2eh, 40h		;DUALADC8_(DCB03OU)
;       Instance name DUALADC8, Block Name PWM16_MSB(DBB10)
	db		30h, 21h		;DUALADC8_bfPWM_MSB_FN(DBB10FN)
	db		31h, 30h		;DUALADC8_(DBB10IN)
	db		32h, 40h		;DUALADC8_(DBB10OU)
;  Instance name LCD_1, User Module LCD
;  Instance name PGA_1, User Module PGA
;       Instance name PGA_1, Block Name GAIN(ACB00)
;  Instance name PGA_2, User Module PGA
;       Instance name PGA_2, Block Name GAIN(ACB01)
;  Instance name PGA_3, User Module PGA
;       Instance name PGA_3, Block Name GAIN(ACB02)
;  Instance name PWM8_1, User Module PWM8
;       Instance name PWM8_1, Block Name PWM8(DBB00)
	db		20h, 21h		;PWM8_1_FUNC_REG(DBB00FN)
	db		21h, 00h		;PWM8_1_INPUT_REG(DBB00IN)
	db		22h, 04h		;PWM8_1_OUTPUT_REG(DBB00OU)
;  Instance name SELFTEST, User Module LED
;  Global Register values Bank 1
	db		61h, 00h		; AnalogClockSelect1 register (CLK_CR1)
	db		69h, 00h		; AnalogClockSelect2 register (CLK_CR2)
	db		60h, 00h		; AnalogColumnClockSelect register (CLK_CR0)
	db		62h, 00h		; AnalogIOControl_0 register (ABF_CR0)
	db		67h, 33h		; AnalogLUTControl0 register (ALT_CR0)
	db		68h, 33h		; AnalogLUTControl1 register (ALT_CR1)
	db		63h, 00h		; AnalogModulatorControl_0 register (AMD_CR0)
	db		66h, 00h		; AnalogModulatorControl_1 register (AMD_CR1)
	db		d1h, 00h		; GlobalDigitalInterconnect_Drive_Even_Input register (GDI_E_IN)
	db		d3h, 00h		; GlobalDigitalInterconnect_Drive_Even_Output register (GDI_E_OU)
	db		d0h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Input register (GDI_O_IN)
	db		d2h, 00h		; GlobalDigitalInterconnect_Drive_Odd_Output register (GDI_O_OU)
	db		e1h, ffh		; OscillatorControl_1 register (OSC_CR1)
	db		e2h, 00h		; OscillatorControl_2 register (OSC_CR2)
	db		dfh, ffh		; OscillatorControl_3 register (OSC_CR3)
	db		deh, 02h		; OscillatorControl_4 register (OSC_CR4)
	db		ddh, 00h		; OscillatorGlobalBusEnableControl register (OSC_GO_EN)
	db		ffh
AREA psoc_config(rom, rel)
LoadConfigTBL_seegangskompensation_Ordered:
;  Ordered Global Register values
	M8C_SetBank0
	mov	reg[00h], 00h		; Port_0_Data register (PRT0DR)
	M8C_SetBank1
	mov	reg[00h], 00h		; Port_0_DriveMode_0 register (PRT0DM0)
	mov	reg[01h], feh		; Port_0_DriveMode_1 register (PRT0DM1)
	M8C_SetBank0
	mov	reg[03h], ffh		; Port_0_DriveMode_2 register (PRT0DM2)
	mov	reg[02h], 00h		; Port_0_GlobalSelect register (PRT0GS)
	M8C_SetBank1
	mov	reg[02h], 00h		; Port_0_IntCtrl_0 register (PRT0IC0)
	mov	reg[03h], 00h		; Port_0_IntCtrl_1 register (PRT0IC1)
	M8C_SetBank0
	mov	reg[01h], 00h		; Port_0_IntEn register (PRT0IE)
	mov	reg[04h], 00h		; Port_1_Data register (PRT1DR)
	M8C_SetBank1
	mov	reg[04h], 38h		; Port_1_DriveMode_0 register (PRT1DM0)
	mov	reg[05h], c7h		; Port_1_DriveMode_1 register (PRT1DM1)
	M8C_SetBank0
	mov	reg[07h], c7h		; Port_1_DriveMode_2 register (PRT1DM2)
	mov	reg[06h], 10h		; Port_1_GlobalSelect register (PRT1GS)
	M8C_SetBank1
	mov	reg[06h], 00h		; Port_1_IntCtrl_0 register (PRT1IC0)
	mov	reg[07h], 00h		; Port_1_IntCtrl_1 register (PRT1IC1)
	M8C_SetBank0
	mov	reg[05h], 00h		; Port_1_IntEn register (PRT1IE)
	mov	reg[08h], 00h		; Port_2_Data register (PRT2DR)
	M8C_SetBank1
	mov	reg[08h], 7fh		; Port_2_DriveMode_0 register (PRT2DM0)
	mov	reg[09h], 80h		; Port_2_DriveMode_1 register (PRT2DM1)
	M8C_SetBank0
	mov	reg[0bh], 80h		; Port_2_DriveMode_2 register (PRT2DM2)
	mov	reg[0ah], 00h		; Port_2_GlobalSelect register (PRT2GS)
	M8C_SetBank1
	mov	reg[0ah], 00h		; Port_2_IntCtrl_0 register (PRT2IC0)
	mov	reg[0bh], 00h		; Port_2_IntCtrl_1 register (PRT2IC1)
	M8C_SetBank0
	mov	reg[09h], 00h		; Port_2_IntEn register (PRT2IE)
	mov	reg[0ch], 00h		; Port_3_Data register (PRT3DR)
	M8C_SetBank1
	mov	reg[0ch], 00h		; Port_3_DriveMode_0 register (PRT3DM0)
	mov	reg[0dh], 00h		; Port_3_DriveMode_1 register (PRT3DM1)
	M8C_SetBank0
	mov	reg[0fh], 00h		; Port_3_DriveMode_2 register (PRT3DM2)
	mov	reg[0eh], 00h		; Port_3_GlobalSelect register (PRT3GS)
	M8C_SetBank1
	mov	reg[0eh], 00h		; Port_3_IntCtrl_0 register (PRT3IC0)
	mov	reg[0fh], 00h		; Port_3_IntCtrl_1 register (PRT3IC1)
	M8C_SetBank0
	mov	reg[0dh], 00h		; Port_3_IntEn register (PRT3IE)
	mov	reg[10h], 00h		; Port_4_Data register (PRT4DR)
	M8C_SetBank1
	mov	reg[10h], 00h		; Port_4_DriveMode_0 register (PRT4DM0)
	mov	reg[11h], 00h		; Port_4_DriveMode_1 register (PRT4DM1)
	M8C_SetBank0
	mov	reg[13h], 00h		; Port_4_DriveMode_2 register (PRT4DM2)
	mov	reg[12h], 00h		; Port_4_GlobalSelect register (PRT4GS)
	M8C_SetBank1
	mov	reg[12h], 00h		; Port_4_IntCtrl_0 register (PRT4IC0)
	mov	reg[13h], 00h		; Port_4_IntCtrl_1 register (PRT4IC1)
	M8C_SetBank0
	mov	reg[11h], 00h		; Port_4_IntEn register (PRT4IE)
	mov	reg[14h], 00h		; Port_5_Data register (PRT5DR)
	M8C_SetBank1
	mov	reg[14h], 00h		; Port_5_DriveMode_0 register (PRT5DM0)
	mov	reg[15h], 00h		; Port_5_DriveMode_1 register (PRT5DM1)
	M8C_SetBank0
	mov	reg[17h], 00h		; Port_5_DriveMode_2 register (PRT5DM2)
	mov	reg[16h], 00h		; Port_5_GlobalSelect register (PRT5GS)
	M8C_SetBank1
	mov	reg[16h], 00h		; Port_5_IntCtrl_0 register (PRT5IC0)
	mov	reg[17h], 00h		; Port_5_IntCtrl_1 register (PRT5IC1)
	M8C_SetBank0
	mov	reg[15h], 00h		; Port_5_IntEn register (PRT5IE)
	M8C_SetBank0
	ret


; PSoC Configuration file trailer PsocConfig.asm
