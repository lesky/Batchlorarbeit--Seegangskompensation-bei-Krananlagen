//*****************************************************************************
//*****************************************************************************
//  FILENAME: DIGITALOUT.h
//   Version: 1.40, Updated on 2013/5/19 at 10:43:48                                          
//  Generated by PSoC Designer 5.4.2946
//
//  DESCRIPTION: DIGITALOUT User Module C Language interface file
//-----------------------------------------------------------------------------
//  Copyright (c) Cypress Semiconductor 2013. All Rights Reserved.
//*****************************************************************************
//*****************************************************************************
#ifndef DIGITALOUT_INCLUDE
#define DIGITALOUT_INCLUDE

#include <m8c.h>


/* Create pragmas to support proper argument and return value passing */
#pragma fastcall16  DIGITALOUT_Stop
#pragma fastcall16  DIGITALOUT_Start
#pragma fastcall16  DIGITALOUT_On
#pragma fastcall16  DIGITALOUT_Off
#pragma fastcall16  DIGITALOUT_Switch
#pragma fastcall16  DIGITALOUT_Invert
#pragma fastcall16  DIGITALOUT_GetState


//-------------------------------------------------
// Constants for DIGITALOUT API's.
//-------------------------------------------------
//
#define  DIGITALOUT_ON   1
#define  DIGITALOUT_OFF  0

//-------------------------------------------------
// Prototypes of the DIGITALOUT API.
//-------------------------------------------------
extern void  DIGITALOUT_Start(void);                                     
extern void  DIGITALOUT_Stop(void);                                      
extern void  DIGITALOUT_On(void);                                      
extern void  DIGITALOUT_Off(void);                                      
extern void  DIGITALOUT_Switch(BYTE bSwitch);
extern void  DIGITALOUT_Invert(void);                                         
extern BYTE  DIGITALOUT_GetState(void);                                         

//-------------------------------------------------
// Define global variables.                 
//-------------------------------------------------



#endif
