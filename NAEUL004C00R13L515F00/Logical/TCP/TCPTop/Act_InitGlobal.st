(** 2019-06-02 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use
	p_bPrep ACCESS p_NtParamProjScanPrep;
	p_bEn ACCESS p_McParamTopScannerEn;
	p_udiRstErr ACCESS p_RstErrReset;
	
	p_sClntIP ACCESS p_HWInfoIPAddr; 
	p_sSvrIP ACCESS p_McParamTopScanIP; 
	p_uiSvrPort ACCESS p_McParamTopScanPort; 
	p_bRun ACCESS p_OpsRun;

	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
