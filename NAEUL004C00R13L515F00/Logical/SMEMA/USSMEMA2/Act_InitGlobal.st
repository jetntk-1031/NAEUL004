(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag2ConvPrep;
	
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
//	p_bLinkOpsMagMagBffrAvl ACCESS p_OpsMagUL2MagBffrAvl;
	p_bLinkOpsMagConvMagBffrAvl ACCESS p_OpsMagConvUL2MagBffrAvl;
	
	p_eLinkOpsLifMagULMagNxtLoad ACCESS p_OpsLifMagULMagNxtLoad;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bLeftSen ACCESS p_DIConvRgtSen;
	p_bUBA ACCESS p_DSSMEMA2DBA;
	p_bUBAStat ACCESS p_DSSMEMA2DBAStat;
	p_tRstDlyTm ACCESS p_NtParamUSSMEMA2RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSMEMA2SigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSMEMA2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
