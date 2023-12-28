(*2019-03-25*)
(**)

TYPE
	eAlarmAction : 
		(
		AlarmActIdle,
		AlarmActCreateDir,
		AlarmActDeleteOldLog,
		AlarmActReadHistory,
		AlarmActWriteHistory,
		AlarmActAppendLog,
		AlarmActAppendLogWriteHistory,
		AlarmActResetHistory,
		AlarmActBGStartLog,
		AlarmActBGStopLog
		);
END_TYPE

(**)

TYPE
	tyAlarmCurr : 	STRUCT 
		eSeverity : eAlmSeverity;
		sMsg : STRING[300];
		bAlm : BOOL;
		bWarning : BOOL;
		udiErrorCode : UDINT;
		sProgNm : STRING[15];
		sDT : STRING[80];
		udiModErrCode : UDINT;
	END_STRUCT;
	tyHistory : 	STRUCT 
		sDT : STRING[80];
		sProgNm : STRING[15];
		udiModErrCode : UDINT;
		udiErrorCode : UDINT;
	END_STRUCT;
	tyAlmProgNm : 	STRUCT 
	END_STRUCT;
	tyAlmIn1 : 	STRUCT 
		udiRstErr : UDINT;
		eAct : eAlarmAction;
		dtCurrDT : DATE_AND_TIME;
		udiFileKeepDay : UDINT;
		sProgNm : STRING[15];
		bStartupUISettingsLoadDone : BOOL;
	END_STRUCT;
	tyAlmOut1 : 	STRUCT 
		bWarning : BOOL;
		bInfo : BOOL;
		bErr : BOOL;
		bInfoLF : BOOL;
		eStat : eAlarmAction;
		eStatus : eFBStatus;
		a_tyCurrList : ARRAY[1..c_udiAlarmCurrMax]OF tyAlarmCurr;
		a_udiRecoveryList : ARRAY[1..c_udiAlarmCurrMax]OF UDINT;
		sInfoMsg : STRING[100];
		sStatTxt : STRING[200];
		bHistoryFileNotFound : BOOL;
	END_STRUCT;
	tyAlarm : 	STRUCT 
		In : tyAlmIn1;
		Out : tyAlmOut1;
	END_STRUCT;
END_TYPE
