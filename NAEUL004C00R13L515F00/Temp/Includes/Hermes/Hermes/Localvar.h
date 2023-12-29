/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703837635_368_
#define _BUR_1703837635_368_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned long udiModuleNum;
_BUR_LOCAL plcbit bVoid;
_BUR_LOCAL signed short i;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite5;
_BUR_LOCAL struct fbFileFullRead fbFileRead5;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite4;
_BUR_LOCAL struct fbFileFullRead fbFileRead4;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite3;
_BUR_LOCAL struct fbFileFullRead fbFileRead3;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite2;
_BUR_LOCAL struct fbFileFullRead fbFileRead2;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite1;
_BUR_LOCAL struct fbFileFullRead fbFileRead1;
_BUR_LOCAL struct fbDirCreate fbDirCreate4;
_BUR_LOCAL struct fbDirCreate fbDirCreate3;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL enum eHermesAction eStatOld;
_BUR_LOCAL struct tyHermesConfiguration tyConfigurationHMI;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bHermesWriteRetainLane4;
_BUR_LOCAL plcbit bHermesWriteRetainLane3;
_BUR_LOCAL plcbit bHermesWriteRetainLane2;
_BUR_LOCAL plcbit bHermesWriteRetainLane1;
_BUR_LOCAL plcbit bHermesWriteRetain;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL unsigned long udiSvyIndexDS4;
_BUR_LOCAL unsigned long udiSvyIndexDS3;
_BUR_LOCAL unsigned long udiSvyIndexDS2;
_BUR_LOCAL unsigned long udiSvyIndexDS1;
_BUR_LOCAL unsigned long udiSvyIndexUS4;
_BUR_LOCAL unsigned long udiSvyIndexUS3;
_BUR_LOCAL unsigned long udiSvyIndexUS2;
_BUR_LOCAL unsigned long udiSvyIndexUS1;
_BUR_LOCAL plcbit bSvyFoundIndexDS4;
_BUR_LOCAL plcbit bSvyFoundIndexDS3;
_BUR_LOCAL plcbit bSvyFoundIndexDS2;
_BUR_LOCAL plcbit bSvyFoundIndexDS1;
_BUR_LOCAL plcbit bSvyFoundIndexUS4;
_BUR_LOCAL plcbit bSvyFoundIndexUS3;
_BUR_LOCAL plcbit bSvyFoundIndexUS2;
_BUR_LOCAL plcbit bSvyFoundIndexUS1;
_BUR_LOCAL unsigned long udiRmtIndexDS4;
_BUR_LOCAL unsigned long udiRmtIndexDS3;
_BUR_LOCAL unsigned long udiRmtIndexDS2;
_BUR_LOCAL unsigned long udiRmtIndexDS1;
_BUR_LOCAL unsigned long udiRmtIndexUS4;
_BUR_LOCAL unsigned long udiRmtIndexUS3;
_BUR_LOCAL unsigned long udiRmtIndexUS2;
_BUR_LOCAL unsigned long udiRmtIndexUS1;
_BUR_LOCAL plcbit bRmtFoundIndexDS4;
_BUR_LOCAL plcbit bRmtFoundIndexDS3;
_BUR_LOCAL plcbit bRmtFoundIndexDS2;
_BUR_LOCAL plcbit bRmtFoundIndexDS1;
_BUR_LOCAL plcbit bRmtFoundIndexUS4;
_BUR_LOCAL plcbit bRmtFoundIndexUS3;
_BUR_LOCAL plcbit bRmtFoundIndexUS2;
_BUR_LOCAL plcbit bRmtFoundIndexUS1;
_BUR_LOCAL plcstring sMcId[31];
_BUR_LOCAL plcbit bUISaveHMISvyConfig;
_BUR_LOCAL plcbit bUISaveHMIConfigure;
_BUR_LOCAL plcbit bSvyHermesWriteConfig;
_BUR_LOCAL plcbit bRmtHermesWriteConfig;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL plcstring sConfigFileName[81];
_BUR_LOCAL unsigned long udiRetainDataLen4;
_BUR_LOCAL unsigned long udiRetainDataAddr4;
_BUR_LOCAL unsigned long udiRetainDataLen3;
_BUR_LOCAL unsigned long udiRetainDataAddr3;
_BUR_LOCAL unsigned long udiRetainDataLen2;
_BUR_LOCAL unsigned long udiRetainDataAddr2;
_BUR_LOCAL unsigned long udiRetainDataLen1;
_BUR_LOCAL unsigned long udiRetainDataAddr1;
_BUR_LOCAL plcstring sRetainFileName4[81];
_BUR_LOCAL plcstring sRetainFileName3[81];
_BUR_LOCAL plcstring sRetainFileName2[81];
_BUR_LOCAL plcstring sRetainFileName1[81];
_BUR_LOCAL plcbit bSvyEn;
_BUR_LOCAL plcbit bSvyPrep;
_BUR_LOCAL plcbit bRmtEn;
_BUR_LOCAL plcbit bRmtPrep;
_BUR_LOCAL struct tyHermesCurrentConfiguration tySvySetConfiguration;
_BUR_LOCAL struct tyHermesCurrentConfiguration tyRmtSetConfiguration;
_BUR_LOCAL struct tyHermesSvyParam tySvyParam;
_BUR_LOCAL struct tyHermesRmtParam tyRmtParam;
_BUR_LOCAL struct tyHermesDSParam a_tyDSParam[4];
_BUR_LOCAL struct tyHermesUSParam a_tyUSParam[4];
_BUR_LOCAL plcbit bDis;
_BUR_LOCAL plcbit bEn;
_BUR_LOCAL plcbit bPrep;
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL struct tyHermesConfiguration tyConfigurationWr;
_BUR_LOCAL struct tyHermesConfiguration tyCurrConfiguration;
_BUR_LOCAL plcbit bFileNotFound;

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
_BUR_LOCAL enum eHermesAction eStat;
_BUR_LOCAL enum eHermesAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Hermes/Hermes/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/NtLibraries/NtHermes/Constants.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703837635_368_ */

