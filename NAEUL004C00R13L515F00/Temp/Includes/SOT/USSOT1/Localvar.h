/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703660021_311_
#define _BUR_1703660021_311_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL enum eSOTAction eStatOld;
_BUR_LOCAL struct fbSOTSigInChk fbSigInChk;
_BUR_LOCAL struct fbSOTUS fbSOT;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plctime tSigInChkTm;
_BUR_LOCAL plctime tRstDlyTm;
_BUR_LOCAL plcbit bUBAVirtual;
_BUR_LOCAL plcbit bVirtualEn;
_BUR_LOCAL plcbit bUMASize;
_BUR_LOCAL plcbit bUMA;
_BUR_LOCAL plcbit bComplSigOn;
_BUR_LOCAL plcbit bRightSen;
_BUR_LOCAL plcbit bLeftSen;
_BUR_LOCAL plcbit bRdyRcv;
_BUR_LOCAL plcbit bDirLToR;
_BUR_LOCAL signed long diTransferInTO;
_BUR_LOCAL plcbit bManual;
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bVirtual;
_BUR_LOCAL plcbit bUSB;
_BUR_LOCAL plcbit bConvStop;
_BUR_LOCAL plcbit bConvStart;
_BUR_LOCAL plcbit bTransporting;
_BUR_LOCAL plcbit bDSRdy;
_BUR_LOCAL plcbit bUSLargeMagRdy;
_BUR_LOCAL plcbit bUSRdy;

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
_BUR_LOCAL enum eSOTAction eStat;
_BUR_LOCAL enum eSOTAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/SOT/USSOT1/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtSOT/NtSOT.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703660021_311_ */

