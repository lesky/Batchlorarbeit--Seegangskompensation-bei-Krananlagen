Project:      output/Seegangskompensation
Build Number: 0
Date:         Thu Dec 19 11:25:43 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   005A =     90. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0150  LoadConfigTBL_seegangskompensation_Bank0
       0181  LoadConfigTBL_seegangskompensation_Bank1
       01AA  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01AA   0138 =    312. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01AA  LoadConfigTBL_seegangskompensation_Ordered
       026F  _LoadConfigInit
       026F  LoadConfigInit
       028B  _LoadConfig_seegangskompensation
       028B  LoadConfig_seegangskompensation
       02E2  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02E2   057E =   1406. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02E2  _PWM8_1_ISR
       02E3  PWM8_1_EnableInt
       02E3  _PWM8_1_EnableInt
       02E7  _PWM8_1_DisableInt
       02E7  PWM8_1_DisableInt
       02EB  PWM8_1_Start
       02EB  _PWM8_1_Start
       02EF  PWM8_1_Stop
       02EF  _PWM8_1_Stop
       02F3  _PWM8_1_WritePeriod
       02F3  PWM8_1_WritePeriod
       02F6  _PWM8_1_WritePulseWidth
       02F6  PWM8_1_WritePulseWidth
       02F9  bPWM8_1_ReadPulseWidth
       02F9  _bPWM8_1_ReadPulseWidth
       02F9  _PWM8_1_bReadPulseWidth
       02F9  PWM8_1_bReadPulseWidth
       02FC  PWM8_1_bReadCounter
       02FC  bPWM8_1_ReadCounter
       02FC  _bPWM8_1_ReadCounter
       02FC  _PWM8_1_bReadCounter
       0325  _LCD_1_PrCString
       0325  LCD_1_PrCString
       0337  LCD_1_HEX_STR
       0347  LCD_1_PrHexByte
       0347  _LCD_1_PrHexByte
       035A  _LCD_1_PrHexInt
       035A  LCD_1_PrHexInt
       0361  _LCD_1_PrString
       0361  LCD_1_PrString
       036B  _LCD_1_Write_Data
       036B  _LCD_1_WriteData
       036B  LCD_1_WriteData
       036B  LCD_1_Write_Data
       037F  LCD_1_Control
       037F  _LCD_1_Control
       0426  _LCD_1_Start
       0426  LCD_1_Init
       0426  _LCD_1_Init
       0426  LCD_1_Start
       0492  LCD_1_ROW_OFFSET
       0496  LCD_1_Position
       0496  _LCD_1_Position
       04A2  _LCD_1_Delay50uTimes
       04A2  LCD_1_Delay50uTimes
       04A8  LCD_1_Delay50u_Table
       04B0  LCD_1_Delay50u
       04B0  _LCD_1_Delay50u
       04C4  IN2_On
       04C4  _IN2_On
       04C8  _IN2_Stop
       04C8  IN2_Off
       04C8  _IN2_Start
       04C8  IN2_Stop
       04C8  IN2_Start
       04C8  _IN2_Off
       04CA  _IN2_Switch
       04CA  IN2_Switch
       04DB  IN2_Invert
       04DB  _IN2_Invert
       04E3  _IN2_GetState
       04E3  IN2_GetState
       04ED  IN1_On
       04ED  _IN1_On
       04F1  _IN1_Off
       04F1  _IN1_Stop
       04F1  _IN1_Start
       04F1  IN1_Stop
       04F1  IN1_Off
       04F1  IN1_Start
       04F3  IN1_Switch
       04F3  _IN1_Switch
       0504  IN1_Invert
       0504  _IN1_Invert
       050C  IN1_GetState
       050C  _IN1_GetState
       0516  I2Cm_Start
       0516  _I2Cm_Start
       0537  I2Cm_Stop
       0537  _I2Cm_Stop
       0538  _I2Cm_fReadBytes
       0581  I2Cm_fReadBytes
       05C5  _I2Cm_bWriteBytes
       0602  I2Cm_bWriteBytes
       063A  _I2Cm_bWriteCBytes
       067A  I2Cm_bWriteCBytes
       06B7  _I2Cm_fSendRepeatStart
       06B7  I2Cm_fSendRepeatStart
       06EA  I2Cm_fSendStart
       06EA  _I2Cm_fSendStart
       071B  _I2Cm_fWrite
       071B  I2Cm_fWrite
       079A  _I2Cm_bRead
       079A  I2Cm_bRead
       082D  I2Cm_SendStop
       082D  _I2Cm_SendStop
       0860  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0860   0019 =     25. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0860  __text_start
       0860  _main
       0864  _Initalisierung
       0878  PSoC_GPIO_ISR
       0879  __text_end

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

