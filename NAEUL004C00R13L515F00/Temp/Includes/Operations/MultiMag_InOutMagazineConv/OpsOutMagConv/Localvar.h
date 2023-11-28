/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_467_
#define _BUR_1701136131_467_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL enum eOutMagConvStep eGotoStep1;
_BUR_LOCAL enum eOutMagConvStep eOpsStep1;
_BUR_LOCAL enum eOutMagConvStep eGotoStep;
_BUR_LOCAL enum eOutMagConvStep eOpsStep;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL struct TON fbMagToRmv2;
_BUR_LOCAL struct TON fbMagToRmv;
_BUR_LOCAL plcbit bOpsMnlUnloadMag;
_BUR_LOCAL plcbit bExitSig2;
_BUR_LOCAL plcbit bExitSig;
_BUR_LOCAL plcbit bExtSen2;
_BUR_LOCAL plcbit bMidSen2;
_BUR_LOCAL plcbit bEntSen2;
_BUR_LOCAL plcbit bExtSen;
_BUR_LOCAL plcbit bMidSen;
_BUR_LOCAL plcbit bEntSen;
_BUR_LOCAL plcbit bStepEntMag2;
_BUR_LOCAL plcbit bStepEntMag;
_BUR_LOCAL enum eFBStatus eOutMagConv2Status;
_BUR_LOCAL enum eMagConvAction eOutMagConv2Stat;
_BUR_LOCAL enum eFBStatus eOutMagConvStatus;
_BUR_LOCAL enum eMagConvAction eOutMagConvStat;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum eSOTAction eDSSOTAct2;
_BUR_LOCAL enum eSOTAction eDSSOTAct;
_BUR_LOCAL enum eMagConvAction eOutMagConv2Act;
_BUR_LOCAL enum eMagConvAction eOutMagConvAct;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl2;
_BUR_LOCAL plcbit bStepExitMag2;
_BUR_LOCAL plcbit bStepEnterMidMag2;
_BUR_LOCAL plcbit bStepEnterMag2;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bStepWaitMagToRmvMnl;
_BUR_LOCAL plcbit bStepExitMag;
_BUR_LOCAL plcbit bStepEnterMidMag;
_BUR_LOCAL plcbit bStepEnterMag;
_BUR_LOCAL plcbit bStepInitDone;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt1[81];
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
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsOutMagConv/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_467_ */

