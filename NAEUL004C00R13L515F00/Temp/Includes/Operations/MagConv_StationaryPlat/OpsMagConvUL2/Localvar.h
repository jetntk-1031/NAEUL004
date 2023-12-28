/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703726039_413_
#define _BUR_1703726039_413_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL signed short a_iMagMESAcptCond[3];
#else
/* Variable a_iMagMESAcptCond not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL_RETAIN plcdt dtMagConvAcptTm;
_BUR_LOCAL struct TON fbWriteRFIDTO;
_BUR_LOCAL struct TON fbReadRFIDTO;
_BUR_LOCAL plcbit bReadRFID;
_BUR_LOCAL plcbit bWriteRFID;
_BUR_LOCAL enum eMagConvULStep ePrevStepBeforeMESStdBy;
_BUR_LOCAL plcbit bAutoRcpEn;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bStepOpsPitchUpdated;
_BUR_LOCAL plcbit bStepOpsMagAWDone;
_BUR_LOCAL plcbit bAGVComm2Rdy;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL plcbit bAIVInPos;
_BUR_LOCAL_RETAIN plcbit bManualUnloadMag;
_BUR_LOCAL plcbit bLimitSenActivated;
_BUR_LOCAL plcbit bMagSizeLarge;
_BUR_LOCAL plcbit bWrongWidth;
_BUR_LOCAL plcbit bWrongHeight;
_BUR_LOCAL plcbit bMagAWDone;
_BUR_LOCAL plcbit bIncorrectMagazineModel;
_BUR_LOCAL plcbit bNewMagVerifyStarted;
_BUR_LOCAL plcbit bNewMagVerified;
_BUR_LOCAL plcbit bNewMagAutoDetected;
_BUR_LOCAL struct TON fbEntSenOff;
_BUR_LOCAL struct TON fbVerifyWarningDelay;
_BUR_LOCAL struct TON fbMagRemovedTm;
_BUR_LOCAL struct TON fbMagAutoDetTm;
_BUR_LOCAL struct TON fbWrongMagTm;
_BUR_LOCAL unsigned char usiPrevHcomModchanged;
_BUR_LOCAL plcbit bPneuUnclmpDone;
_BUR_LOCAL plcdt *p_dtLocalBufferMagPresentTm;
_BUR_LOCAL plcbit *p_bLocalBufferMagPresent;
_BUR_LOCAL plcbit *p_bLocalMagEntrySen;
_BUR_LOCAL struct tyBffrStat *p_tyLocalBufferStat;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwSum[3];
#else
/* Variable a_udiMagAllwSum not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwPriority[3];
#else
/* Variable a_udiMagAllwPriority not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL unsigned long a_udiMagAllwMagPresentTm[3];
#else
/* Variable a_udiMagAllwMagPresentTm not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagAllwMagPresent[3];
#else
/* Variable a_bMagAllwMagPresent not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagAllwMagClamped[3];
#else
/* Variable a_bMagAllwMagClamped not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
#else
/* Variable a_tyMagAllwBffrStat not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL unsigned long udiMagAllwGo;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udi1;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL enum eMagConvULStep eGotoOpsStep;
_BUR_LOCAL enum eMagConvULStep eOpsStep;
_BUR_LOCAL_RETAIN enum eMagConvULStep ePrevExitStep;
_BUR_LOCAL_RETAIN plcbit bMagExitedWait;
_BUR_LOCAL_RETAIN signed short iMagMESAcptCond;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL struct tyTagAGVToDTMag tyAGVToDualMag;
_BUR_LOCAL plcbit bAGVMagMcRunRdy;
_BUR_LOCAL enum eFBStatus eAGVMagStatus;
_BUR_LOCAL enum eAGVMagAction eAGVMagStat;
_BUR_LOCAL plcbit bUSSMEMAConvStop;
_BUR_LOCAL plcbit bUSSMEMAConvStart;
_BUR_LOCAL plcbit bUSSMEMATransporting;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat;
_BUR_LOCAL plcbit bMagConv2ClpHvMag;
_BUR_LOCAL enum eFBStatus eMagConv2ClpStatus;
_BUR_LOCAL enum eMagConv2ClpAction eMagConv2ClpStat;
_BUR_LOCAL enum eFBStatus eBufferStatus;
_BUR_LOCAL enum eBufferAction eBufferStat;
_BUR_LOCAL plcdt dtBufferMagPresentTm3;
_BUR_LOCAL plcdt dtBufferMagPresentTm2;
_BUR_LOCAL plcdt dtBufferMagPresentTm1;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bMagPresentSen3;
_BUR_LOCAL plcbit bMagPresentSen2;
_BUR_LOCAL plcbit bMagPresentSen1;
_BUR_LOCAL plcbit bMagEntrySen3;
_BUR_LOCAL plcbit bMagEntrySen2;
_BUR_LOCAL plcbit bMagEntrySen1;
_BUR_LOCAL plcbit bMagClampRS3;
_BUR_LOCAL plcbit bMagClampRS2;
_BUR_LOCAL plcbit bMagClampRS1;
_BUR_LOCAL struct tyBffrStat tyBufferStat3;
_BUR_LOCAL struct tyBffrStat tyBufferStat2;
_BUR_LOCAL struct tyBffrStat tyBufferStat1;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL plcbit bConvInitDone;
_BUR_LOCAL plcbit bRlsMag;
_BUR_LOCAL plcbit bNewMag;
_BUR_LOCAL plcbit bAllwChgSlot;
_BUR_LOCAL plcbit bAllwChgWidth;
_BUR_LOCAL plcbit bUSAllow;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagRej[3];
#else
/* Variable a_bMagRej not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL plcbit a_bMagDis[3];
#else
/* Variable a_bMagDis not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bInfoEn;
_BUR_LOCAL unsigned char usiMagConv;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum eMagConvULStep eGotoOpsStepDummy;
_BUR_LOCAL signed short logIndexStep;
_BUR_LOCAL enum eMagConvULStep logStep[1000];
_BUR_LOCAL plcbit blog;
_BUR_LOCAL plcbit bClsLog;
_BUR_LOCAL plcbit bStepPLCGrab;
_BUR_LOCAL plcbit bStepMagBffrLoad;
_BUR_LOCAL plcbit bStepMagUSCom;
_BUR_LOCAL plcbit bStepMagFullExit;
_BUR_LOCAL plcbit bStepMagVerification;
_BUR_LOCAL plcbit bStepMagExitedWait;
_BUR_LOCAL plcbit bEjectMagNotAllw;
_BUR_LOCAL plcbit bEjectMESStep;
_BUR_LOCAL plcbit bRlsMagAllw;
_BUR_LOCAL plcbit bNewMagAllw;
_BUR_LOCAL plcbit bMagBffrAvl;
_BUR_LOCAL plcbit bOpsInitDone;
_BUR_LOCAL enum eSOTAction eDSSOTAct;
_BUR_LOCAL enum eSOTAction eUSSOTAct;
_BUR_LOCAL enum eMagAWAction eMagAWAct;
_BUR_LOCAL enum ePneuAction eMagAWEngageAct;
_BUR_LOCAL enum ePneuAction eSafetyBarAct;
_BUR_LOCAL enum eAGVMagAction eAGVMagAct;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct;
_BUR_LOCAL enum eMagConv2ClpAction eMagConv2ClpAct;
_BUR_LOCAL enum ePneuAction eSelClampCtrl;
_BUR_LOCAL enum eBufferAction eBufferAct;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MagConv_StationaryPlat/OpsMagConvUL2/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703726039_413_ */

