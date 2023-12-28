/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_288_
#define _BUR_1703660021_288_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbTopMidChkDlyTm;
_BUR_LOCAL struct TON fbMidChkDlyTm;
_BUR_LOCAL enum eMagConvStprRunStep eGotoOpsStep2;
_BUR_LOCAL enum eMagConvStprRunStep eOpsStep2;
_BUR_LOCAL enum eMagConvStprRunStep eGotoOpsStep1;
_BUR_LOCAL enum eMagConvStprRunStep eOpsStep1;
_BUR_LOCAL enum eMagConvStprRunStep eGotoOpsStep;
_BUR_LOCAL enum eMagConvStprRunStep eOpsStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bExitSig;
_BUR_LOCAL plcbit bEnterSig;
_BUR_LOCAL plcbit bBtmExitMnl;
_BUR_LOCAL plcbit bBtmExitFromMagConv;
_BUR_LOCAL plcbit bTopEntFromMagConv;
_BUR_LOCAL plcbit bTopExitFromLift;
_BUR_LOCAL plcbit bTopEntToLift;
_BUR_LOCAL plcbit bBtmExitFromLift;
_BUR_LOCAL plcbit bBtmEntToLift;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bMagPresentSen;
_BUR_LOCAL plcbit bTopMagConvEndSen;
_BUR_LOCAL plcbit bBtmMagConvEndSen;
_BUR_LOCAL plcbit bBtmMagConvMidSen;
_BUR_LOCAL plcbit bTopMagConvMidSen;
_BUR_LOCAL plcbit bTopMagConvZ1Sen;
_BUR_LOCAL plcbit bBtmMagConvZ1Sen;
_BUR_LOCAL plcbit bLiftTopPos;
_BUR_LOCAL plcbit bLiftBtmPos;
_BUR_LOCAL enum eFBStatus eStprTopExitStatus;
_BUR_LOCAL enum ePneuAction eStprTopExitStat;
_BUR_LOCAL enum eFBStatus eStprTopMidStatus;
_BUR_LOCAL enum ePneuAction eStprTopMidStat;
_BUR_LOCAL enum eFBStatus eStprTopEntStatus;
_BUR_LOCAL enum ePneuAction eStprTopEntStat;
_BUR_LOCAL enum ePneuAction eStprBtmExitStat;
_BUR_LOCAL enum eFBStatus eStprBtmExitStatus;
_BUR_LOCAL enum eFBStatus eStprBtmMidStatus;
_BUR_LOCAL enum ePneuAction eStprBtmMidStat;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum ePneuAction eLiftMagConvAct;
_BUR_LOCAL enum ePneuAction eStprTopExitAct;
_BUR_LOCAL enum ePneuAction eStprTopMidAct;
_BUR_LOCAL enum ePneuAction eStprTopEntAct;
_BUR_LOCAL enum ePneuAction eStprBtmExitAct;
_BUR_LOCAL enum ePneuAction eStprBtmMidAct;
_BUR_LOCAL enum ePneuAction eStprBtmEntAct;
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
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsMagConvStpr/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_288_ */

