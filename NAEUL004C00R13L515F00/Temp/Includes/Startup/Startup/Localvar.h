/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704680536_185_
#define _BUR_1704680536_185_

#include <bur/plctypes.h>

/* Constants */
#ifdef _REPLACE_CONST
#else
#endif


/* Variables */
_BUR_LOCAL unsigned char usiStep;
_BUR_LOCAL plcbit bInitialDone;
_BUR_LOCAL plcbit bInitDone;
_BUR_LOCAL struct tyMcParam tyMcParamCurr;
_BUR_LOCAL struct tyNtParam tyNtParamCurr;
_BUR_LOCAL plcbit bMismatchSetConfigDone;
_BUR_LOCAL plcbit bGetConfigDone;
_BUR_LOCAL plcbit bOverwriteEthMode;
_BUR_LOCAL plcbit bOverwriteSubnet;
_BUR_LOCAL plcbit bOverwriteIP;
_BUR_LOCAL plcbit bChgConfigDone;
_BUR_LOCAL plcbit bTempAddrFillDone;
_BUR_LOCAL plcbit bMismatchOverWriteConfig;
_BUR_LOCAL plcstring a_sStepText[13][81];
_BUR_LOCAL plcstring sStepTxt[81];
_BUR_LOCAL plcbit bUISettingsLoadDone;
_BUR_LOCAL plcbit bNtSettingsLoadDone;
_BUR_LOCAL enum eStartupStep eStartupStep1;
_BUR_LOCAL enum ePullerPusherAction eServoPPAct;
_BUR_LOCAL enum eHermesAction eUSHermesBAct;
_BUR_LOCAL enum eHermesAction eUSHermesAAct;
_BUR_LOCAL enum eAutoRcpAction eAutoRcpAct;
_BUR_LOCAL enum eHermesAction eSvyHermesAct;
_BUR_LOCAL enum eHermesAction eRmtHermesAct;
_BUR_LOCAL enum eHermesAction eHermesAct;
_BUR_LOCAL enum eMagAWAction eMagAW3Act;
_BUR_LOCAL enum eMagAWAction eMagAW2Act;
_BUR_LOCAL enum eMagAWAction eMagAW1Act;
_BUR_LOCAL enum eLifterAction eLifter2Act;
_BUR_LOCAL enum eLifterAction eLifterAct;
_BUR_LOCAL enum eTravAction eTravAct;
_BUR_LOCAL enum eAWAction eAWAct;
_BUR_LOCAL enum eAWAction eAWPushPulAct;
_BUR_LOCAL enum eUIAction eUIAct;
_BUR_LOCAL enum eAlarmAction eAlarmAct;
_BUR_LOCAL enum eBufferAction eBuffer3Act;
_BUR_LOCAL enum eBufferAction eBuffer2Act;
_BUR_LOCAL enum eBufferAction eBuffer1Act;
_BUR_LOCAL enum eUsrMgmtAction eUsrMgmtAct;
_BUR_LOCAL enum eMagRcpAction eMagRcpAct;
_BUR_LOCAL enum eMpProdRcpAction eMpProdRcpAct;
_BUR_LOCAL enum eProdRcpAction eProdRcpAct;
_BUR_LOCAL enum eMcParamAction eMcParamAct;
_BUR_LOCAL enum eNtParamAction eNtParamAct;
_BUR_LOCAL enum eLibVerAction eLibVerAct;
_BUR_LOCAL enum eHWInfoAction eHWInfoAct;
_BUR_LOCAL enum eUsrFolderAction eUsrFolderAct;
_BUR_LOCAL plcbit bRun;
_BUR_LOCAL struct tyUIAllAlm tyUIAlmData;
_BUR_LOCAL plcstring a_sStatText[51][201];
_BUR_LOCAL plcstring sStatTxt[201];
_BUR_LOCAL enum eFBStatus eStatus;
_BUR_LOCAL enum eStartupAction eStat;
_BUR_LOCAL enum eStartupAction eAct;





__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup/Local.var\\\" scope \\\"local\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704680536_185_ */

