Project:      output/Seegangskompensation
Build Number: 0
Date:         Mon Sep 16 09:22:39 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0256 =    598. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       016B  LoadConfigTBL_seegangskompensation_Bank0
       01EA  LoadConfigTBL_seegangskompensation_Bank1
       0231  __ctype
       03A6  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   03A6   0004 =      4. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       03A6  __func_lit_start
       03AA  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   03AA   012F =    303. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       03AA  LoadConfigTBL_seegangskompensation_Ordered
       046F  _LoadConfigInit
       046F  LoadConfigInit
       0482  _LoadConfig_seegangskompensation
       0482  LoadConfig_seegangskompensation
       04D9  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   04D9   0494 =   1172. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       04D9  _PWM8_1_ISR
       04DA  _PWM8_1_EnableInt
       04DA  PWM8_1_EnableInt
       04DE  _PWM8_1_DisableInt
       04DE  PWM8_1_DisableInt
       04E2  _PWM8_1_Start
       04E2  PWM8_1_Start
       04E6  _PWM8_1_Stop
       04E6  PWM8_1_Stop
       04EA  _PWM8_1_WritePeriod
       04EA  PWM8_1_WritePeriod
       04ED  _PWM8_1_WritePulseWidth
       04ED  PWM8_1_WritePulseWidth
       04F0  bPWM8_1_ReadPulseWidth
       04F0  _bPWM8_1_ReadPulseWidth
       04F0  PWM8_1_bReadPulseWidth
       04F0  _PWM8_1_bReadPulseWidth
       04F3  _PWM8_1_bReadCounter
       04F3  bPWM8_1_ReadCounter
       04F3  PWM8_1_bReadCounter
       04F3  _bPWM8_1_ReadCounter
       051C  PGA_3_SetPower
       051C  _PGA_3_Start
       051C  PGA_3_Start
       051C  _PGA_3_SetPower
       052A  _PGA_3_SetGain
       052A  PGA_3_SetGain
       054C  _PGA_3_Stop
       054C  PGA_3_Stop
       0550  PGA_2_SetPower
       0550  _PGA_2_Start
       0550  _PGA_2_SetPower
       0550  PGA_2_Start
       055E  _PGA_2_SetGain
       055E  PGA_2_SetGain
       0580  _PGA_2_Stop
       0580  PGA_2_Stop
       0584  PGA_1_SetPower
       0584  PGA_1_Start
       0584  _PGA_1_Start
       0584  _PGA_1_SetPower
       0592  _PGA_1_SetGain
       0592  PGA_1_SetGain
       05B4  _PGA_1_Stop
       05B4  PGA_1_Stop
       05B8  _LCD_1_PrCString
       05B8  LCD_1_PrCString
       05CA  LCD_1_HEX_STR
       05DA  LCD_1_PrHexByte
       05DA  _LCD_1_PrHexByte
       05ED  LCD_1_PrHexInt
       05ED  _LCD_1_PrHexInt
       05F4  LCD_1_PrString
       05F4  _LCD_1_PrString
       05FE  LCD_1_WriteData
       05FE  _LCD_1_Write_Data
       05FE  _LCD_1_WriteData
       05FE  LCD_1_Write_Data
       0612  _LCD_1_Control
       0612  LCD_1_Control
       06B9  LCD_1_Init
       06B9  LCD_1_Start
       06B9  _LCD_1_Init
       06B9  _LCD_1_Start
       0725  LCD_1_ROW_OFFSET
       0729  LCD_1_Position
       0729  _LCD_1_Position
       0735  LCD_1_Delay50uTimes
       0735  _LCD_1_Delay50uTimes
       073B  LCD_1_Delay50u_Table
       0743  _LCD_1_Delay50u
       0743  LCD_1_Delay50u
       0757  _DUALADC8_CNT1_ISR
       075A  _DUALADC8_CNT2_ISR
       075D  _DUALADC8_PWM16_ISR
       07EC  DUALADC8_SetPower
       07EC  _DUALADC8_Start
       07EC  DUALADC8_Start
       07EC  _DUALADC8_SetPower
       0806  _DUALADC8_Stop
       0806  DUALADC8_Stop
       080D  _DUALADC8_GetSamples
       080D  DUALADC8_GetSamples
       084C  DUALADC8_StopAD
       084C  _DUALADC8_StopAD
       086B  _DUALADC8_fIsDataAvailable
       086B  DUALADC8_fIsDataAvailable
       086B  DUALADC8_fIsData
       086B  _DUALADC8_fIsData
       0870  _DUALADC8_cGetData1ClearFlag
       0870  DUALADC8_cGetData1ClearFlag
       0876  DUALADC8_cGetData1
       0876  _DUALADC8_cGetData1
       0879  _DUALADC8_cGetData2ClearFlag
       0879  DUALADC8_cGetData2ClearFlag
       087F  DUALADC8_cGetData2
       087F  _DUALADC8_cGetData2
       0882  DUALADC8_ClearFlag
       0882  _DUALADC8_ClearFlag
       0886  _DUALADC8_SetCalcTime
       0886  DUALADC8_SetCalcTime
       088B  _ADCINC_ADConversion_ISR
       08F6  ADCINC_Start
       08F6  _ADCINC_Start
       0908  _ADCINC_SetPower
       0908  ADCINC_SetPower
       0916  _ADCINC_Stop
       0916  ADCINC_Stop
       0920  _ADCINC_GetSamples
       0920  ADCINC_GetSamples
       093C  _ADCINC_StopADC
       093C  ADCINC_StopADC
       0946  ADCINC_fIsDataAvailable
       0946  _ADCINC_fIsDataAvailable
       0949  ADCINC_iClearFlagGetData
       0949  _ADCINC_wClearFlagGetData
       0949  _ADCINC_iClearFlagGetData
       0949  ADCINC_wClearFlagGetData
       0956  _ADCINC_cClearFlagGetData
       0956  _ADCINC_bClearFlagGetData
       0956  ADCINC_cClearFlagGetData
       0956  ADCINC_bClearFlagGetData
       095C  _ADCINC_wGetData
       095C  ADCINC_iGetData
       095C  _ADCINC_iGetData
       095C  ADCINC_wGetData
       0961  ADCINC_cGetData
       0961  _ADCINC_bGetData
       0961  ADCINC_bGetData
       0961  _ADCINC_cGetData
       0964  ADCINC_fClearFlag
       0964  _ADCINC_fClearFlag
       096A  ADCINC_WritePulseWidth
       096A  _ADCINC_WritePulseWidth
       096D  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   096D   09AD =   2477. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       096D  _main
       096D  __text_start
       09F0  _LCDansteuern
       0A54  _Dateneinlesen
       0A87  _Ausgangansteuern
       0AB2  _test
       0B16  __plcall
       0B22  _itoa
       0C9F  _utoa
       0D9D  _isdigit
       0DBB  _islower
       0DD9  _isspace
       0DF7  _toupper
       0E2C  __csdepi
       0E46  _csprintf
       0E85  __cprint
       131A  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0009 =      9. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rZ
       0001  __rY
       0002  __rX
       0003  __r5
       0004  __r4
       0005  __r3
       0006  __r2
       0007  __r1
       0008  __r0
       0009  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0009   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0009  Port_1_Data_SHADE
       0009  _Port_1_Data_SHADE
       0009  NO_SHADOW
       0009  _NO_SHADOW
       000A  Port_2_Data_SHADE
       000A  _Port_2_Data_SHADE
       000B  Port_2_DriveMode_0_SHADE
       000B  _Port_2_DriveMode_0_SHADE
       000C  _Port_2_DriveMode_1_SHADE
       000C  Port_2_DriveMode_1_SHADE
       000D  DUALADC8_cCounter1U
       000E  DUALADC8_cCounter2U
       000F  DUALADC8_iResult1
       000F  _DUALADC8_iResult1
       0011  _DUALADC8_iResult2
       0011  DUALADC8_iResult2
       0013  DUALADC8_bfStatus
       0013  _DUALADC8_bfStatus
       0014  _ADCINC_iResult
       0014  ADCINC_iResult
       0018  _ADCINC_fStatus
       0018  ADCINC_fStatus
       0019  _ADCINC_bState
       0019  ADCINC_bState
       001A  ADCINC_fMode
       001A  _ADCINC_fMode
       001B  ADCINC_bNumSamples
       001B  _ADCINC_bNumSamples
       001C  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   001C   001F =     31. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       001C  _prozess
       001C  __bss_start
       003B  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   003B   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       003B  DUALADC8_iCalcTime
       003B  _DUALADC8_iCalcTime
       003D  __seegangskompensation_RAM_end
       003D  __ramareas_end

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
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, pga_3.asm, pga_2.asm, pga_1.asm ]
[ lcd_1.asm, dualadc8int.asm, dualadc8.asm, adcincint.asm, adcinc.asm, rZ.asm, rY.asm, rX.asm, r5.asm ]
[ r4.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm, plcall.s ]
[ itoa.s, utoa.s, isdigit.s, islower.s, isspace.s, ctype.s, toupper.s, sprintf.s, _printf.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

