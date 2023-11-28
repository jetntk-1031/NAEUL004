/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_144_
#define _BUR_1701136544_144_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eMagConvStprRunStep
{	MagConvStprStepNA,
	MagConvStprStepInit,
	MagConvStprStepChkCond,
	MagConvStprStepBtmLiftMagEnt,
	MagConvStprStepBtmLiftMagExit,
	MagConvStprStepTopLiftMagEnt,
	MagConvStprStepTopLiftMagExit,
	MagConvStprStepTopMagConvEnter,
	MagConvStprStepTopMagConvEnterD,
	MagConvStprStepBtmMagConvExit,
	MagConvStprStepDone,
	MagConvStprStepInitDone,
	MagConvStprStepBtmMagExitMnl
} eMagConvStprRunStep;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_144_ */

