(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjTopEntStprPrep2;
//	p_bDis ACCESS p_McParamTopEntStpr2Dis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamTopEntStprTwoCtrlIn2;
	p_sProgNm ACCESS p_NtParamTopEntStprProgNm2;
	p_tExtDlyTm ACCESS p_NtParamTopEntStprExtDlyTm2;
	p_tRetDlyTm ACCESS p_NtParamTopEntStprRetDlyTm2;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bPrep ACCESS p_NtParamProjMagConvLane2Prep;
	(* Always Change If Project Change *)
	
END_ACTION
