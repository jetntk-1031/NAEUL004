/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680538_437_
#define _BUR_1704680538_437_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbShutterExtDlyTm;
_BUR_LOCAL enum eSimuRunStep eSimuGotoStep;
_BUR_LOCAL enum eSimuRunStep eSimuStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL enum eFBStatus eOutShutt3Status;
_BUR_LOCAL enum ePneuAction eOutShutt3Stat;
_BUR_LOCAL enum eFBStatus eOutShuttStatus;
_BUR_LOCAL enum ePneuAction eOutShuttStat;
_BUR_LOCAL enum eFBStatus eOutShutt2Status;
_BUR_LOCAL enum ePneuAction eOutShutt2Stat;
_BUR_LOCAL enum eFBStatus eInShutt1Status;
_BUR_LOCAL enum ePneuAction eInShutt1Stat;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum ePneuAction eOutShutterAct3;
_BUR_LOCAL enum ePneuAction eOutShutterAct2;
_BUR_LOCAL enum ePneuAction eOutShutterAct;
_BUR_LOCAL enum ePneuAction eInShutterAct;
_BUR_LOCAL enum eMtrPshrAction ePshrAct;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Simulation/Simu1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680538_437_ */

