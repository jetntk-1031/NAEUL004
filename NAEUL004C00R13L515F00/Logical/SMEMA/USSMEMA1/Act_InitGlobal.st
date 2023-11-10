(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag1ConvPrep;
	
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
//	p_bLinkOpsMagMagBffrAvl ACCESS p_OpsMagUL1MagBffrAvl;
	p_bLinkOpsMagConvMagBffrAvl ACCESS p_OpsMagConvUL1MagBffrAvl;
	
	p_eLinkOpsLifMagULMagNxtLoad ACCESS p_OpsLifMagULMagNxtLoad;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bLeftSen ACCESS p_DIConvRgtSen;
	p_bUBA ACCESS p_DSSMEMA1DBA;
	p_bUBAStat ACCESS p_DSSMEMA1DBAStat;
	p_tRstDlyTm ACCESS p_NtParamUSSMEMA1RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSMEMA1SigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSMEMA1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
