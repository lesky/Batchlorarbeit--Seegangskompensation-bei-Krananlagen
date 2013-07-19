Project:      output/Seegangskompensation
Build Number: 0
Date:         Fri Jul 19 15:36:15 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   00AB =    171. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0155  LoadConfigTBL_seegangskompensation_Bank0
       01B4  LoadConfigTBL_seegangskompensation_Bank1
       01FB  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                        func_lit   01FB   0002 =      2. bytes (rel,con,rom,proclab)

       Addr  Global Symbol
      -----  --------------------------------
       01FB  __func_lit_start
       01FD  __func_lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01FD   012C =    300. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01FD  LoadConfigTBL_seegangskompensation_Ordered
       02C2  _LoadConfigInit
       02C2  LoadConfigInit
       02D2  _LoadConfig_seegangskompensation
       02D2  LoadConfig_seegangskompensation
       0329  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   0329   03EB =   1003. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0329  _PWM16_1_ISR
       032A  LCD_1_PrCString
       032A  _LCD_1_PrCString
       033C  LCD_1_HEX_STR
       034C  _LCD_1_PrHexByte
       034C  LCD_1_PrHexByte
       035F  LCD_1_PrHexInt
       035F  _LCD_1_PrHexInt
       0366  _LCD_1_PrString
       0366  LCD_1_PrString
       0370  _LCD_1_Write_Data
       0370  LCD_1_WriteData
       0370  _LCD_1_WriteData
       0370  LCD_1_Write_Data
       0384  LCD_1_Control
       0384  _LCD_1_Control
       042B  LCD_1_Init
       042B  _LCD_1_Start
       042B  LCD_1_Start
       042B  _LCD_1_Init
       0497  LCD_1_ROW_OFFSET
       049B  LCD_1_Position
       049B  _LCD_1_Position
       04A7  LCD_1_Delay50uTimes
       04A7  _LCD_1_Delay50uTimes
       04AD  LCD_1_Delay50u_Table
       04B5  LCD_1_Delay50u
       04B5  _LCD_1_Delay50u
       04C9  LCD_1_DrawBG
       04EF  _LCD_1_DrawBG
       0518  LCD_1_DrawVBG
       0545  _LCD_1_DrawVBG
       0575  LCD_1_InitVBG
       0575  _LCD_1_InitVBG
       05A2  LCD_1_BG_TYPE1
       05A9  LCD_1_BG_TYPE2
       05B0  _LCD_1_InitBG
       05B0  LCD_1_InitBG
       05E0  _DUALADC8_CNT1_ISR
       05E3  _DUALADC8_CNT2_ISR
       05E6  _DUALADC8_PWM16_ISR
       0675  _DUALADC8_SetPower
       0675  DUALADC8_SetPower
       0675  _DUALADC8_Start
       0675  DUALADC8_Start
       068F  DUALADC8_Stop
       068F  _DUALADC8_Stop
       0696  DUALADC8_GetSamples
       0696  _DUALADC8_GetSamples
       06D5  DUALADC8_StopAD
       06D5  _DUALADC8_StopAD
       06F4  DUALADC8_fIsData
       06F4  _DUALADC8_fIsData
       06F4  _DUALADC8_fIsDataAvailable
       06F4  DUALADC8_fIsDataAvailable
       06F9  _DUALADC8_cGetData1ClearFlag
       06F9  DUALADC8_cGetData1ClearFlag
       06FF  DUALADC8_cGetData1
       06FF  _DUALADC8_cGetData1
       0702  DUALADC8_cGetData2ClearFlag
       0702  _DUALADC8_cGetData2ClearFlag
       0708  _DUALADC8_cGetData2
       0708  DUALADC8_cGetData2
       070B  _DUALADC8_ClearFlag
       070B  DUALADC8_ClearFlag
       070F  _DUALADC8_SetCalcTime
       070F  DUALADC8_SetCalcTime
       0714  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0714   0075 =    117. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0714  __text_start
       0714  _main
       0789  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __rX
       0001  __r3
       0002  __r1
       0003  __r0
       0004  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0004   000A =     10. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0004  _Port_2_Data_SHADE
       0004  _NO_SHADOW
       0004  NO_SHADOW
       0004  Port_2_Data_SHADE
       0005  Port_2_DriveMode_0_SHADE
       0005  _Port_2_DriveMode_0_SHADE
       0006  _Port_2_DriveMode_1_SHADE
       0006  Port_2_DriveMode_1_SHADE
       0007  DUALADC8_cCounter1U
       0008  DUALADC8_cCounter2U
       0009  DUALADC8_iResult1
       0009  _DUALADC8_iResult1
       000B  DUALADC8_iResult2
       000B  _DUALADC8_iResult2
       000D  _DUALADC8_bfStatus
       000D  DUALADC8_bfStatus
       000E  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   000E   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000E  DUALADC8_iCalcTime
       000E  _DUALADC8_iCalcTime
       0010  __seegangskompensation_RAM_end
       0010  __ramareas_end

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
<library>	[ pwm16_1int.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, dualadc8int.asm, dualadc8.asm ]
[ rX.asm, r3.asm, r1.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

