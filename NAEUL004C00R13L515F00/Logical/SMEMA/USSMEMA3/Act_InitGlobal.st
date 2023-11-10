(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkNtParamProjMagConvPrep ACCESS p_NtParamProjMag3ConvPrep;
	
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
//	p_bLinkOpsMagMagBffrAvl ACCESS p_OpsMagUL3MagBffrAvl;
	p_bLinkOpsMagConvMagBffrAvl ACCESS p_OpsMagConvUL3MagBffrAvl;
	
	p_eLinkOpsLifMagULMagNxtLoad ACCESS p_OpsLifMagULMagNxtLoad;
	p_bLinkProjLifterMagPlatform ACCESS p_NtParamProjLifterMagPlatform;
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bLeftSen ACCESS p_DIConvRgtSen;
	p_bUBA ACCESS p_DSSMEMA3DBA;
	p_bUBAStat ACCESS p_DSSMEMA3DBAStat;
	p_tRstDlyTm ACCESS p_NtParamUSSMEMA3RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSMEMA3SigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSMEMA3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
