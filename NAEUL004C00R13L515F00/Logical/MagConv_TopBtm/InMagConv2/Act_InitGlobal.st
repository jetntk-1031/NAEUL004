(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Links
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkOpsInitULDStepInitDone2 ACCESS p_OpsLifMagULStepInitDone2;
	p_bLinkInMagConv2MidSen ACCESS p_DIInMagConv2MidSen;
	p_bLinkInMagConv2ExtSen ACCESS p_DIInMagConv2ExtSen;
	p_bLinkLifter2LmtSW ACCESS p_DILifter2LmtSW;
	p_bLinkOpsInMagConv2StepEntToMid ACCESS p_OpsInMagConv2StepEntToMid;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamInMagConv2OnDirMod;
	p_tMtrOffDlyTm ACCESS p_NtParamInMagConv2MtrOffDlyTm;
	p_diInitTm ACCESS p_McParamInMagConv2RunTmOut;
	p_diTxInTimeOut ACCESS p_McParamInMagConv2RunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamInMagConv2RunTmOut;
//	p_bRightSen ACCESS p_DIInMagConv2MidSen;
	p_eDirection ACCESS p_NtParamProjInMagConv2Dir;
	p_sProgNm ACCESS p_NtParamInMagConv2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
