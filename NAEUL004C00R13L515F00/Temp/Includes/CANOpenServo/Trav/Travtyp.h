/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_58_
#define _BUR_1703660020_58_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eTravAction
{	TravActIdle,
	TravActGoAPos,
	TravActGoBPos,
	TravActGoCPos,
	TravActGoDPos,
	TravActGoEPos,
	TravActGoFPos,
	TravActGoGPos,
	TravActGoHPos,
	TravActFullHm,
	TravActPwrOn,
	TravActPwrOff,
	TravActHoming,
	TravActMovAbs,
	TravActMovRel,
	TravActJogFront,
	TravActJogRear,
	TravActJogStop,
	TravActRstAxisErr,
	TravActStop,
	TravActSDOWrite,
	TravActBGStartModOKChk,
	TravActBGStopModOKChk,
	TravActRstNode
} eTravAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Trav/Trav.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_58_ */

