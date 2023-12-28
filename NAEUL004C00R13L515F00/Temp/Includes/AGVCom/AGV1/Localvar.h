/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_297_
#define _BUR_1703660021_297_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bAIVInPos;
_BUR_LOCAL plcbit bAIVAuto;
_BUR_LOCAL plcbit bAIVOccupied;
_BUR_LOCAL plcbit bMagConvOccupied;
_BUR_LOCAL plcbit bMagConvAuto;
_BUR_LOCAL plcbit bMagConvRdy;
_BUR_LOCAL plcbit bMagConvRun;
_BUR_LOCAL struct TON fbCheckErrorTim;
_BUR_LOCAL enum eAGVMagAction eStatOld;
_BUR_LOCAL struct F_TRIG fbMagOutTrig;
_BUR_LOCAL struct TON fbTxOutTimer;
_BUR_LOCAL struct TON fbTxInTimer;
_BUR_LOCAL struct TON fbInPosErrTimer;
_BUR_LOCAL struct TON fbMagFullTm;
_BUR_LOCAL plcbit bAGVInPosSen;
_BUR_LOCAL plcbit bEndSen;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL struct tyTagAGVToDTMag tyAGVToDTMag;
_BUR_LOCAL plcbit bNtParamAGVInPosSenPrep;
_BUR_LOCAL plcbit bAGVInPosSen2;
_BUR_LOCAL plcbit bAGVInPosSen1;
_BUR_LOCAL plcbit bMagConvMtrOut;
_BUR_LOCAL plcbit bMagConvMtrIn;
_BUR_LOCAL plcbit bMagConvRgtSen;
_BUR_LOCAL plcbit bMagConvLftSen;
_BUR_LOCAL plcbit bBufferMagPresent;
_BUR_LOCAL enum eConvDir eDirection;
_BUR_LOCAL signed long diTxOutTimeOut;
_BUR_LOCAL signed long diTxInTimeOut;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bMagExit;
_BUR_LOCAL plcbit bMagEnt;
_BUR_LOCAL plcbit bRdyExit;
_BUR_LOCAL plcbit bRdyEnt;
_BUR_LOCAL plcbit bMcRunRdy;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][101];
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eAGVMagAction eStat;
_BUR_LOCAL enum eAGVMagAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_297_ */

