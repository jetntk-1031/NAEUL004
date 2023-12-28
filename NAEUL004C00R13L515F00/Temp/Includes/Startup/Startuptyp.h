/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726037_5_
#define _BUR_1703726037_5_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eStartupAction
{	StartupActIdle,
	StartupActRun
} eStartupAction;

typedef enum eStartupStep
{	StartupStepUsrFolder,
	StartupStepParameter,
	StartupStepGetHWInfo,
	StartupStepLibVer,
	StartupStepRecipe,
	StartupStepAutoRcp,
	StartupStepUsrMgmt,
	StartupStepBffr,
	StartupStepAlarm,
	StartupStepHermes,
	StartupStepSDOWrite,
	StartupStepSetupUI,
	StartupStepDone
} eStartupStep;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726037_5_ */

