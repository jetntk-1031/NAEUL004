/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660020_130_
#define _BUR_1703660020_130_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eOpConAction
{	OpConActIdle,
	OpConActBGStartRun,
	OpConActBGStopRun,
	OpConActDeleteOldLog,
	OpConActCreateDir,
	OpConActWriteRetain,
	OpConActReadRetain,
	OpConActWriteConfig,
	OpConActReadConfig
} eOpConAction;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/OpCon/OpCon.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660020_130_ */

