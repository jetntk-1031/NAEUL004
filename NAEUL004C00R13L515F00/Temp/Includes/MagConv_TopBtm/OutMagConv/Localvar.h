/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_359_
#define _BUR_1701136131_359_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbClprDlyTm;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbClprUnclampChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbClprClampChk;
_BUR_LOCAL struct fbConvMtrOff fbStop;
_BUR_LOCAL struct fbConvSenToSenOff1 fbExit1;
_BUR_LOCAL struct fbConvSenToSenOff fbExit;
_BUR_LOCAL struct fbConvSenToSenTm fbPreExit;
_BUR_LOCAL struct fbConvSenToSen fbEnt;
_BUR_LOCAL struct fbConvSenToSenTm fbInit;
_BUR_LOCAL enum eMagConvAction eStatOld;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bReachEnd;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plctime tClprUnclampTO;
_BUR_LOCAL plctime tClprClampTO;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bClprUnclampSafetySen;
_BUR_LOCAL plcbit bClprClampSafetySen;
_BUR_LOCAL plcbit bClprUnclampSen;
_BUR_LOCAL plcbit bClprClampSen;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL enum eConvDir eDirection;
_BUR_LOCAL signed long diTxOutTimeOut;
_BUR_LOCAL signed long diTxInTimeOut;
_BUR_LOCAL plctime tMtrOffDlyTm;
_BUR_LOCAL signed long diInitTm;
_BUR_LOCAL plcbit bOnDirMod;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bClprTwoOutputControl;
_BUR_LOCAL plcbit bClprClampCtrl;
_BUR_LOCAL plcbit bMtrDirOrRToL;
_BUR_LOCAL plcbit bMtrSigOnOrLToR;
_BUR_LOCAL plcbit bHvMag;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eMagConvAction eStat;
_BUR_LOCAL enum eMagConvAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_TopBtm/OutMagConv/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/NtConv.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_359_ */

