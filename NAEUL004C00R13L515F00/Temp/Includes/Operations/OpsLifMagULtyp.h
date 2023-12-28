/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_92_
#define _BUR_1703660020_92_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eLifMagULStep
{	LifMagULStepNA,
	LifMagULStepMag1ConvInit,
	LifMagULStepMag2ConvInit,
	LifMagULStepInitLif,
	LifMagULStepMagCmp,
	LifMagULStepNxtLoadBffr,
	LifMagULStepLifMov,
	LifMagULStepBffrUSComm,
	LifMagULStepBffrEntBrd,
	LifMagULStepLoadBffr,
	LifMagULStepLifMovUnload,
	LifMagULStepUnload,
	LifMagULStepStandby,
	LiftMagConvInit,
	LiftMagConvIdle,
	LiftMagLifterLoad,
	LiftMagLifterUnload,
	LiftMagConvIN,
	LiftMagConvOUT
} eLifMagULStep;

typedef enum eLifMagULMagNxtLoad
{	MagNxtLoadInvalid,
	MagNxtLoadMag1,
	MagNxtLoadMag2,
	MagNxtLoadMag3
} eLifMagULMagNxtLoad;

typedef enum eLifterConvStatus
{	LifterNA = 0,
	LifterLoadPos = 1,
	LifterLoadRdyTrans = 2,
	LifterMagInProgress = 3,
	LifterUnloadPos = 4,
	LifterUnloadRdyTrans = 5
} eLifterConvStatus;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_92_ */

