/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701136131_464_
#define _BUR_1701136131_464_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bMagAutoEx;
_BUR_LOCAL plcbit bMagManEx;
_BUR_LOCAL plcbit bLiftConvMagExist2;
_BUR_LOCAL plcbit bLiftConvMagExist;
_BUR_LOCAL plcbit bMnlLoad2;
_BUR_LOCAL plcbit bMnlLoad;
_BUR_LOCAL enum eInMagConvStep eGotoStep1;
_BUR_LOCAL enum eInMagConvStep eOpsStep1;
_BUR_LOCAL enum eInMagConvStep eGotoStep;
_BUR_LOCAL enum eInMagConvStep eOpsStep;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bCurtainSensorStat;
_BUR_LOCAL plcbit bMagHeightChkSen;
_BUR_LOCAL plcbit bInMagConvExtSen;
_BUR_LOCAL plcbit bMagSelMiniMag;
_BUR_LOCAL plcbit bStepOpsExtMag2;
_BUR_LOCAL plcbit bStepOpsEntMidMag2;
_BUR_LOCAL plcbit bStepOpsEntMag2;
_BUR_LOCAL plcbit bStepOpsExtMag;
_BUR_LOCAL plcbit bStepOpsEntMidMag;
_BUR_LOCAL plcbit bStepOpsEntMag;
_BUR_LOCAL enum eSOTAction eUSSOTAct2;
_BUR_LOCAL enum eSOTAction eUSSOTAct;
_BUR_LOCAL enum eFBStatus eInMagConv2Status;
_BUR_LOCAL enum eMagConvAction eInMagConv2Stat;
_BUR_LOCAL enum eFBStatus eInMagConvStatus;
_BUR_LOCAL enum eMagConvAction eInMagConvStat;
_BUR_LOCAL plcbit bStep;
_BUR_LOCAL plcbit bStop;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL enum eMagConvAction eInMagConv2Act;
_BUR_LOCAL enum eMagConvAction eInMagConvAct;
_BUR_LOCAL plcbit bStepExitMag2;
_BUR_LOCAL plcbit bStepEntToMid2;
_BUR_LOCAL plcbit bStepEnterMag2;
_BUR_LOCAL plcbit bStepExitMag;
_BUR_LOCAL plcbit bStepEntToMid;
_BUR_LOCAL plcbit bStepEnterMag;
_BUR_LOCAL plcbit bPaused;
_BUR_LOCAL plcstring sStepTxt1[81];
_BUR_LOCAL plcstring sStepTxt[81];

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Operations/MultiMag_InOutMagazineConv/OpsInMagConv/Local.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701136131_464_ */

