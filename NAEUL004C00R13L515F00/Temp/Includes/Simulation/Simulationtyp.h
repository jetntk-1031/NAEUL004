/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680534_152_
#define _BUR_1704680534_152_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eSimulationsAction
{	SimulationsActIdle,
	SimulationsActStart,
	SimulationsActStop,
	SimulationsActStep,
	SimulationsActError
} eSimulationsAction;

typedef enum eSimulationsStatus
{	SimulationsStatusRun,
	SimulationsStatusStop,
	SimulationsStatusCycleStopping,
	SimulationsStatusStep
} eSimulationsStatus;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simulation.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680534_152_ */

