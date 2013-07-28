Project:      output/Seegangskompensation
Build Number: 0
Date:         Sun Jul 28 18:07:53 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   00B3 =    179. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0155  LoadConfigTBL_seegangskompensation_Bank0
       01BC  LoadConfigTBL_seegangskompensation_Bank1
       0203  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0203   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0203  __func_lit_start
       0205  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0205   012F =    303. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0205  LoadConfigTBL_seegangskompensation_Ordered
       02CA  _LoadConfigInit
       02CA  LoadConfigInit
       02DD  _LoadConfig_seegangskompensation
       02DD  LoadConfig_seegangskompensation
       0334  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0334   050F =   1295. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0334  _PWM8_1_ISR
       0335  _PWM8_1_EnableInt
       0335  PWM8_1_EnableInt
       0339  _PWM8_1_DisableInt
       0339  PWM8_1_DisableInt
       033D  _PWM8_1_Start
       033D  PWM8_1_Start
       0341  PWM8_1_Stop
       0341  _PWM8_1_Stop
       0345  _PWM8_1_WritePeriod
       0345  PWM8_1_WritePeriod
       0348  PWM8_1_WritePulseWidth
       0348  _PWM8_1_WritePulseWidth
       034B  _PWM8_1_bReadPulseWidth
       034B  _bPWM8_1_ReadPulseWidth
       034B  bPWM8_1_ReadPulseWidth
       034B  PWM8_1_bReadPulseWidth
       034E  bPWM8_1_ReadCounter
       034E  PWM8_1_bReadCounter
       034E  _PWM8_1_bReadCounter
       034E  _bPWM8_1_ReadCounter
       0377  LCD_1_PrCString
       0377  _LCD_1_PrCString
       0389  LCD_1_HEX_STR
       0399  LCD_1_PrHexByte
       0399  _LCD_1_PrHexByte
       03AC  _LCD_1_PrHexInt
       03AC  LCD_1_PrHexInt
       03B3  _LCD_1_PrString
       03B3  LCD_1_PrString
       03BD  _LCD_1_Write_Data
       03BD  LCD_1_WriteData
       03BD  _LCD_1_WriteData
       03BD  LCD_1_Write_Data
       03D1  _LCD_1_Control
       03D1  LCD_1_Control
       0478  _LCD_1_Init
       0478  LCD_1_Init
       0478  LCD_1_Start
       0478  _LCD_1_Start
       04E4  LCD_1_ROW_OFFSET
       04E8  LCD_1_Position
       04E8  _LCD_1_Position
       04F4  _LCD_1_Delay50uTimes
       04F4  LCD_1_Delay50uTimes
       04FA  LCD_1_Delay50u_Table
       0502  LCD_1_Delay50u
       0502  _LCD_1_Delay50u
       0516  LCD_1_DrawBG
       053C  _LCD_1_DrawBG
       0565  LCD_1_DrawVBG
       0592  _LCD_1_DrawVBG
       05C2  LCD_1_InitVBG
       05C2  _LCD_1_InitVBG
       05EF  LCD_1_BG_TYPE1
       05F6  LCD_1_BG_TYPE2
       05FD  LCD_1_InitBG
       05FD  _LCD_1_InitBG
       062D  _DUALADC8_CNT1_ISR
       0630  _DUALADC8_CNT2_ISR
       0633  _DUALADC8_PWM16_ISR
       06C2  _DUALADC8_Start
       06C2  DUALADC8_SetPower
       06C2  _DUALADC8_SetPower
       06C2  DUALADC8_Start
       06DC  DUALADC8_Stop
       06DC  _DUALADC8_Stop
       06E3  DUALADC8_GetSamples
       06E3  _DUALADC8_GetSamples
       0722  _DUALADC8_StopAD
       0722  DUALADC8_StopAD
       0741  DUALADC8_fIsData
       0741  DUALADC8_fIsDataAvailable
       0741  _DUALADC8_fIsData
       0741  _DUALADC8_fIsDataAvailable
       0746  _DUALADC8_cGetData1ClearFlag
       0746  DUALADC8_cGetData1ClearFlag
       074C  _DUALADC8_cGetData1
       074C  DUALADC8_cGetData1
       074F  _DUALADC8_cGetData2ClearFlag
       074F  DUALADC8_cGetData2ClearFlag
       0755  _DUALADC8_cGetData2
       0755  DUALADC8_cGetData2
       0758  DUALADC8_ClearFlag
       0758  _DUALADC8_ClearFlag
       075C  _DUALADC8_SetCalcTime
       075C  DUALADC8_SetCalcTime
       0761  _ADCINC_ADConversion_ISR
       07CC  _ADCINC_Start
       07CC  ADCINC_Start
       07DE  _ADCINC_SetPower
       07DE  ADCINC_SetPower
       07EC  ADCINC_Stop
       07EC  _ADCINC_Stop
       07F6  _ADCINC_GetSamples
       07F6  ADCINC_GetSamples
       0812  ADCINC_StopADC
       0812  _ADCINC_StopADC
       081C  _ADCINC_fIsDataAvailable
       081C  ADCINC_fIsDataAvailable
       081F  _ADCINC_wClearFlagGetData
       081F  ADCINC_wClearFlagGetData
       081F  _ADCINC_iClearFlagGetData
       081F  ADCINC_iClearFlagGetData
       082C  _ADCINC_bClearFlagGetData
       082C  ADCINC_bClearFlagGetData
       082C  _ADCINC_cClearFlagGetData
       082C  ADCINC_cClearFlagGetData
       0832  ADCINC_wGetData
       0832  _ADCINC_iGetData
       0832  ADCINC_iGetData
       0832  _ADCINC_wGetData
       0837  ADCINC_bGetData
       0837  ADCINC_cGetData
       0837  _ADCINC_cGetData
       0837  _ADCINC_bGetData
       083A  ADCINC_fClearFlag
       083A  _ADCINC_fClearFlag
       0840  _ADCINC_WritePulseWidth
       0840  ADCINC_WritePulseWidth
       0843  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0843   011D =    285. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0843  __text_start
       0843  _main
       0960  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rY
       0001  __rX
       0002  __r3
       0003  __r2
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
        seegangskompensation_RAM   0019   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0019  DUALADC8_iCalcTime
       0019  _DUALADC8_iCalcTime
       001B  __seegangskompensation_RAM_end
       001B  __ramareas_end

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
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, dualadc8int.asm, dualadc8.asm ]
[ adcincint.asm, adcinc.asm, rY.asm, rX.asm, r3.asm, r2.asm, r1.asm, r0.asm, divmodu_8x8_8_util.asm ]
[ i_div8_block_util.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

