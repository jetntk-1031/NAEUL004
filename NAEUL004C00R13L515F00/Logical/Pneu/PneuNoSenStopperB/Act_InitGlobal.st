(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjStopperBPrep;
	p_bDis ACCESS p_McParamStopperBDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamStopperBTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamStopperBProgNm;
	p_tExtDlyTm ACCESS p_NtParamStopperBExtDlyTm;
	p_tRetDlyTm ACCESS p_NtParamStopperBRetDlyTm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
