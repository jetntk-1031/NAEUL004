(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkConvHvBrd ACCESS p_PshrConvHvBrd;
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bGdBrd ACCESS p_PshrConvGdBrd;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bRightSen ACCESS p_DIConvRgtSen;
	p_bClrSen ACCESS p_DIConvClrSen;
	p_bDSB ACCESS p_USSMEMA3USB;
	p_tRstDlyTm ACCESS p_NtParamDSSMEMA3RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamDSSMEMA3SigInChkTm;
	p_sProgNm ACCESS p_NtParamDSSMEMA3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
