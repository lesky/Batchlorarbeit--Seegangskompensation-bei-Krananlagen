Project:      output/Seegangskompensation
Build Number: 0
Date:         Mon Jan 06 10:59:50 2014
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   006A =    106. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0160  LoadConfigTBL_seegangskompensation_Bank0
       0191  LoadConfigTBL_seegangskompensation_Bank1
       01BA  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01BA   0138 =    312. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01BA  LoadConfigTBL_seegangskompensation_Ordered
       027F  _LoadConfigInit
       027F  LoadConfigInit
       029B  _LoadConfig_seegangskompensation
       029B  LoadConfig_seegangskompensation
       02F2  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02F2   057E =   1406. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02F2  _PWM8_1_ISR
       02F3  PWM8_1_EnableInt
       02F3  _PWM8_1_EnableInt
       02F7  _PWM8_1_DisableInt
       02F7  PWM8_1_DisableInt
       02FB  PWM8_1_Start
       02FB  _PWM8_1_Start
       02FF  PWM8_1_Stop
       02FF  _PWM8_1_Stop
       0303  _PWM8_1_WritePeriod
       0303  PWM8_1_WritePeriod
       0306  _PWM8_1_WritePulseWidth
       0306  PWM8_1_WritePulseWidth
       0309  bPWM8_1_ReadPulseWidth
       0309  _bPWM8_1_ReadPulseWidth
       0309  _PWM8_1_bReadPulseWidth
       0309  PWM8_1_bReadPulseWidth
       030C  PWM8_1_bReadCounter
       030C  bPWM8_1_ReadCounter
       030C  _bPWM8_1_ReadCounter
       030C  _PWM8_1_bReadCounter
       0335  _LCD_1_PrCString
       0335  LCD_1_PrCString
       0347  LCD_1_HEX_STR
       0357  LCD_1_PrHexByte
       0357  _LCD_1_PrHexByte
       036A  LCD_1_PrHexInt
       036A  _LCD_1_PrHexInt
       0371  _LCD_1_PrString
       0371  LCD_1_PrString
       037B  _LCD_1_WriteData
       037B  _LCD_1_Write_Data
       037B  LCD_1_Write_Data
       037B  LCD_1_WriteData
       038F  LCD_1_Control
       038F  _LCD_1_Control
       0436  LCD_1_Start
       0436  _LCD_1_Start
       0436  _LCD_1_Init
       0436  LCD_1_Init
       04A2  LCD_1_ROW_OFFSET
       04A6  _LCD_1_Position
       04A6  LCD_1_Position
       04B2  LCD_1_Delay50uTimes
       04B2  _LCD_1_Delay50uTimes
       04B8  LCD_1_Delay50u_Table
       04C0  LCD_1_Delay50u
       04C0  _LCD_1_Delay50u
       04D4  IN2_On
       04D4  _IN2_On
       04D8  _IN2_Stop
       04D8  IN2_Stop
       04D8  IN2_Off
       04D8  _IN2_Start
       04D8  IN2_Start
       04D8  _IN2_Off
       04DA  IN2_Switch
       04DA  _IN2_Switch
       04EB  _IN2_Invert
       04EB  IN2_Invert
       04F3  IN2_GetState
       04F3  _IN2_GetState
       04FD  IN1_On
       04FD  _IN1_On
       0501  _IN1_Off
       0501  _IN1_Stop
       0501  _IN1_Start
       0501  IN1_Off
       0501  IN1_Stop
       0501  IN1_Start
       0503  IN1_Switch
       0503  _IN1_Switch
       0514  IN1_Invert
       0514  _IN1_Invert
       051C  _IN1_GetState
       051C  IN1_GetState
       0526  _I2Cm_Start
       0526  I2Cm_Start
       0547  I2Cm_Stop
       0547  _I2Cm_Stop
       0548  _I2Cm_fReadBytes
       0591  I2Cm_fReadBytes
       05D5  _I2Cm_bWriteBytes
       0612  I2Cm_bWriteBytes
       064A  _I2Cm_bWriteCBytes
       068A  I2Cm_bWriteCBytes
       06C7  _I2Cm_fSendRepeatStart
       06C7  I2Cm_fSendRepeatStart
       06FA  I2Cm_fSendStart
       06FA  _I2Cm_fSendStart
       072B  _I2Cm_fWrite
       072B  I2Cm_fWrite
       07AA  _I2Cm_bRead
       07AA  I2Cm_bRead
       083D  I2Cm_SendStop
       083D  _I2Cm_SendStop
       0870  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0870   0092 =    146. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0870  __text_start
       0870  _main
       0891  _Initalisierung
       08A5  _Ausgangansteuern
       0901  PSoC_GPIO_ISR
       0902  __text_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
               virtual_registers   0000   0001 =      1. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0000  __r0
       0001  __virtual_registers_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                    InterruptRAM   0001   0007 =      7. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0001  NO_SHADOW
       0001  Port_1_Data_SHADE
       0001  _NO_SHADOW
       0001  _Port_1_Data_SHADE
       0002  Port_2_Data_SHADE
       0002  _Port_2_Data_SHADE
       0003  Port_1_DriveMode_0_SHADE
       0003  _Port_1_DriveMode_0_SHADE
       0004  _Port_1_DriveMode_1_SHADE
       0004  Port_1_DriveMode_1_SHADE
       0005  Port_1_DriveMode_2_SHADE
       0005  _Port_1_DriveMode_2_SHADE
       0006  _Port_2_DriveMode_0_SHADE
       0006  Port_2_DriveMode_0_SHADE
       0007  Port_2_DriveMode_1_SHADE
       0007  _Port_2_DriveMode_1_SHADE
       0008  __InterruptRAM_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             bss   0008   0003 =      3. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       0008  _prozess
       0008  __bss_start
       000B  __bss_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
        seegangskompensation_RAM   000B   0004 =      4. bytes (rel,con,ram)

       Addr  Global Symbol
      -----  --------------------------------
       000B  _I2Cm_bStatus
       000B  I2Cm_bStatus
       000C  _I2Cm_bData
       000C  I2Cm_bData
       000D  _I2Cm_bAddr
       000D  I2Cm_bAddr
       000F  __seegangskompensation_RAM_end
       000F  __ramareas_end

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
[ in1.asm, i2cm.asm, r0.asm ]

Area Definitions

-blit:0x150.0x3fff
-bdata:0.0xff
-rwh:SSCParmBlk:0xf7.0xff

