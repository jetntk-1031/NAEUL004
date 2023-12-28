(*2019-04-04*)
(**)

TYPE
	eStartupAction : 
		(
		StartupActIdle,
		StartupActRun
		);
	eStartupStep : 
		(
		StartupStepUsrFolder,
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
		);
	tyStartUpOut1 : 	STRUCT 
		bRun : BOOL;
		eUsrFolderAct : eUsrFolderAction;
		eHWInfoAct : eHWInfoAction;
		eLibVerAct : eLibVerAction;
		eNtParamAct : eNtParamAction;
		eMcParamAct : eMcParamAction;
		eProdRcpAct : eProdRcpAction;
		eMpProdRcpAct : eMpProdRcpAction;
		eMagRcpAct : eMagRcpAction;
		eUsrMgmtAct : eUsrMgmtAction;
		eBuffer1Act : eBufferAction;
		eBuffer2Act : eBufferAction;
		eBuffer3Act : eBufferAction;
		eAlarmAct : eAlarmAction;
		eUIAct : eUIAction;
		eAWPushPulAct : eAWAction;
		eAWAct : eAWAction;
		eTravAct : eTravAction;
		eLifterAct : eLifterAction;
		eLifter2Act : eLifterAction;
		eMagAW1Act : eMagAWAction;
		eMagAW2Act : eMagAWAction;
		eMagAW3Act : eMagAWAction;
		eHermesAct : eHermesAction;
		eRmtHermesAct : eHermesAction;
		eSvyHermesAct : eHermesAction;
		eAutoRcpAct : eAutoRcpAction;
		eUSHermesAAct : eHermesAction;
		eUSHermesBAct : eHermesAction;
		eServoPPActs : ePullerPusherAction;
		eStartupStep1 : eStartupStep;
		bNtSettingsLoadDone : BOOL := FALSE;
		bUISettingsLoadDone : BOOL;
		sStepTxt : STRING[80];
		bGetConfigDone : BOOL;
		bMismatchSetConfigDone : BOOL;
		eStat : eStartupAction := StartupActIdle;
		eStatus : eFBStatus := Idle;
		sStatTxt : STRING[200] := '';
	END_STRUCT;
	tyStartUpIn1 : 	STRUCT 
		eAct : eStartupAction;
	END_STRUCT;
END_TYPE
