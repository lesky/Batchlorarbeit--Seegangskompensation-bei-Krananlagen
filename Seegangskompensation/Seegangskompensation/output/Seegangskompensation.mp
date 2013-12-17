Project:      output/Seegangskompensation
Build Number: 0
Date:         Tue Dec 17 12:57:46 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0060 =     96. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0156  LoadConfigTBL_seegangskompensation_Bank0
       0187  LoadConfigTBL_seegangskompensation_Bank1
       01B0  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01B0   0138 =    312. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01B0  LoadConfigTBL_seegangskompensation_Ordered
       0275  _LoadConfigInit
       0275  LoadConfigInit
       0291  _LoadConfig_seegangskompensation
       0291  LoadConfig_seegangskompensation
       02E8  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02E8   057E =   1406. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02E8  _PWM8_1_ISR
       02E9  PWM8_1_EnableInt
       02E9  _PWM8_1_EnableInt
       02ED  _PWM8_1_DisableInt
       02ED  PWM8_1_DisableInt
       02F1  PWM8_1_Start
       02F1  _PWM8_1_Start
       02F5  PWM8_1_Stop
       02F5  _PWM8_1_Stop
       02F9  _PWM8_1_WritePeriod
       02F9  PWM8_1_WritePeriod
       02FC  _PWM8_1_WritePulseWidth
       02FC  PWM8_1_WritePulseWidth
       02FF  bPWM8_1_ReadPulseWidth
       02FF  _bPWM8_1_ReadPulseWidth
       02FF  _PWM8_1_bReadPulseWidth
       02FF  PWM8_1_bReadPulseWidth
       0302  PWM8_1_bReadCounter
       0302  bPWM8_1_ReadCounter
       0302  _bPWM8_1_ReadCounter
       0302  _PWM8_1_bReadCounter
       032B  _LCD_1_PrCString
       032B  LCD_1_PrCString
       033D  LCD_1_HEX_STR
       034D  LCD_1_PrHexByte
       034D  _LCD_1_PrHexByte
       0360  LCD_1_PrHexInt
       0360  _LCD_1_PrHexInt
       0367  _LCD_1_PrString
       0367  LCD_1_PrString
       0371  _LCD_1_WriteData
       0371  _LCD_1_Write_Data
       0371  LCD_1_Write_Data
       0371  LCD_1_WriteData
       0385  LCD_1_Control
       0385  _LCD_1_Control
       042C  LCD_1_Start
       042C  _LCD_1_Start
       042C  _LCD_1_Init
       042C  LCD_1_Init
       0498  LCD_1_ROW_OFFSET
       049C  _LCD_1_Position
       049C  LCD_1_Position
       04A8  _LCD_1_Delay50uTimes
       04A8  LCD_1_Delay50uTimes
       04AE  LCD_1_Delay50u_Table
       04B6  LCD_1_Delay50u
       04B6  _LCD_1_Delay50u
       04CA  IN2_On
       04CA  _IN2_On
       04CE  _IN2_Stop
       04CE  IN2_Stop
       04CE  IN2_Off
       04CE  _IN2_Start
       04CE  IN2_Start
       04CE  _IN2_Off
       04D0  IN2_Switch
       04D0  _IN2_Switch
       04E1  _IN2_Invert
       04E1  IN2_Invert
       04E9  _IN2_GetState
       04E9  IN2_GetState
       04F3  IN1_On
       04F3  _IN1_On
       04F7  _IN1_Off
       04F7  _IN1_Stop
       04F7  _IN1_Start
       04F7  IN1_Off
       04F7  IN1_Stop
       04F7  IN1_Start
       04F9  IN1_Switch
       04F9  _IN1_Switch
       050A  IN1_Invert
       050A  _IN1_Invert
       0512  _IN1_GetState
       0512  IN1_GetState
       051C  _I2Cm_Start
       051C  I2Cm_Start
       053D  I2Cm_Stop
       053D  _I2Cm_Stop
       053E  _I2Cm_fReadBytes
       0587  I2Cm_fReadBytes
       05CB  _I2Cm_bWriteBytes
       0608  I2Cm_bWriteBytes
       0640  _I2Cm_bWriteCBytes
       0680  I2Cm_bWriteCBytes
       06BD  I2Cm_fSendRepeatStart
       06BD  _I2Cm_fSendRepeatStart
       06F0  I2Cm_fSendStart
       06F0  _I2Cm_fSendStart
       0721  I2Cm_fWrite
       0721  _I2Cm_fWrite
       07A0  I2Cm_bRead
       07A0  _I2Cm_bRead
       0833  I2Cm_SendStop
       0833  _I2Cm_SendStop
       0866  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0866   02A4 =    676. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0866  _main
       0866  __text_start
       087E  _LCDansteuern
       08B9  _Dateneinlesen
       08E1  _Ausgangansteuern
       0932  _Initalisierung
       0955  PSoC_GPIO_ISR
       098D  _itoa
       0B0A  __text_end

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
                    InterruptRAM   0006   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0006  NO_SHADOW
       0006  Port_1_Data_SHADE
       0006  _NO_SHADOW
       0006  _Port_1_Data_SHADE
       0007  Port_2_Data_SHADE
       0007  _Port_2_Data_SHADE
       0008  Port_1_DriveMode_0_SHADE
       0008  _Port_1_DriveMode_0_SHADE
       0009  _Port_1_DriveMode_1_SHADE
       0009  Port_1_DriveMode_1_SHADE
       000A  Port_1_DriveMode_2_SHADE
       000A  _Port_1_DriveMode_2_SHADE
       000B  _Port_2_DriveMode_0_SHADE
       000B  Port_2_DriveMode_0_SHADE
       000C  Port_2_DriveMode_1_SHADE
       000C  _Port_2_DriveMode_1_SHADE
       000D  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   000D   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000D  _prozess
       000D  __bss_start
       0010  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   0010   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0010  _I2Cm_bStatus
       0010  I2Cm_bStatus
       0011  _I2Cm_bData
       0011  I2Cm_bData
       0012  _I2Cm_bAddr
       0012  I2Cm_bAddr
       0014  __seegangskompensation_RAM_end
       0014  __ramareas_end

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
<library>	[ pwm8_1int.asm, pwm8_1.asm, psocgpioint.asm, psocconfigtbl.asm, psocconfig.asm, lcd_1.asm, in2.asm ]
[ in1.asm, i2cm.asm, rZ.asm, rY.asm, rX.asm, r3.asm, r1.asm, r0.asm, divmodu_16x16_16_util.asm, i_div16_block_util.asm ]
[ itoa.s ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

