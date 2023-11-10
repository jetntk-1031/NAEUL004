(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjTopExtStprPrep2;
//	p_bDis ACCESS p_McParamTopExtStprDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamTopExtStprTwoCtrlIn2;
	p_sProgNm ACCESS p_NtParamTopExtStprProgNm2;
	p_tExtDlyTm ACCESS p_NtParamTopExtStprExtDlyTm2;
	p_tRetDlyTm ACCESS p_NtParamTopExtStprRetDlyTm2;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bPrep ACCESS p_NtParamProjMagConvLane2Prep;
	(* Always Change If Project Change *)
	
END_ACTION
