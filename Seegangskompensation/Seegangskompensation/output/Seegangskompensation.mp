Project:      output/Seegangskompensation
Build Number: 0
Date:         Thu Dec 19 11:38:06 2013
Compiler:     ICCM8C
Version:      7.05.00


Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                             lit   0150   0063 =     99. bytes (rel,con,rom,lit)

       Addr  Global Symbol
      -----  --------------------------------
       0159  LoadConfigTBL_seegangskompensation_Bank0
       018A  LoadConfigTBL_seegangskompensation_Bank1
       01B3  __lit_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     psoc_config   01B3   0138 =    312. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       01B3  LoadConfigTBL_seegangskompensation_Ordered
       0278  _LoadConfigInit
       0278  LoadConfigInit
       0294  _LoadConfig_seegangskompensation
       0294  LoadConfig_seegangskompensation
       02EB  __psoc_config_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                     UserModules   02EB   057E =   1406. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       02EB  _PWM8_1_ISR
       02EC  PWM8_1_EnableInt
       02EC  _PWM8_1_EnableInt
       02F0  _PWM8_1_DisableInt
       02F0  PWM8_1_DisableInt
       02F4  PWM8_1_Start
       02F4  _PWM8_1_Start
       02F8  PWM8_1_Stop
       02F8  _PWM8_1_Stop
       02FC  _PWM8_1_WritePeriod
       02FC  PWM8_1_WritePeriod
       02FF  _PWM8_1_WritePulseWidth
       02FF  PWM8_1_WritePulseWidth
       0302  bPWM8_1_ReadPulseWidth
       0302  _bPWM8_1_ReadPulseWidth
       0302  _PWM8_1_bReadPulseWidth
       0302  PWM8_1_bReadPulseWidth
       0305  PWM8_1_bReadCounter
       0305  bPWM8_1_ReadCounter
       0305  _bPWM8_1_ReadCounter
       0305  _PWM8_1_bReadCounter
       032E  _LCD_1_PrCString
       032E  LCD_1_PrCString
       0340  LCD_1_HEX_STR
       0350  LCD_1_PrHexByte
       0350  _LCD_1_PrHexByte
       0363  _LCD_1_PrHexInt
       0363  LCD_1_PrHexInt
       036A  _LCD_1_PrString
       036A  LCD_1_PrString
       0374  _LCD_1_Write_Data
       0374  _LCD_1_WriteData
       0374  LCD_1_WriteData
       0374  LCD_1_Write_Data
       0388  LCD_1_Control
       0388  _LCD_1_Control
       042F  _LCD_1_Start
       042F  LCD_1_Init
       042F  _LCD_1_Init
       042F  LCD_1_Start
       049B  LCD_1_ROW_OFFSET
       049F  LCD_1_Position
       049F  _LCD_1_Position
       04AB  _LCD_1_Delay50uTimes
       04AB  LCD_1_Delay50uTimes
       04B1  LCD_1_Delay50u_Table
       04B9  LCD_1_Delay50u
       04B9  _LCD_1_Delay50u
       04CD  IN2_On
       04CD  _IN2_On
       04D1  _IN2_Stop
       04D1  IN2_Off
       04D1  _IN2_Start
       04D1  IN2_Stop
       04D1  IN2_Start
       04D1  _IN2_Off
       04D3  _IN2_Switch
       04D3  IN2_Switch
       04E4  IN2_Invert
       04E4  _IN2_Invert
       04EC  _IN2_GetState
       04EC  IN2_GetState
       04F6  IN1_On
       04F6  _IN1_On
       04FA  _IN1_Off
       04FA  _IN1_Stop
       04FA  _IN1_Start
       04FA  IN1_Stop
       04FA  IN1_Off
       04FA  IN1_Start
       04FC  IN1_Switch
       04FC  _IN1_Switch
       050D  IN1_Invert
       050D  _IN1_Invert
       0515  IN1_GetState
       0515  _IN1_GetState
       051F  I2Cm_Start
       051F  _I2Cm_Start
       0540  I2Cm_Stop
       0540  _I2Cm_Stop
       0541  _I2Cm_fReadBytes
       058A  I2Cm_fReadBytes
       05CE  _I2Cm_bWriteBytes
       060B  I2Cm_bWriteBytes
       0643  _I2Cm_bWriteCBytes
       0683  I2Cm_bWriteCBytes
       06C0  _I2Cm_fSendRepeatStart
       06C0  I2Cm_fSendRepeatStart
       06F3  I2Cm_fSendStart
       06F3  _I2Cm_fSendStart
       0724  _I2Cm_fWrite
       0724  I2Cm_fWrite
       07A3  _I2Cm_bRead
       07A3  I2Cm_bRead
       0836  I2Cm_SendStop
       0836  _I2Cm_SendStop
       0869  __UserModules_end

Area                               Addr   Size   Decimal Bytes (Attributes)
--------------------------------   ----   ----   ------- ----- ------------
                            text   0869   0222 =    546. bytes (rel,con,rom,code)

       Addr  Global Symbol
      -----  --------------------------------
       0869  _main
       0869  __text_start
       0887  _Initalisierung
       089B  _LCDansteuern
       08D6  PSoC_GPIO_ISR
       090E  _itoa
       0A8B  __text_end

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

