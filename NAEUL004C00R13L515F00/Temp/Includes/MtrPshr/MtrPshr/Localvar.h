/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_329_
#define _BUR_1703660021_329_

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
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bTorqueSig;
_BUR_LOCAL plcbit bAlarmSig;
_BUR_LOCAL plcbit bRetSafetySen;
_BUR_LOCAL plcbit bExtSafetySen;
_BUR_LOCAL plcbit bRetSlowSen;
_BUR_LOCAL plcbit bExtSlowSen;
_BUR_LOCAL plcbit bRetSen;
_BUR_LOCAL plcbit bExtSen;
_BUR_LOCAL signed long diStartTorque;
_BUR_LOCAL signed long diRetTorque;
_BUR_LOCAL signed long diExtTorque;
_BUR_LOCAL signed long diRetNomSpd;
_BUR_LOCAL signed long diExtNomSpd;
_BUR_LOCAL signed long diRetSlowSpd;
_BUR_LOCAL signed long diExtSlowSpd;
_BUR_LOCAL plctime tRetTO;
_BUR_LOCAL plctime tExtTO;
_BUR_LOCAL plctime tMtrBrkOffDlyTm;
_BUR_LOCAL plctime tAlmTrigTm;
_BUR_LOCAL plctime tAlmRstTm;
_BUR_LOCAL plcbit bDir;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bAlmRst;
_BUR_LOCAL plcbit bBrake;
_BUR_LOCAL plcbit bSigOn;
_BUR_LOCAL plcbit bSpdBinBit2;
_BUR_LOCAL plcbit bSpdBinBit1;
_BUR_LOCAL plcbit bSpdBinBit0;
_BUR_LOCAL plcbit bCCW;
_BUR_LOCAL plcbit bCW;
_BUR_LOCAL plcbit bRetracted;
_BUR_LOCAL plcbit bExtended;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[200];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[61][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eMtrPshrAction eStat;
_BUR_LOCAL enum eMtrPshrAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MtrPshr/MtrPshr/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_329_ */

