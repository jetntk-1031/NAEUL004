(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjTopMidStprPrep2;
//	p_bDis ACCESS p_McParamTopMidStprDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamTopMidStprTwoCtrlIn2;
	p_sProgNm ACCESS p_NtParamTopMidStprProgNm2;
	p_tExtDlyTm ACCESS p_NtParamTopMidStprExtDlyTm2;
	p_tRetDlyTm ACCESS p_NtParamTopMidStprRetDlyTm2;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bPrep ACCESS p_NtParamProjMagConvLane2Prep;
	(* Always Change If Project Change *)
	
END_ACTION
