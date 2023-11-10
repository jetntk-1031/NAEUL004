(** 2019-03-22 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsTravLifULPaused ACCESS p_OpsTravLifULPaused;
//	p_bLinkOpsMagUL1Paused ACCESS p_OpsMagUL1Paused;
//	p_bLinkOpsMagUL2Paused ACCESS p_OpsMagUL2Paused;
//	p_bLinkOpsMagUL3Paused ACCESS p_OpsMagUL3Paused;
	p_bLinkOpsMagConvUL1Paused ACCESS p_OpsMagConvUL1Paused;
	p_bLinkOpsMagConvUL2Paused ACCESS p_OpsMagConvUL2Paused;
	p_bLinkOpsMagConvUL3Paused ACCESS p_OpsMagConvUL3Paused;
	p_bLinkOpsLifMagULPaused ACCESS p_OpsLifMagULPaused;
	p_bLinkOpsInMagConvPaused ACCESS p_OpsInMagConvPaused;
	p_bLinkOpsOutMagConvPaused ACCESS p_OpsOutMagConvPaused;
	p_bLinkOpsMagConvStprPaused ACCESS p_OpsMagConvStprPaused;
	p_bLinkOpsMagConv2StprPaused ACCESS p_OpsMagConv2StprPaused;
	
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	p_bLinkProjMagConvLanePrep ACCESS p_NtParamProjMagConvLane1Prep;

	p_bLinkUIOpsAct ACCESS p_UIOpsAct;
	p_bLinkSimuRun ACCESS p_SimuRun;
	p_bLinkSimuStop ACCESS p_SimuStop;
	//Pass Data To Internal Use
//	p_eAct ACCESS p_UIOpsAct;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
