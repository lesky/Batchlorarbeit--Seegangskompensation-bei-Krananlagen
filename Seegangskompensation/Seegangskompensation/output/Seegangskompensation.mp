Project:      output/Seegangskompensation
Build Number: 0
Date:         Wed Aug 28 11:07:03 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   00C6 =    198. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_seegangskompensation_Bank0
       01CF  LoadConfigTBL_seegangskompensation_Bank1
       0216  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   0216   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       0216  __func_lit_start
       0218  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   0218   012F =    303. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0218  LoadConfigTBL_seegangskompensation_Ordered
       02DD  _LoadConfigInit
       02DD  LoadConfigInit
       02F0  _LoadConfig_seegangskompensation
       02F0  LoadConfig_seegangskompensation
       0347  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0347   05AB =   1451. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0347  _PWM8_1_ISR
       0348  PWM8_1_EnableInt
       0348  _PWM8_1_EnableInt
       034C  _PWM8_1_DisableInt
       034C  PWM8_1_DisableInt
       0350  PWM8_1_Start
       0350  _PWM8_1_Start
       0354  PWM8_1_Stop
       0354  _PWM8_1_Stop
       0358  _PWM8_1_WritePeriod
       0358  PWM8_1_WritePeriod
       035B  _PWM8_1_WritePulseWidth
       035B  PWM8_1_WritePulseWidth
       035E  _PWM8_1_bReadPulseWidth
       035E  bPWM8_1_ReadPulseWidth
       035E  _bPWM8_1_ReadPulseWidth
       035E  PWM8_1_bReadPulseWidth
       0361  _bPWM8_1_ReadCounter
       0361  bPWM8_1_ReadCounter
       0361  PWM8_1_bReadCounter
       0361  _PWM8_1_bReadCounter
       038A  PGA_3_SetPower
       038A  _PGA_3_Start
       038A  _PGA_3_SetPower
       038A  PGA_3_Start
       0398  _PGA_3_SetGain
       0398  PGA_3_SetGain
       03BA  _PGA_3_Stop
       03BA  PGA_3_Stop
       03BE  _PGA_2_SetPower
       03BE  _PGA_2_Start
       03BE  PGA_2_Start
       03BE  PGA_2_SetPower
       03CC  _PGA_2_SetGain
       03CC  PGA_2_SetGain
       03EE  _PGA_2_Stop
       03EE  PGA_2_Stop
       03F2  PGA_1_SetPower
       03F2  _PGA_1_Start
       03F2  _PGA_1_SetPower
       03F2  PGA_1_Start
       0400  PGA_1_SetGain
       0400  _PGA_1_SetGain
       0422  PGA_1_Stop
       0422  _PGA_1_Stop
       0426  LCD_1_PrCString
       0426  _LCD_1_PrCString
       0438  LCD_1_HEX_STR
       0448  LCD_1_PrHexByte
       0448  _LCD_1_PrHexByte
       045B  _LCD_1_PrHexInt
       045B  LCD_1_PrHexInt
       0462  _LCD_1_PrString
       0462  LCD_1_PrString
       046C  LCD_1_WriteData
       046C  LCD_1_Write_Data
       046C  _LCD_1_WriteData
       046C  _LCD_1_Write_Data
       0480  LCD_1_Control
       0480  _LCD_1_Control
       0527  _LCD_1_Init
       0527  _LCD_1_Start
       0527  LCD_1_Init
       0527  LCD_1_Start
       0593  LCD_1_ROW_OFFSET
       0597  _LCD_1_Position
       0597  LCD_1_Position
       05A3  LCD_1_Delay50uTimes
       05A3  _LCD_1_Delay50uTimes
       05A9  LCD_1_Delay50u_Table
       05B1  LCD_1_Delay50u
       05B1  _LCD_1_Delay50u
       05C5  LCD_1_DrawBG
       05EB  _LCD_1_DrawBG
       0614  LCD_1_DrawVBG
       0641  _LCD_1_DrawVBG
       0671  _LCD_1_InitVBG
       0671  LCD_1_InitVBG
       069E  LCD_1_BG_TYPE1
       06A5  LCD_1_BG_TYPE2
       06AC  _LCD_1_InitBG
       06AC  LCD_1_InitBG
       06DC  _DUALADC8_CNT1_ISR
       06DF  _DUALADC8_CNT2_ISR
       06E2  _DUALADC8_PWM16_ISR
       0771  _DUALADC8_SetPower
       0771  _DUALADC8_Start
       0771  DUALADC8_Start
       0771  DUALADC8_SetPower
       078B  _DUALADC8_Stop
       078B  DUALADC8_Stop
       0792  DUALADC8_GetSamples
       0792  _DUALADC8_GetSamples
       07D1  DUALADC8_StopAD
       07D1  _DUALADC8_StopAD
       07F0  DUALADC8_fIsData
       07F0  _DUALADC8_fIsData
       07F0  DUALADC8_fIsDataAvailable
       07F0  _DUALADC8_fIsDataAvailable
       07F5  DUALADC8_cGetData1ClearFlag
       07F5  _DUALADC8_cGetData1ClearFlag
       07FB  DUALADC8_cGetData1
       07FB  _DUALADC8_cGetData1
       07FE  DUALADC8_cGetData2ClearFlag
       07FE  _DUALADC8_cGetData2ClearFlag
       0804  _DUALADC8_cGetData2
       0804  DUALADC8_cGetData2
       0807  DUALADC8_ClearFlag
       0807  _DUALADC8_ClearFlag
       080B  _DUALADC8_SetCalcTime
       080B  DUALADC8_SetCalcTime
       0810  _ADCINC_ADConversion_ISR
       087B  ADCINC_Start
       087B  _ADCINC_Start
       088D  _ADCINC_SetPower
       088D  ADCINC_SetPower
       089B  ADCINC_Stop
       089B  _ADCINC_Stop
       08A5  ADCINC_GetSamples
       08A5  _ADCINC_GetSamples
       08C1  _ADCINC_StopADC
       08C1  ADCINC_StopADC
       08CB  _ADCINC_fIsDataAvailable
       08CB  ADCINC_fIsDataAvailable
       08CE  _ADCINC_wClearFlagGetData
       08CE  _ADCINC_iClearFlagGetData
       08CE  ADCINC_wClearFlagGetData
       08CE  ADCINC_iClearFlagGetData
       08DB  _ADCINC_bClearFlagGetData
       08DB  ADCINC_cClearFlagGetData
       08DB  _ADCINC_cClearFlagGetData
       08DB  ADCINC_bClearFlagGetData
       08E1  ADCINC_wGetData
       08E1  _ADCINC_wGetData
       08E1  _ADCINC_iGetData
       08E1  ADCINC_iGetData
       08E6  ADCINC_bGetData
       08E6  ADCINC_cGetData
       08E6  _ADCINC_bGetData
       08E6  _ADCINC_cGetData
       08E9  ADCINC_fClearFlag
       08E9  _ADCINC_fClearFlag
       08EF  ADCINC_WritePulseWidth
       08EF  _ADCINC_WritePulseWidth
       08F2  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   08F2   0131 =    305. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       08F2  __text_start
       08F2  _main
       098D  _LCDansteuern
       09A1  _Dateneinlesen
       09D4  _Ausgangansteuern
       0A23  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0005 =      5. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rY
       0001  __rX
       0002  __r2
       0003  __r1
       0004  __r0
       0005  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0005   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0005  Port_1_Data_SHADE
       0005  _Port_1_Data_SHADE
       0005  NO_SHADOW
       0005  _NO_SHADOW
       0006  Port_2_Data_SHADE
       0006  _Port_2_Data_SHADE
       0007  Port_2_DriveMode_0_SHADE
       0007  _Port_2_DriveMode_0_SHADE
       0008  _Port_2_DriveMode_1_SHADE
       0008  Port_2_DriveMode_1_SHADE
       0009  DUALADC8_cCounter1U
       000A  DUALADC8_cCounter2U
       000B  DUALADC8_iResult1
       000B  _DUALADC8_iResult1
       000D  _DUALADC8_iResult2
       000D  DUALADC8_iResult2
       000F  DUALADC8_bfStatus
       000F  _DUALADC8_bfStatus
       0010  _ADCINC_iResult
       0010  ADCINC_iResult
       0014  _ADCINC_fStatus
       0014  ADCINC_fStatus
       0015  _ADCINC_bState
       0015  ADCINC_bState
       0016  ADCINC_fMode
       0016  _ADCINC_fMode
       0017  ADCINC_bNumSamples
       0017  _ADCINC_bNumSamples
       0018  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0018   0013 =     19. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0018  _prozess
       0018  __bss_start
       002B  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   002B   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       002B  DUALADC8_iCalcTime
       002B  _DUALADC8_iCalcTime
       002D  __seegangskompensation_RAM_end
       002D  __ramareas_end

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
[ lcd_1.asm, dualadc8int.asm, dualadc8.asm, adcincint.asm, adcinc.asm, rY.asm, rX.asm, r2.asm, r1.asm ]
[ r0.asm, divmodu_8x8_8_util.asm, i_div8_block_util.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

