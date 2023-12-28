/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726037_44_
#define _BUR_1703726037_44_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eSMEMAAction
{	SMEMAActIdle,
	SMEMAActRun,
	SMEMAActSetSig,
	SMEMAActSetStatSig,
	SMEMAActRstSig,
	SMEMAActRstStatSig,
	SMEMAActSetAllSig,
	SMEMAActRstAllSig
} eSMEMAAction;

typedef enum eSMEMASelection
{	SMEMASelStandard,
	SMEMASelIPC9851,
	SMEMASelIPC9851Ext
} eSMEMASelection;

typedef struct tySMEMAParam
{	enum eSMEMASelection eSelection;
	plcbit bStatSigSetGd;
} tySMEMAParam;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/SMEMA.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726037_44_ */

