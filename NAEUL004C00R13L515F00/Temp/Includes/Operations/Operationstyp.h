/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225409_128_
#define _BUR_1701225409_128_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eOperationsAction
{	OperationsActIdle,
	OperationsActStart,
	OperationsActStop,
	OperationsActStep,
	OperationsActError
} eOperationsAction;

typedef enum eOperationsStatus
{	OperationsStatusRun,
	OperationsStatusStop,
	OperationsStatusCycleStopping,
	OperationsStatusStep
} eOperationsStatus;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/Operations.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225409_128_ */

