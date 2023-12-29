/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817513_152_
#define _BUR_1703817513_152_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL plcbit bConnected;
_BUR_LOCAL plcbit bWarning;
_BUR_LOCAL unsigned char usiChkIpAddrStep;
_BUR_LOCAL plcdword dwMethodHdl;
_BUR_LOCAL struct fbOPCUAMethodCall fbLoadCfgMethodCall;
_BUR_LOCAL struct fbOPCUAMethodGetHandle fbLoadCfgMethodGetHdl;
_BUR_LOCAL plcstring sLoadCfgNodeID[6];
_BUR_LOCAL struct fbOPCUAMethodCall fbSaveCfgMethodCall;
_BUR_LOCAL struct fbOPCUAMethodGetHandle fbSaveCfgMethodGetHdl;
_BUR_LOCAL plcstring sSaveCfgNodeID[6];
_BUR_LOCAL plcstring sObjIDNodeID[6];
_BUR_LOCAL struct tyOPCUAHdlList tyWriteHdls;
_BUR_LOCAL struct fbOPCUAWriteList fbWriteList;
_BUR_LOCAL struct fbOPCUAGetNodeHdlList fbWriteGetNodeHdlList;
_BUR_LOCAL struct tyOPCUAHdlList tyReadHdls;
_BUR_LOCAL struct fbOPCUAReadList fbReadList;
_BUR_LOCAL struct fbOPCUAGetNodeHdlList fbReadGetNodeHdlList;
_BUR_LOCAL plcstring sVNCAddrNodeID[6];
_BUR_LOCAL plcstring sHMIAddrNodeID[16];
_BUR_LOCAL plcdword dwConnectionHdl;
_BUR_LOCAL struct fbOPCUADisconnect fbDisconnectOPCUA;
_BUR_LOCAL struct fbOPCUAConnect fbConnectOPCUA;
_BUR_LOCAL unsigned short uiNSIdx;
_BUR_LOCAL plcstring sVNCIPAddr[16];
_BUR_LOCAL plcstring sHMIIPAddr[16];
_BUR_LOCAL unsigned short udiModuleNum;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite2;
_BUR_LOCAL struct fbFileFullWrite fbFileWrite1;
_BUR_LOCAL struct fbFileFullRead fbFileRead1;
_BUR_LOCAL struct fbDirCreate fbDirCreate2;
_BUR_LOCAL struct fbDirCreate fbDirCreate1;
_BUR_LOCAL struct tyMcParam tyMcParamTemp;
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL unsigned long udiRstErrOld;
_BUR_LOCAL plcbit bRstErr;
_BUR_LOCAL plcbit bSvyHermesWriteConfig;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL plcstring sProgNm[16];
_BUR_LOCAL struct tyMcParam tyMcParamWr;
_BUR_LOCAL plcstring sFileName[81];
_BUR_LOCAL unsigned long udiRstErr;
_BUR_LOCAL plcbit bFileNotFound;
_BUR_LOCAL struct tyMcParam tyMcParamCurr;

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
_BUR_LOCAL enum eMcParamAction eStat;
_BUR_LOCAL enum eMcParamAction eAct;
_BUR_LOCAL struct tyMcParamGen tylocalMcParam;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/McParam/McParam/Local.var\\\" scope \\\"local\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtOPCUA/NtOPCUA.fun\\\" scope \\\"global\\\"\\n\"");
__asm__(".ascii \"iecfile \\\"Logical/NtLibraries/NtFileIO/NtFileIO.fun\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817513_152_ */

