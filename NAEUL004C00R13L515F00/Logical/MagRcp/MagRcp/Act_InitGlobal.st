(** 2019-03-25 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_sSearch ACCESS p_UIMagRcpSearch;
	//p_tyInfoIn ACCESS p_UIMagRcpInfoIn;
	p_sListFileName ACCESS p_NtParamMagRcpListFileNm;
	p_sSingleFileName ACCESS p_NtParamMagRcpSingleFileNm;
	p_sProgNm ACCESS p_NtParamMagRcpProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_eLinkLCSMngRcpMagRcpAct ACCESS p_LCSMngRcpMagRcpAct;
	p_bLinkNtParamLCSManageRcpPrep ACCESS p_NtParamLCSManageRcpPrep;
	p_bLinkMcParamLCSManageRcpEn ACCESS p_McParamLCSManageRcpEn;
	p_eLinkUIMagRcpAct ACCESS p_UIMagRcpAct;
	(* Always Change If Project Change *)
	
END_ACTION
