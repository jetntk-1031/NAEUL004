(** 2019-06-28 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
//	p_bLinkStartupRun ACCESS p_StartupRun;
//	p_bLinkUIClearMsg ACCESS p_UITCPClearMsg;
//	p_bLinkConnectEn ACCESS p_UITCPConnectionEn;
	p_bUSB ACCESS p_USSOT1USB;
	p_bUSB2 ACCESS p_USSOT2USB;
	p_bDBA ACCESS p_DSSOT1DBA;
	p_bDBA2 ACCESS p_DSSOT2DBA;
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	
	//Pass Data To Internal Use
	//	p_bManual ACCESS p_UIUIMnlMod; 
	p_udiRstErr ACCESS p_RstErrReset;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_bOpsRun ACCESS p_OpsRun;
	p_sMsgSnd ACCESS ADR(sMsgSnd);
	p_sSvrIP ACCESS p_HWInfoIPAddr;
	p_uiSvrPort ACCESS p_McParamTCPSvrPort; //UI setting input

	p_usiProjMag ACCESS p_NtParamProjMag;
	
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
	
	//Link bPrep, bEn & bDis
	bEn := p_eLinkAGVComProtocol = McSetAGVTCPEnableTCP;
	
	IF p_bEn THEN
		bRun := TRUE;
	ELSE 
		bRun := FALSE;
	END_IF
	
END_ACTION


