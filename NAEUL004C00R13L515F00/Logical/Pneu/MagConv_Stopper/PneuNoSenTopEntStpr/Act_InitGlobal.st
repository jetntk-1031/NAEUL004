(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjTopEntStprPrep;
//	p_bDis ACCESS p_McParamTopEntStprDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamTopEntStprTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamTopEntStprProgNm;
	p_tExtDlyTm ACCESS p_NtParamTopEntStprExtDlyTm;
	p_tRetDlyTm ACCESS p_NtParamTopEntStprRetDlyTm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bPrep ACCESS p_NtParamProjMagConvLane1Prep;
	(* Always Change If Project Change *)
	
END_ACTION
