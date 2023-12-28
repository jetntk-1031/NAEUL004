/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_185_
#define _BUR_1703660021_185_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bRetSafetySen;
_BUR_LOCAL plcbit bExtSafetySen;
_BUR_LOCAL plcbit bRetSen;
_BUR_LOCAL plcbit bExtSen;
_BUR_LOCAL enum ePneuAction eStatOld;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbPneu2SenRet;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbPneu2SenExt;
_BUR_LOCAL struct fbPneuNoSenRetChk fbPneuNoSenRet;
_BUR_LOCAL struct fbPneuNoSenExtChk fbPneuNoSenExt;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum ePneuAction eAct;
_BUR_LOCAL struct tyPneu tylocalPneu;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Pneu/PneuMag1SafetyBar/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_185_ */

