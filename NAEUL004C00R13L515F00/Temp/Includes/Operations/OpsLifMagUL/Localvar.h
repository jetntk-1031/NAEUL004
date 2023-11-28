/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136546_419_
#define _BUR_1701136546_419_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bMagSetFullExit2;
_BUR_LOCAL plcbit bMagSetFullExit;
_BUR_LOCAL plcbit bStepEntBoard;
_BUR_LOCAL plcbit bMagConvLanePrep;
_BUR_LOCAL plcbit bStepLiftMagIdle2;
_BUR_LOCAL plcbit bPresentMag2;
_BUR_LOCAL plcbit bPresentMag1;
_BUR_LOCAL plcbit bStepInitDone2;
_BUR_LOCAL plcbit bStepInitDone1;
_BUR_LOCAL plcbit bStepExtMag2;
_BUR_LOCAL plcbit bStepEntMag2;
_BUR_LOCAL plcbit bStepExtMag1;
_BUR_LOCAL plcbit bStepEntMag1;
_BUR_LOCAL enum eLifterConvStatus usiMag2Rdy;
_BUR_LOCAL enum eLifterConvStatus usiMag1Rdy;
_BUR_LOCAL plcbit bLift2Move;
_BUR_LOCAL plcbit bLocalMag2InPos;
_BUR_LOCAL plcbit bLocalMag1InPos;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAConvStop;
_BUR_LOCAL plcbit *p_bLocalUSSMEMAConvStart;
_BUR_LOCAL plcbit *p_bLocalUSSMEMATransporting;
_BUR_LOCAL enum eFBStatus *p_eLocalUSSMEMAStatus;
_BUR_LOCAL enum eSMEMAAction *p_eLocalUSSMEMAStat;
_BUR_LOCAL enum eSMEMAAction *p_eLocalUSSMEMAAct;
_BUR_LOCAL enum eFBStatus *p_eLocalBufferStatus;
_BUR_LOCAL enum eBufferAction *p_eLocalBufferStat;
_BUR_LOCAL enum eBufferAction *p_eLocalBufferAct;
_BUR_LOCAL plcdt *p_dtLocalBufferMagPresentTm;
_BUR_LOCAL plcbit *p_bLocalBufferMagPresent;
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
_BUR_LOCAL struct tyBffrStat a_tyMagAllwBffrStat[3];
#else
/* Variable a_tyMagAllwBffrStat not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL plcbit bMagNxtUnloadGd;
_BUR_LOCAL unsigned long udiMagAllwGo;
_BUR_LOCAL unsigned long udiCmpTm;
_BUR_LOCAL unsigned long udiCount;
_BUR_LOCAL unsigned long udi1;
_BUR_LOCAL unsigned long udi;
_BUR_LOCAL enum eLifMagULStep eGotoOpsStep2;
_BUR_LOCAL enum eLifMagULStep eOpsStep2;
_BUR_LOCAL enum eLifMagULStep eGotoOpsStep1;
_BUR_LOCAL enum eLifMagULStep eOpsStep1;
_BUR_LOCAL enum eLifMagULStep eGotoOpsStep;
_BUR_LOCAL enum eLifMagULStep eOpsStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bUSSMEMAConvStop3;
_BUR_LOCAL plcbit bUSSMEMAConvStart3;
_BUR_LOCAL plcbit bUSSMEMATransporting3;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus3;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat3;
_BUR_LOCAL plcbit bUSSMEMAConvStop2;
_BUR_LOCAL plcbit bUSSMEMAConvStart2;
_BUR_LOCAL plcbit bUSSMEMATransporting2;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus2;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat2;
_BUR_LOCAL plcbit bUSSMEMAConvStop1;
_BUR_LOCAL plcbit bUSSMEMAConvStart1;
_BUR_LOCAL plcbit bUSSMEMATransporting1;
_BUR_LOCAL enum eFBStatus eUSSMEMAStatus1;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAStat1;
_BUR_LOCAL enum eFBStatus eBufferStatus3;
_BUR_LOCAL enum eBufferAction eBufferStat3;
_BUR_LOCAL enum eFBStatus eBufferStatus2;
_BUR_LOCAL enum eBufferAction eBufferStat2;
_BUR_LOCAL enum eFBStatus eBufferStatus1;
_BUR_LOCAL enum eBufferAction eBufferStat1;
_BUR_LOCAL enum eFBStatus eLifterMagConv2Status;
_BUR_LOCAL enum eMagConvAction eLifterMagConv2Stat;
_BUR_LOCAL enum eFBStatus eLifterMagConvStatus;
_BUR_LOCAL enum eMagConvAction eLifterMagConvStat;
_BUR_LOCAL enum eFBStatus eLifter2Status;
_BUR_LOCAL enum eLifterAction eLifter2Stat;
_BUR_LOCAL enum eFBStatus eLifterStatus;
_BUR_LOCAL enum eLifterAction eLifterStat;
_BUR_LOCAL enum eFBStatus eOutMagConv2Status;
_BUR_LOCAL enum eMagConvAction eOutMagConv2Stat;
_BUR_LOCAL enum eFBStatus eOutMagConvStatus;
_BUR_LOCAL enum eMagConvAction eOutMagConvStat;
_BUR_LOCAL enum eFBStatus eInMagConv2Status;
_BUR_LOCAL enum eMagConvAction eInMagConv2Stat;
_BUR_LOCAL enum eFBStatus eInMagConvStatus;
_BUR_LOCAL enum eMagConvAction eInMagConvStat;
_BUR_LOCAL plcdt dtBufferMagPresentTm3;
_BUR_LOCAL plcdt dtBufferMagPresentTm2;
_BUR_LOCAL plcdt dtBufferMagPresentTm1;
_BUR_LOCAL plcbit bBufferMagPresent3;
_BUR_LOCAL plcbit bBufferMagPresent2;
_BUR_LOCAL plcbit bBufferMagPresent1;
_BUR_LOCAL plcbit bMagPresentSen3;
_BUR_LOCAL plcbit bMagPresentSen2;
_BUR_LOCAL plcbit bMagPresentSen1;
_BUR_LOCAL struct tyBffrStat tyBufferStat3;
_BUR_LOCAL struct tyBffrStat tyBufferStat2;
_BUR_LOCAL struct tyBffrStat tyBufferStat1;
_BUR_LOCAL plcbit bConvGdBrd;
_BUR_LOCAL plcbit bConvHvBrd;
_BUR_LOCAL plcbit bConvHvBrdAllwGo;
_BUR_LOCAL plcbit bConvInitDone;
_BUR_LOCAL enum eLifMagULUpdateData eMagBuffferActLoad;
_BUR_LOCAL plcbit bUSAllow;
_BUR_LOCAL plcbit bUnloadMag;

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
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bLifterMoving;
_BUR_LOCAL plcbit bUnloading;
_BUR_LOCAL enum eLifMagULMagNxtLoad eMagNxtLoad;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct3;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct2;
_BUR_LOCAL enum eSMEMAAction eUSSMEMAAct1;
_BUR_LOCAL enum eBufferAction eBufferAct3;
_BUR_LOCAL enum eBufferAction eBufferAct2;
_BUR_LOCAL enum eBufferAction eBufferAct1;
_BUR_LOCAL enum eMagConvAction eLifterConv2Act;
_BUR_LOCAL enum eMagConvAction eLifterConvAct;
_BUR_LOCAL enum eLifterAction eLifter2Act;
_BUR_LOCAL enum eLifterAction eLifterAct;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData2;
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus2;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/OpsLifMagUL/Local.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136546_419_ */

