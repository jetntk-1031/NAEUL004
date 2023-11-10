(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sFileName ACCESS p_NtParamMcParamFileNm;
	p_tyMcParamWr ACCESS p_UIMcParamWr;
	p_sProgNm ACCESS p_NtParamMcParamProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bRmtHermesWriteConfig ACCESS p_RmtHermesWriteConfig; //new for Hermes 1.3
	p_bSvyHermesWriteConfig ACCESS p_SvyHermesWriteConfig; //new for Hermes 1.3
	p_tyHermesConfigurationWr ACCESS p_HermesConfigurationWr; //new for Hermes 1.3
	//Controling AutoRcp
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bNtParamProjLaneBPrep ACCESS p_NtParamProjLaneBPrep;
	p_eNtParamCustomerReq ACCESS p_NtParamCustomerReq;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	(* Always Change If Project Change *)
	//ADD
	p_sUISetHMIIPAddr ACCESS p_UISetHMIIPAddr;
	p_sHWInfoIPAddr ACCESS p_HWInfoIPAddr;
	p_bUIUpdtHMIIPAddr ACCESS p_UIUpdtHMIIPAddr;
	p_bAlarmWarning ACCESS p_AlarmWarning;
END_ACTION
