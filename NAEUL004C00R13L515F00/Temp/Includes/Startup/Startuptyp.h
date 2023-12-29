/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_5_
#define _BUR_1703817512_5_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eStartupAction
{	StartupActIdle,
	StartupActRun
} eStartupAction;

typedef enum eStartupStep
{	StartupStepUsrFolder,
	StartupStepParameter,
	StartupStepGetHWInfo,
	StartupStepLibVer,
	StartupStepRecipe,
	StartupStepAutoRcp,
	StartupStepUsrMgmt,
	StartupStepBffr,
	StartupStepAlarm,
	StartupStepHermes,
	StartupStepSDOWrite,
	StartupStepSetupUI,
	StartupStepDone
} eStartupStep;

typedef struct tyStartUpIn1
{	enum eStartupAction eAct;
} tyStartUpIn1;

typedef struct tyStartUpOut1
{	plcbit bRun;
	eUsrFolderAction eUsrFolderAct;
	eHWInfoAction eHWInfoAct;
	eLibVerAction eLibVerAct;
	eNtParamAction eNtParamAct;
	eMcParamAction eMcParamAct;
	eProdRcpAction eProdRcpAct;
	eMpProdRcpAction eMpProdRcpAct;
	eMagRcpAction eMagRcpAct;
	eUsrMgmtAction eUsrMgmtAct;
	eBufferAction eBuffer1Act;
	eBufferAction eBuffer2Act;
	eBufferAction eBuffer3Act;
	eAlarmAction eAlarmAct;
	eUIAction eUIAct;
	eAWAction eAWPushPulAct;
	eAWAction eAWAct;
	eTravAction eTravAct;
	eLifterAction eLifterAct;
	eLifterAction eLifter2Act;
	eMagAWAction eMagAW1Act;
	eMagAWAction eMagAW2Act;
	eMagAWAction eMagAW3Act;
	eHermesAction eHermesAct;
	eHermesAction eRmtHermesAct;
	eHermesAction eSvyHermesAct;
	eAutoRcpAction eAutoRcpAct;
	eHermesAction eUSHermesAAct;
	eHermesAction eUSHermesBAct;
	ePullerPusherAction eServoPPActs;
	enum eStartupStep eStartupStep1;
	plcbit bNtSettingsLoadDone;
	plcbit bUISettingsLoadDone;
	plcstring sStepTxt[81];
	plcbit bGetConfigDone;
	plcbit bMismatchSetConfigDone;
	enum eStartupAction eStat;
	eFBStatus eStatus;
	plcstring sStatTxt[201];
} tyStartUpOut1;

typedef struct tyStartUp
{	struct tyStartUpIn1 In;
	struct tyStartUpOut1 Out;
} tyStartUp;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Startup/Startup.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1703817512_5_ */

