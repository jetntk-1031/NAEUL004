/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_81_
#define _BUR_1704680534_81_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagConv2ClpAction
{	MagConv2ClpActIdle,
	MagConv2ClpActInit,
	MagConv2ClpActInitStopClp,
	MagConv2ClpActInitClpStop,
	MagConv2ClpActEnt,
	MagConv2ClpActEntStopClp,
	MagConv2ClpActEntClpStop,
	MagConv2ClpActPreExit,
	MagConv2ClpActPreExitClpr,
	MagConv2ClpActPreExitClpr1,
	MagConv2ClpActExit,
	MagConv2ClpActExit1,
	MagConv2ClpActExitClpr,
	MagConv2ClpActExit1Clpr,
	MagConv2ClpActFixClprSetAll,
	MagConv2ClpActFixClprRstAll,
	MagConv2ClpActFixClprSetClamp,
	MagConv2ClpActFixClprSetUnclamp,
	MagConv2ClpActFixClprClamp,
	MagConv2ClpActFixClprUnclamp,
	MagConv2ClpActRmtClprSetAll,
	MagConv2ClpActRmtClprRstAll,
	MagConv2ClpActRmtClprSetClamp,
	MagConv2ClpActRmtClprSetUnclamp,
	MagConv2ClpActRmtClprClamp,
	MagConv2ClpActRmtClprUnclamp,
	MagConv2ClpActStop,
	MagConv2ClpActStopClpr,
	MagConv2ClpActSetMtrSigOnOrLToR,
	MagConv2ClpActSetMtrDirOrRToL,
	MagConv2ClpActRstMtrSigOnOrLToR,
	MagConv2ClpActRstMtrDirOrRToL,
	MagConv2ClpActSetMtrAll,
	MagConv2ClpActRstMtrAll
} eMagConv2ClpAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_81_ */

