(** 2021-04-20 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkSOTReadyOnFirst ACCESS p_NtParamSOTReadyOnFirst;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_diTransferInTO ACCESS p_McParamTranInErrDlyTm;
	p_bEn ACCESS p_McParamAGVComEn;
//	p_bVirtualEn ACCESS p_UIVSOTUSEn;
//	p_bUBAVirtual ACCESS p_UIVSOTUBA;
	p_tRstDlyTm ACCESS p_NtParamUSSOT3RstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSOT3SigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSOT3ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
