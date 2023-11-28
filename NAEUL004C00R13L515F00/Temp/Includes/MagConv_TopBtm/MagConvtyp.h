/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_85_
#define _BUR_1701136544_85_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagConvAction
{	MagConvActIdle,
	MagConvActInit,
	MagConvActInitStopClp,
	MagConvActInitClpStop,
	MagConvActEnt,
	MagConvActEntStopClp,
	MagConvActEntClpStop,
	MagConvActPreExit,
	MagConvActPreExitClpr,
	MagConvActExit,
	MagConvActExit1,
	MagConvActExitClpr,
	MagConvActExit1Clpr,
	MagConvActClprSetAll,
	MagConvActClprRstAll,
	MagConvActClprSetClamp,
	MagConvActClprSetUnclamp,
	MagConvActClprClamp,
	MagConvActClprUnclamp,
	MagConvActStop,
	MagConvActStopClpr,
	MagConvActSetMtrSigOnOrLToR,
	MagConvActSetMtrDirOrRToL,
	MagConvActRstMtrSigOnOrLToR,
	MagConvActRstMtrDirOrRToL,
	MagConvActSetMtrAll,
	MagConvActRstMtrAll
} eMagConvAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/MagConv.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_85_ */

