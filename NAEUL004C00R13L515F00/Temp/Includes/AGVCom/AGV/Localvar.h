/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1701225411_422_
#define _BUR_1701225411_422_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL struct tyStatFromLoader tyTagFromLoader;
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL struct tyStatFromMES tyTagFromMes;
_BUR_LOCAL struct tyStatToMES tyTagToMes;
_BUR_LOCAL struct TON fbConnectionAGVTm1;
_BUR_LOCAL struct TON fbConnectionAGVTm;
_BUR_LOCAL struct TON fbConnectionTmCCS;
_BUR_LOCAL enum eAGVMagAction eStatOld;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL struct TON fbFMOffTimeout;
_BUR_LOCAL struct TON fbFMOnTimeout;
_BUR_LOCAL plcbit bFleetManagerActive;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bRequestToGet4;
_BUR_LOCAL plcbit bRequestToBring4;
_BUR_LOCAL plcbit bRequestToGet3;
_BUR_LOCAL plcbit bRequestToBring3;
_BUR_LOCAL plcbit bRequestToGet2;
_BUR_LOCAL plcbit bRequestToBring2;
_BUR_LOCAL plcbit bRequestToGet1;
_BUR_LOCAL plcbit bRequestToBring1;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV3;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV2;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV1;
_BUR_LOCAL plcbit bInternalAGVSimulateOn;
_BUR_LOCAL plcbit bInternalAGVOnline;
_BUR_LOCAL plcbit bMachineOnline;
_BUR_LOCAL plcbit bAGVOnline;
_BUR_LOCAL struct tyTagDTMagToAGV tyDTMagToAGV;
_BUR_LOCAL struct tyTagAGVToDTMag tyAGVToDTMag;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bMag1Exit;
_BUR_LOCAL plcbit bMag1Ent;
_BUR_LOCAL plcbit bRdyExit;
_BUR_LOCAL plcbit bRdyEnt;
_BUR_LOCAL plcbit bMcRunRdy;

#ifdef _BUR_USE_DECLARATION_IN_IEC
_BUR_LOCAL struct tyAlmTxt a_tyAlmText[100];
#else
/* Variable a_tyAlmText not declared. Array variables with starting indexes not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif
_BUR_LOCAL struct tyAlmDat tyAlmData1;
_BUR_LOCAL struct tyAlmDat tyAlmData;
_BUR_LOCAL plcstring a_sStatText[51][101];
_BUR_LOCAL plcstring sStatTxt[101];
_BUR_LOCAL unsigned long udiStatus1;
_BUR_LOCAL unsigned long udiStatus;
_BUR_LOCAL enum eFBStatus eStatus1;
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eAGVMagAction eStat;
_BUR_LOCAL enum eAGVMagAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/AGVCom/AGV/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/Libraries/standard/standard.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1701225411_422_ */

