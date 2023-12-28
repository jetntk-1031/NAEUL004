/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_177_
#define _BUR_1703660021_177_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL enum eSMEMAAction eStatOld;
_BUR_LOCAL struct fbSMEMASigInChk fbSigInChk;
_BUR_LOCAL struct fbSMEMADS fbSMEMA;
_BUR_LOCAL struct fbSMEMADS_OppFirst fbSMEMA_OppFirst;
_BUR_LOCAL struct R_TRIG fbTimeTrig;
_BUR_LOCAL struct TON fbTimerDlyTm;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL struct tyDSSMEMA tylocalDSSMEMA;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SMEMA/DSSMEMA2/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSMEMA/NtSMEMA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_177_ */

