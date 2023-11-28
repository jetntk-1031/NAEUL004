/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_103_
#define _BUR_1701136544_103_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagAWAction
{	MagAWActIdle,
	MagAWActGoWidth,
	MagAWActFullHm,
	MagAWActPwrOn,
	MagAWActPwrOff,
	MagAWActHoming,
	MagAWActMovAbs,
	MagAWActMovRel,
	MagAWActJogOpen,
	MagAWActJogClose,
	MagAWActJogStop,
	MagAWActRstAxisErr,
	MagAWActStop,
	MagAWActSDOWrite,
	MagAWActBGStartModOKChk,
	MagAWActBGStopModOKChk,
	MagAWActGoWidthOff,
	MagAWActEngage,
	MagAWActEngageStop,
	MagAWActRstNode
} eMagAWAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/MagAW/MagAW.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_103_ */

