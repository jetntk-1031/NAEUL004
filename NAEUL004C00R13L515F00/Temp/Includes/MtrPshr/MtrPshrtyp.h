/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225409_166_
#define _BUR_1701225409_166_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMtrPshrAction
{	MtrPshrActIdle,
	MtrPshrActExt,
	MtrPshrActRet,
	MtrPshrActStop,
	MtrPshrActSetExt,
	MtrPshrActRstExt,
	MtrPshrActSetRet,
	MtrPshrActRstRet,
	MtrPshrActSetSpdBit0,
	MtrPshrActRstSpdBit0,
	MtrPshrActSetSpdBit1,
	MtrPshrActRstSpdBit1,
	MtrPshrActSetSpdBit2,
	MtrPshrActRstSpdBit2,
	MtrPshrActSetSigOn,
	MtrPshrActRstSigOn,
	MtrPshrActSetBrake,
	MtrPshrActRstBrake,
	MtrPshrActSetAlmRst,
	MtrPshrActRstAlmRst,
	MtrPshrActSetAll,
	MtrPshrActRstAll
} eMtrPshrAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225409_166_ */

