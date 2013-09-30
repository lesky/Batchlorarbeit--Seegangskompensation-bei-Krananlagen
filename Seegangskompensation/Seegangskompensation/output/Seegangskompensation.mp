Project:      output/Seegangskompensation
Build Number: 0
Date:         Mon Sep 30 09:44:36 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   00CC =    204. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0156  LoadConfigTBL_seegangskompensation_Bank0
       01D5  LoadConfigTBL_seegangskompensation_Bank1
       021C  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   021C   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       021C  __func_lit_start
       021E  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   021E   012F =    303. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       021E  LoadConfigTBL_seegangskompensation_Ordered
       02E3  _LoadConfigInit
       02E3  LoadConfigInit
       02F6  _LoadConfig_seegangskompensation
       02F6  LoadConfig_seegangskompensation
       034D  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   034D   050F =   1295. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       034D  _SELBSTTEST_On
       034D  SELBSTTEST_On
       0351  _SELBSTTEST_Stop
       0351  SELBSTTEST_Start
       0351  SELBSTTEST_Stop
       0351  _SELBSTTEST_Off
       0351  SELBSTTEST_Off
       0351  _SELBSTTEST_Start
       0353  _SELBSTTEST_Switch
       0353  SELBSTTEST_Switch
       0364  _SELBSTTEST_Invert
       0364  SELBSTTEST_Invert
       036C  SELBSTTEST_GetState
       036C  _SELBSTTEST_GetState
       0376  _PWM8_1_ISR
       0377  _PWM8_1_EnableInt
       0377  PWM8_1_EnableInt
       037B  _PWM8_1_DisableInt
       037B  PWM8_1_DisableInt
       037F  _PWM8_1_Start
       037F  PWM8_1_Start
       0383  _PWM8_1_Stop
       0383  PWM8_1_Stop
       0387  PWM8_1_WritePeriod
       0387  _PWM8_1_WritePeriod
       038A  _PWM8_1_WritePulseWidth
       038A  PWM8_1_WritePulseWidth
       038D  PWM8_1_bReadPulseWidth
       038D  bPWM8_1_ReadPulseWidth
       038D  _bPWM8_1_ReadPulseWidth
       038D  _PWM8_1_bReadPulseWidth
       0390  _bPWM8_1_ReadCounter
       0390  _PWM8_1_bReadCounter
       0390  PWM8_1_bReadCounter
       0390  bPWM8_1_ReadCounter
       03B9  _PGA_3_SetPower
       03B9  PGA_3_Start
       03B9  _PGA_3_Start
       03B9  PGA_3_SetPower
       03C7  PGA_3_SetGain
       03C7  _PGA_3_SetGain
       03E9  _PGA_3_Stop
       03E9  PGA_3_Stop
       03ED  _PGA_2_Start
       03ED  PGA_2_SetPower
       03ED  PGA_2_Start
       03ED  _PGA_2_SetPower
       03FB  PGA_2_SetGain
       03FB  _PGA_2_SetGain
       041D  _PGA_2_Stop
       041D  PGA_2_Stop
       0421  _PGA_1_SetPower
       0421  _PGA_1_Start
       0421  PGA_1_SetPower
       0421  PGA_1_Start
       042F  PGA_1_SetGain
       042F  _PGA_1_SetGain
       0451  PGA_1_Stop
       0451  _PGA_1_Stop
       0455  LCD_1_PrCString
       0455  _LCD_1_PrCString
       0467  LCD_1_HEX_STR
       0477  LCD_1_PrHexByte
       0477  _LCD_1_PrHexByte
       048A  LCD_1_PrHexInt
       048A  _LCD_1_PrHexInt
       0491  LCD_1_PrString
       0491  _LCD_1_PrString
       049B  LCD_1_WriteData
       049B  LCD_1_Write_Data
       049B  _LCD_1_WriteData
       049B  _LCD_1_Write_Data
       04AF  LCD_1_Control
       04AF  _LCD_1_Control
       0556  _LCD_1_Init
       0556  LCD_1_Init
       0556  LCD_1_Start
       0556  _LCD_1_Start
       05C2  LCD_1_ROW_OFFSET
       05C6  LCD_1_Position
       05C6  _LCD_1_Position
       05D2  _LCD_1_Delay50uTimes
       05D2  LCD_1_Delay50uTimes
       05D8  LCD_1_Delay50u_Table
       05E0  LCD_1_Delay50u
       05E0  _LCD_1_Delay50u
       05F4  _IN2_On
       05F4  IN2_On
       05F8  IN2_Start
       05F8  _IN2_Off
       05F8  IN2_Stop
       05F8  IN2_Off
       05F8  _IN2_Start
       05F8  _IN2_Stop
       05FA  IN2_Switch
       05FA  _IN2_Switch
       060B  _IN2_Invert
       060B  IN2_Invert
       0613  _IN2_GetState
       0613  IN2_GetState
       061D  IN1_On
       061D  _IN1_On
       0621  IN1_Start
       0621  _IN1_Start
       0621  _IN1_Stop
       0621  IN1_Off
       0621  _IN1_Off
       0621  IN1_Stop
       0623  IN1_Switch
       0623  _IN1_Switch
       0634  IN1_Invert
       0634  _IN1_Invert
       063C  IN1_GetState
       063C  _IN1_GetState
       0646  _DUALADC8_CNT1_ISR
       0649  _DUALADC8_CNT2_ISR
       064C  _DUALADC8_PWM16_ISR
       06DB  DUALADC8_Start
       06DB  _DUALADC8_SetPower
       06DB  _DUALADC8_Start
       06DB  DUALADC8_SetPower
       06F5  _DUALADC8_Stop
       06F5  DUALADC8_Stop
       06FC  DUALADC8_GetSamples
       06FC  _DUALADC8_GetSamples
       073B  _DUALADC8_StopAD
       073B  DUALADC8_StopAD
       075A  DUALADC8_fIsDataAvailable
       075A  DUALADC8_fIsData
       075A  _DUALADC8_fIsData
       075A  _DUALADC8_fIsDataAvailable
       075F  DUALADC8_cGetData1ClearFlag
       075F  _DUALADC8_cGetData1ClearFlag
       0765  DUALADC8_cGetData1
       0765  _DUALADC8_cGetData1
       0768  _DUALADC8_cGetData2ClearFlag
       0768  DUALADC8_cGetData2ClearFlag
       076E  DUALADC8_cGetData2
       076E  _DUALADC8_cGetData2
       0771  _DUALADC8_ClearFlag
       0771  DUALADC8_ClearFlag
       0775  DUALADC8_SetCalcTime
       0775  _DUALADC8_SetCalcTime
       077A  _ADCINC_ADConversion_ISR
       07E5  ADCINC_Start
       07E5  _ADCINC_Start
       07F7  _ADCINC_SetPower
       07F7  ADCINC_SetPower
       0805  _ADCINC_Stop
       0805  ADCINC_Stop
       080F  ADCINC_GetSamples
       080F  _ADCINC_GetSamples
       082B  ADCINC_StopADC
       082B  _ADCINC_StopADC
       0835  _ADCINC_fIsDataAvailable
       0835  ADCINC_fIsDataAvailable
       0838  ADCINC_wClearFlagGetData
       0838  _ADCINC_wClearFlagGetData
       0838  ADCINC_iClearFlagGetData
       0838  _ADCINC_iClearFlagGetData
       0845  ADCINC_bClearFlagGetData
       0845  _ADCINC_bClearFlagGetData
       0845  ADCINC_cClearFlagGetData
       0845  _ADCINC_cClearFlagGetData
       084B  _ADCINC_iGetData
       084B  ADCINC_iGetData
       084B  ADCINC_wGetData
       084B  _ADCINC_wGetData
       0850  _ADCINC_cGetData
       0850  _ADCINC_bGetData
       0850  ADCINC_cGetData
       0850  ADCINC_bGetData
       0853  ADCINC_fClearFlag
       0853  _ADCINC_fClearFlag
       0859  _ADCINC_WritePulseWidth
       0859  ADCINC_WritePulseWidth
       085C  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   085C   0315 =    789. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       085C  _main
       085C  __text_start
       08D3  _LCDansteuern
       090E  _Dateneinlesen
       0941  _Ausgangansteuern
       0992  _test
       09BC  PSoC_GPIO_ISR
       09F4  _itoa
       0B71  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rZ
       0001  __rY
       0002  __rX
       0003  __r3
       0004  __r1
       0005  __r0
       0006  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0006   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0006  Port_1_Data_SHADE
       0006  _Port_1_Data_SHADE
       0006  NO_SHADOW
       0006  _NO_SHADOW
       0007  Port_2_Data_SHADE
       0007  _Port_2_Data_SHADE
       0008  Port_2_DriveMode_0_SHADE
       0008  _Port_2_DriveMode_0_SHADE
       0009  _Port_2_DriveMode_1_SHADE
       0009  Port_2_DriveMode_1_SHADE
       000A  DUALADC8_cCounter1U
       000B  DUALADC8_cCounter2U
       000C  DUALADC8_iResult1
       000C  _DUALADC8_iResult1
       000E  _DUALADC8_iResult2
       000E  DUALADC8_iResult2
       0010  DUALADC8_bfStatus
       0010  _DUALADC8_bfStatus
       0011  _ADCINC_iResult
       0011  ADCINC_iResult
       0015  _ADCINC_fStatus
       0015  ADCINC_fStatus
       0016  _ADCINC_bState
       0016  ADCINC_bState
       0017  ADCINC_fMode
       0017  _ADCINC_fMode
       0018  ADCINC_bNumSamples
       0018  _ADCINC_bNumSamples
       0019  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0019   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  _prozess
       0019  __bss_start
       001C  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   001C   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001C  DUALADC8_iCalcTime
       001C  _DUALADC8_iCalcTime
       001E  __seegangskompensation_RAM_end
       001E  __ramareas_end

Area                               Start  End    Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             TOP   0000   00D7 =    215. bytes (abs,ovr,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0068  __Start
       00D4  _bGetPowerSetting
       00D4  bGetPowerSetting

Files Linked      [ module(s) ]

./obj/boot.o	[ boot.asm ]
obj/main.o	[ main.c ]
<library>	[ selbsttest.asm, pwm8_1int.asm, pwm8_1.asm, psocgpioint.asm, psocconfigtbl.asm, psocconfig.asm ]
[ pga_3.asm, pga_2.asm, pga_1.asm, lcd_1.asm, in2.asm, in1.asm, dualadc8int.asm, dualadc8.asm, adcincint.asm ]
[ adcinc.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm ]
[ itoa.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

