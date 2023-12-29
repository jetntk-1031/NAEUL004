/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_180_
#define _BUR_1703817513_180_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bMag2ConvMtrOut;
_BUR_LOCAL plcbit bMag2ConvMtrIn;
_BUR_LOCAL plcbit bMag1ConvMtrOut;
_BUR_LOCAL plcbit bMag1ConvMtrIn;
_BUR_LOCAL plcbit bMag2FixedClampCtrl;
_BUR_LOCAL plcbit bMag1FixedClampCtrl;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct TON fbRmtClpExtChkTm;
_BUR_LOCAL struct TON fbFixClpExtChkTm;
_BUR_LOCAL struct TON fbLeftSenDelayTm;
_BUR_LOCAL struct TON fbWidthChk;
_BUR_LOCAL struct TON fbSmallLargeSenDlyTm;
_BUR_LOCAL struct TON fbClprDlyTm;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbRmtClprUnclampChk;
_BUR_LOCAL struct TON fbFixClprDly;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbRmtClprClampChk;
_BUR_LOCAL struct fbPneuExtRetSenRetChk fbFixClprUnclampChk;
_BUR_LOCAL struct fbPneuExtRetSenExtChk fbFixClprClampChk;
_BUR_LOCAL struct fbConvMtrOff fbStop;
_BUR_LOCAL struct fbConvSenToSenOff1 fbExit1;
_BUR_LOCAL struct fbConvSenToSenOff fbExit;
_BUR_LOCAL struct fbConvSenToSenTm fbPreExit;
_BUR_LOCAL struct fbConvSenToSen fbEnt;
_BUR_LOCAL struct fbConvSenToSenTm fbInit;
_BUR_LOCAL enum eMagConv2ClpAction eStatOld;
_BUR_LOCAL unsigned char usiSubStep;
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
_BUR_LOCAL plcbit bWidthChkPrep;
_BUR_LOCAL plcbit bRmtClprUnclampSafetySen;
_BUR_LOCAL plcbit bRmtClprClampSafetySen;
_BUR_LOCAL plcbit bRmtClprUnclampSen;
_BUR_LOCAL plcbit bRmtClprClampSen;
_BUR_LOCAL plcbit bFixClprUnclampSafetySen;
_BUR_LOCAL plcbit bFixClprClampSafetySen;
_BUR_LOCAL plcbit bFixClprUnclampSen;
_BUR_LOCAL plcbit bFixClprClampSen;
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
_BUR_LOCAL plcbit bRmtClprClampCtrl;
_BUR_LOCAL plcbit bFixClprClampCtrl;
_BUR_LOCAL plcbit bMtrDirOrRToL;
_BUR_LOCAL plcbit bMtrSigOnOrLToR;
_BUR_LOCAL plcbit bHvMag;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eMagConv2ClpAction eAct;
_BUR_LOCAL struct tyMagConv2Clp tylocalMagConv2Clp;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/MagConv_LiftnTrav/MagConv2Clp1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtPneu/NtPneu.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtConv/NtConv.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_180_ */

