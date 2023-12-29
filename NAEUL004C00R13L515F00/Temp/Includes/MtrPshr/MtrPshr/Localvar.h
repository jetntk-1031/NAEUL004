/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_184_
#define _BUR_1703817513_184_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbMtrPshrRetChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbMtrPshrExtChk;
_BUR_LOCAL struct TON fbMtrBrkOffDlyTm;
_BUR_LOCAL struct TON fbAlmTrigTm;
_BUR_LOCAL struct TON fbAlmRstTm;
_BUR_LOCAL plcbit bMtrSpdSlw;
_BUR_LOCAL signed long diMtrSpd;
_BUR_LOCAL signed short iAnalogTorque;
_BUR_LOCAL enum eMtrPshrAction eStatOld;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[61][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL struct tyMtrPshr tylocalMtrPshr;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_184_ */

