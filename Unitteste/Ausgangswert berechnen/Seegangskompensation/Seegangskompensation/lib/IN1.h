//*****************************************************************************
//*****************************************************************************
//  FILENAME: IN1.h
//   Version: 1.40, Updated on 2013/5/19 at 10:43:48                                          
//  Generated by PSoC Designer 5.4.2946
//
//  DESCRIPTION: IN1 User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef IN1_INCLUDE
#define IN1_INCLUDE

#include <m8c.h>


/* Create pragmas to support proper argument and return value passing */
#pragma fastcall16  IN1_Stop
#pragma fastcall16  IN1_Start
#pragma fastcall16  IN1_On
#pragma fastcall16  IN1_Off
#pragma fastcall16  IN1_Switch
#pragma fastcall16  IN1_Invert
#pragma fastcall16  IN1_GetState


//-------------------------------------------------
// Constants for IN1 API's.
//-------------------------------------------------
//
#define  IN1_ON   1
#define  IN1_OFF  0

//-------------------------------------------------
// Prototypes of the IN1 API.
//-------------------------------------------------
extern void  IN1_Start(void);                                     
extern void  IN1_Stop(void);                                      
extern void  IN1_On(void);                                      
extern void  IN1_Off(void);                                      
extern void  IN1_Switch(BYTE bSwitch);
extern void  IN1_Invert(void);                                         
extern BYTE  IN1_GetState(void);                                         

//-------------------------------------------------
// Define global variables.                 
//-------------------------------------------------



#endif
