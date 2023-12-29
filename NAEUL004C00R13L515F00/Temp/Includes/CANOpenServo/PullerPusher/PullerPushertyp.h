/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837633_108_
#define _BUR_1703837633_108_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum ePullerPusherAction
{	PPActIdle,
	PPActGoWidth,
	PPActFullHm,
	PPActPwrOn,
	PPActPwrOff,
	PPActHoming,
	PPActMovAbs,
	PPActMovRel,
	PPActJogOpen,
	PPActJogClose,
	PPActJogStop,
	PPActRstAxisErr,
	PPActStop,
	PPActSDOWrite,
	PPActBGStartModOKChk,
	PPActBGStopModOKChk,
	PPActGoWidthOff,
	PPActRstNode
} ePullerPusherAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/PullerPusher/PullerPusher.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837633_108_ */

