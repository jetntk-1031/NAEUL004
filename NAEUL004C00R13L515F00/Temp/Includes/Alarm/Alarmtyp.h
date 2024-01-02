/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1704158824_1_
#define _BUR_1704158824_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum eAlarmAction
{	AlarmActIdle,
	AlarmActCreateDir,
	AlarmActDeleteOldLog,
	AlarmActReadHistory,
	AlarmActWriteHistory,
	AlarmActAppendLog,
	AlarmActAppendLogWriteHistory,
	AlarmActResetHistory,
	AlarmActBGStartLog,
	AlarmActBGStopLog
} eAlarmAction;

typedef struct tyAlarmCurr
{	eAlmSeverity eSeverity;
	plcstring sMsg[301];
	plcbit bAlm;
	plcbit bWarning;
	unsigned long udiErrorCode;
	plcstring sProgNm[16];
	plcstring sDT[81];
	unsigned long udiModErrCode;
} tyAlarmCurr;

typedef struct tyHistory
{	plcstring sDT[81];
	plcstring sProgNm[16];
	unsigned long udiModErrCode;
	unsigned long udiErrorCode;
} tyHistory;

typedef struct tyAlmProgNm
{	plcstring sAWOpenProgNm[16];
	plcstring sAWCloseProgNm[16];
	plcstring sMagAWOpenProgNm[16];
	plcstring sTravProgNm[16];
	plcstring sLifterBtmProgNm[16];
	plcstring sConvProgNm[16];
	plcstring sDCConvProgNm[16];
	plcstring sMagConvProgNm[16];
	plcstring sMagConv2ClpProgNm[16];
	plcstring sBufferProgNm[16];
	plcstring sMotorBrkProgNm[16];
	plcstring sMtrPshrProgNm[16];
	plcstring sStepperProgNm[16];
	plcstring sPneuNoSenProgNm[16];
	plcstring sPneuExtSenProgNm[16];
	plcstring sPneuRetSenProgNm[16];
	plcstring sPneu2SenProgNm[16];
	plcstring sPneu3SenProgNm[16];
	plcstring sUSSMEMAProgNm[16];
	plcstring sDSSMEMAProgNm[16];
	plcstring sHermesProgNm[16];
	plcstring sUSHermesAProgNm[16];
	plcstring sUSHermesBProgNm[16];
	plcstring sDSHermesProgNm[16];
	plcstring sRmtHermesProgNm[16];
	plcstring sLFLeaderProgNm[16];
	plcstring sLFFollowerProgNm[16];
	plcstring sLCSProgNm[16];
	plcstring sLCSLFProgNm[16];
	plcstring sLCSMngRcpProgNm[16];
	plcstring sTCPProgNm[16];
	plcstring sUSSOTProgNm[16];
	plcstring sDSSOTProgNm[16];
	plcstring sBarcodeRdrProgNm[16];
	plcstring sRS232MirtecProgNm[16];
	plcstring sProdRcpProgNm[16];
	plcstring sMagRcpProgNm[16];
	plcstring sMpProdRcpProgNm[16];
	plcstring sAlarmProgNm[16];
	plcstring sNtParamProgNm[16];
	plcstring sMcParamProgNm[16];
	plcstring sUsrMgmtProgNm[16];
	plcstring sLibVerProgNm[16];
	plcstring sUsrFolderProgNm[16];
	plcstring sHWInfoProgNm[16];
	plcstring sDInputProgNm[16];
	plcstring sTimeProgNm[16];
	plcstring sMachineProgNm[16];
	plcstring sOps1ProgNm[16];
	plcstring sOpsTravLifULProgNm[16];
	plcstring sOpsMagConvULProgNm[16];
	plcstring sOpsMagConvUL2ProgNm[16];
	plcstring sOpsMagConvUL3ProgNm[16];
	plcstring sOpsLifMagULProgNm[16];
	plcstring sOpsInMagConvProgNm[16];
	plcstring sOpsOutMagConvProgNm[16];
	plcstring sOpsMagConvStprProgNm[16];
	plcstring sOpsMagConvStpr2ProgNm[16];
	plcstring sWarningLibVersion[16];
	plcstring sAGVComProgNm[16];
	plcstring sAGVProgNm[16];
	plcstring sFrameProgNm[16];
	plcstring sLiberWarnName[16];
	plcstring sSimu1ProgNm[16];
	plcstring sSvyHermesProgNm[16];
	plcstring sAutoRcpProgNm[16];
} tyAlmProgNm;

typedef struct tyAlmIn1
{	unsigned long udiRstErr;
	enum eAlarmAction eAct;
	plcdt dtCurrDT;
	unsigned long udiFileKeepDay;
	plcstring sProgNm[16];
	plcbit bStartupUISettingsLoadDone;
} tyAlmIn1;

#ifdef _BUR_USE_DECLARATION_IN_IEC
typedef struct tyAlmOut1
{	plcbit bWarning;
	plcbit bInfo;
	plcbit bErr;
	plcbit bInfoLF;
	enum eAlarmAction eStat;
	eFBStatus eStatus;
	struct tyAlarmCurr a_tyCurrList[200];
	unsigned long a_udiRecoveryList[200];
	plcstring sInfoMsg[101];
	plcstring sStatTxt[201];
	plcbit bHistoryFileNotFound;
} tyAlmOut1;
#else
/* Data type tyAlmOut1 not declared. Data types with array elements whose starting indexes are not equal to zero cannot be used in ANSI C programs / libraries.*/
#endif

typedef struct tyAlarm
{	struct tyAlmIn1 In;
	struct tyAlmOut1 Out;
} tyAlarm;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Alarm/Alarm.typ\\\" scope \\\"global\\\"\\n\"");

/* Additional IEC dependencies */
__asm__(".ascii \"iecdep \\\"Logical/Alarm/Alarm.var\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1704158824_1_ */

