/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817866_3_
#define _BUR_1703817866_3_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL enum eSOTAction eStatOld;
_BUR_LOCAL struct fbSOTSigInChk fbSigInChk;
_BUR_LOCAL struct fbSOTUS fbSOT;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eSOTAction eAct;
_BUR_LOCAL struct tyUSSOT tylocalUSSOT;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SOT/USSOT1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/NtSOT.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817866_3_ */

