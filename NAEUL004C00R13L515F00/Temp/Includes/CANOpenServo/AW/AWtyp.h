/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_95_
#define _BUR_1704680534_95_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eAWAction
{	AWActIdle,
	AWActGoWidth,
	AWActFullHm,
	AWActPwrOn,
	AWActPwrOff,
	AWActHoming,
	AWActMovAbs,
	AWActMovRel,
	AWActJogOpen,
	AWActJogClose,
	AWActJogStop,
	AWActRstAxisErr,
	AWActStop,
	AWActSDOWrite,
	AWActBGStartModOKChk,
	AWActBGStopModOKChk,
	AWActGoWidthOff,
	AWActRstNode
} eAWAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/AW/AW.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_95_ */

