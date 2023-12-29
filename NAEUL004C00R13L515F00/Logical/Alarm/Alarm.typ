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
		sAWOpenProgNm : STRING[15];
		sAWCloseProgNm : STRING[15];
		sMagAWOpenProgNm : STRING[15];
		sTravProgNm : STRING[15];
		sLifterBtmProgNm : STRING[15];
		sConvProgNm : STRING[15];
		sDCConvProgNm : STRING[15];
		sMagConvProgNm : STRING[15];
		sMagConv2ClpProgNm : STRING[15];
		sBufferProgNm : STRING[15];
		sMotorBrkProgNm : STRING[15];
		sMtrPshrProgNm : STRING[15];
		sStepperProgNm : STRING[15];
		sPneuNoSenProgNm : STRING[15];
		sPneuExtSenProgNm : STRING[15];
		sPneuRetSenProgNm : STRING[15];
		sPneu2SenProgNm : STRING[15];
		sPneu3SenProgNm : STRING[15];
		sUSSMEMAProgNm : STRING[15];
		sDSSMEMAProgNm : STRING[15];
		sHermesProgNm : STRING[15];
		sUSHermesAProgNm : STRING[15];
		sUSHermesBProgNm : STRING[15];
		sDSHermesProgNm : STRING[15];
		sRmtHermesProgNm : STRING[15];
		sLFLeaderProgNm : STRING[15];
		sLFFollowerProgNm : STRING[15];
		sLCSProgNm : STRING[15];
		sLCSLFProgNm : STRING[15];
		sLCSMngRcpProgNm : STRING[15];
		sTCPProgNm : STRING[15];
		sUSSOTProgNm : STRING[15];
		sDSSOTProgNm : STRING[15];
		sBarcodeRdrProgNm : STRING[15];
		sRS232MirtecProgNm : STRING[15];
		sProdRcpProgNm : STRING[15];
		sMagRcpProgNm : STRING[15];
		sMpProdRcpProgNm : STRING[15];
		sAlarmProgNm : STRING[15];
		sNtParamProgNm : STRING[15];
		sMcParamProgNm : STRING[15];
		sUsrMgmtProgNm : STRING[15];
		sLibVerProgNm : STRING[15];
		sUsrFolderProgNm : STRING[15];
		sHWInfoProgNm : STRING[15];
		sDInputProgNm : STRING[15];
		sTimeProgNm : STRING[15];
		sMachineProgNm : STRING[15];
		sOps1ProgNm : STRING[15];
		sOpsTravLifULProgNm : STRING[15];
		sOpsMagConvULProgNm : STRING[15];
		sOpsMagConvUL2ProgNm : STRING[15];
		sOpsMagConvUL3ProgNm : STRING[15];
		sOpsLifMagULProgNm : STRING[15];
		sOpsInMagConvProgNm : STRING[15];
		sOpsOutMagConvProgNm : STRING[15];
		sOpsMagConvStprProgNm : STRING[15];
		sOpsMagConvStpr2ProgNm : STRING[15];
		sWarningLibVersion : STRING[15];
		sAGVComProgNm : STRING[15];
		sAGVProgNm : STRING[15];
		sFrameProgNm : STRING[15];
		sLiberWarnName : STRING[15];
		sSimu1ProgNm : STRING[15];
		sSvyHermesProgNm : STRING[15];
		sAutoRcpProgNm : STRING[15];
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
