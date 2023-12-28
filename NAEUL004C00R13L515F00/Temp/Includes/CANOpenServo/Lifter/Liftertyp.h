/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_60_
#define _BUR_1703660020_60_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eLifterAction
{	LifterActIdle,
	LifterActGoAPos,
	LifterActGoBPos,
	LifterActGoCPos,
	LifterActGoDPos,
	LifterActGoEPos,
	LifterActGoFPos,
	LifterActGoGPos,
	LifterActGoHPos,
	LifterActGoASltPos,
	LifterActGoNxtASltPos,
	LifterActGoPrevASltPos,
	LifterActGoBSltPos,
	LifterActGoNxtBSltPos,
	LifterActGoPrevBSltPos,
	LifterActGoCSltPos,
	LifterActGoNxtCSltPos,
	LifterActGoPrevCSltPos,
	LifterActGoDSltPos,
	LifterActGoNxtDSltPos,
	LifterActGoPrevDSltPos,
	LifterActFullHm,
	LifterActPwrOn,
	LifterActPwrOff,
	LifterActHoming,
	LifterActMovAbs,
	LifterActMovRel,
	LifterActJogUp,
	LifterActJogDown,
	LifterActJogStop,
	LifterActRstAxisErr,
	LifterActStop,
	LifterActSDOWrite,
	LifterActBGStartModOKChk,
	LifterActBGStopModOKChk,
	LifterActFullMovRel,
	LifterActRstNode
} eLifterAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/CANOpenServo/Lifter/Lifter.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_60_ */

