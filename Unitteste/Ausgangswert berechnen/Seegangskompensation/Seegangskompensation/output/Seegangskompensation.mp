Project:      output/Seegangskompensation
Build Number: 0
Date:         Wed Dec 25 08:02:06 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   005D =     93. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0153  LoadConfigTBL_seegangskompensation_Bank0
       0184  LoadConfigTBL_seegangskompensation_Bank1
       01AD  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01AD   0138 =    312. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01AD  LoadConfigTBL_seegangskompensation_Ordered
       0272  _LoadConfigInit
       0272  LoadConfigInit
       028E  _LoadConfig_seegangskompensation
       028E  LoadConfig_seegangskompensation
       02E5  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02E5   057E =   1406. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02E5  _PWM8_1_ISR
       02E6  PWM8_1_EnableInt
       02E6  _PWM8_1_EnableInt
       02EA  _PWM8_1_DisableInt
       02EA  PWM8_1_DisableInt
       02EE  PWM8_1_Start
       02EE  _PWM8_1_Start
       02F2  PWM8_1_Stop
       02F2  _PWM8_1_Stop
       02F6  _PWM8_1_WritePeriod
       02F6  PWM8_1_WritePeriod
       02F9  _PWM8_1_WritePulseWidth
       02F9  PWM8_1_WritePulseWidth
       02FC  bPWM8_1_ReadPulseWidth
       02FC  _bPWM8_1_ReadPulseWidth
       02FC  _PWM8_1_bReadPulseWidth
       02FC  PWM8_1_bReadPulseWidth
       02FF  PWM8_1_bReadCounter
       02FF  bPWM8_1_ReadCounter
       02FF  _bPWM8_1_ReadCounter
       02FF  _PWM8_1_bReadCounter
       0328  _LCD_1_PrCString
       0328  LCD_1_PrCString
       033A  LCD_1_HEX_STR
       034A  LCD_1_PrHexByte
       034A  _LCD_1_PrHexByte
       035D  _LCD_1_PrHexInt
       035D  LCD_1_PrHexInt
       0364  _LCD_1_PrString
       0364  LCD_1_PrString
       036E  _LCD_1_Write_Data
       036E  _LCD_1_WriteData
       036E  LCD_1_WriteData
       036E  LCD_1_Write_Data
       0382  LCD_1_Control
       0382  _LCD_1_Control
       0429  _LCD_1_Start
       0429  LCD_1_Init
       0429  _LCD_1_Init
       0429  LCD_1_Start
       0495  LCD_1_ROW_OFFSET
       0499  LCD_1_Position
       0499  _LCD_1_Position
       04A5  _LCD_1_Delay50uTimes
       04A5  LCD_1_Delay50uTimes
       04AB  LCD_1_Delay50u_Table
       04B3  LCD_1_Delay50u
       04B3  _LCD_1_Delay50u
       04C7  IN2_On
       04C7  _IN2_On
       04CB  _IN2_Stop
       04CB  IN2_Off
       04CB  _IN2_Start
       04CB  IN2_Stop
       04CB  IN2_Start
       04CB  _IN2_Off
       04CD  _IN2_Switch
       04CD  IN2_Switch
       04DE  IN2_Invert
       04DE  _IN2_Invert
       04E6  _IN2_GetState
       04E6  IN2_GetState
       04F0  IN1_On
       04F0  _IN1_On
       04F4  _IN1_Off
       04F4  _IN1_Stop
       04F4  _IN1_Start
       04F4  IN1_Stop
       04F4  IN1_Off
       04F4  IN1_Start
       04F6  IN1_Switch
       04F6  _IN1_Switch
       0507  IN1_Invert
       0507  _IN1_Invert
       050F  IN1_GetState
       050F  _IN1_GetState
       0519  I2Cm_Start
       0519  _I2Cm_Start
       053A  I2Cm_Stop
       053A  _I2Cm_Stop
       053B  _I2Cm_fReadBytes
       0584  I2Cm_fReadBytes
       05C8  _I2Cm_bWriteBytes
       0605  I2Cm_bWriteBytes
       063D  _I2Cm_bWriteCBytes
       067D  I2Cm_bWriteCBytes
       06BA  _I2Cm_fSendRepeatStart
       06BA  I2Cm_fSendRepeatStart
       06ED  I2Cm_fSendStart
       06ED  _I2Cm_fSendStart
       071E  _I2Cm_fWrite
       071E  I2Cm_fWrite
       079D  _I2Cm_bRead
       079D  I2Cm_bRead
       0830  I2Cm_SendStop
       0830  _I2Cm_SendStop
       0863  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0863   005A =     90. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0863  __text_start
       0863  _main
       087A  _Initalisierung
       088E  _Ausgangberechnen
       08BC  PSoC_GPIO_ISR
       08BD  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0002 =      2. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r2
       0001  __r0
       0002  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0002   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0002  NO_SHADOW
       0002  Port_1_Data_SHADE
       0002  _NO_SHADOW
       0002  _Port_1_Data_SHADE
       0003  Port_2_Data_SHADE
       0003  _Port_2_Data_SHADE
       0004  Port_1_DriveMode_0_SHADE
       0004  _Port_1_DriveMode_0_SHADE
       0005  _Port_1_DriveMode_1_SHADE
       0005  Port_1_DriveMode_1_SHADE
       0006  Port_1_DriveMode_2_SHADE
       0006  _Port_1_DriveMode_2_SHADE
       0007  _Port_2_DriveMode_0_SHADE
       0007  Port_2_DriveMode_0_SHADE
       0008  Port_2_DriveMode_1_SHADE
       0008  _Port_2_DriveMode_1_SHADE
       0009  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0009   0006 =      6. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0009  _prozess
       0009  __bss_start
       000F  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   000F   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000F  _I2Cm_bStatus
       000F  I2Cm_bStatus
       0010  _I2Cm_bData
       0010  I2Cm_bData
       0011  _I2Cm_bAddr
       0011  I2Cm_bAddr
       0013  __seegangskompensation_RAM_end
       0013  __ramareas_end

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
[ in1.asm, i2cm.asm, r2.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

