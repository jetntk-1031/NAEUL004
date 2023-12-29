/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1703817512_19_
#define _BUR_1703817512_19_

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
{
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


#endif /* _BUR_1703817512_19_ */

