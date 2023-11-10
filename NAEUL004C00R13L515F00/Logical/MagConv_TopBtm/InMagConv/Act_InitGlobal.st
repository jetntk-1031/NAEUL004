(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Links
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkOpsInitULDStepInitDone ACCESS p_OpsLifMagULStepInitDone1;
	p_bLinkInMagConvMidSen ACCESS p_DIInMagConvMidSen;
	p_bLinkInMagConvExtSen ACCESS p_DIInMagConvExtSen;
	p_bLinkLifterLmtSW ACCESS p_DILifterLmtSW;
	p_bLinkOpsInMagConvStepEntToMid ACCESS p_OpsInMagConvStepEntToMid;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamInMagConvOnDirMod;
	p_tMtrOffDlyTm ACCESS p_NtParamInMagConvMtrOffDlyTm;
	p_diInitTm ACCESS p_McParamInMagConvRunTmOut;
	p_diTxInTimeOut ACCESS p_McParamInMagConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamInMagConvRunTmOut;
	//p_bRightSen ACCESS p_DIInMagConvMidSen;
	p_eDirection ACCESS p_NtParamProjInMagConvDir;
	p_sProgNm ACCESS p_NtParamInMagConvProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
