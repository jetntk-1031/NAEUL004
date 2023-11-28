/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136544_119_
#define _BUR_1701136544_119_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eLFAction
{	LFActIdle,
	LFActBGStartRun,
	LFActBGStopRun,
	LFActSyncPLCTm,
	LFActChgAllAuto,
	LFActChgAllMnl,
	LFActChgSeqAuto,
	LFActChgSeqMnl
} eLFAction;

typedef enum eLFOPCUAStep
{	LFOPCUAStepIncCntr,
	LFOPCUAStepChkHdls,
	LFOPCUAStepConnect,
	LFOPCUAStepWriteHdls,
	LFOPCUAStepReadHdls,
	LFOPCUAStepWrite,
	LFOPCUAStepRead,
	LFOPCUAStepStopChk
} eLFOPCUAStep;

typedef struct tyOPCUAHdlList
{	plcdword a_dwHdls[64];
} tyOPCUAHdlList;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/LF/LF.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/Libraries/AsOpcUac/AsOpcUac.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136544_119_ */

