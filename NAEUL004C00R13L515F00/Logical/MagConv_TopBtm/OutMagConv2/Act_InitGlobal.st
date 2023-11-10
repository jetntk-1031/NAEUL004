(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_tyLinkDI ACCESS p_NtParamDISettings;
	p_bLinkOpsInitULDStepInitDone2 ACCESS p_OpsLifMagULStepInitDone2;
	p_bLinkOpsOutMagConStepEntMag ACCESS p_OpsOutMagConv2StepEntMag;
	p_bLinkOpsOutMagConStepEntMidMag ACCESS p_OpsOutMagConv2StepEntMidMag;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamOutMagConv2OnDirMod;
	p_tMtrOffDlyTm ACCESS p_NtParamOutMagConv2MtrOffDlyTm;
	p_diInitTm ACCESS p_McParamOutMagConv2RunTmOut;
	p_diTxInTimeOut ACCESS p_McParamOutMagConv2RunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamOutMagConv2RunTmOut;
	p_eDirection ACCESS p_NtParamProjOutMagConv2Dir;
	p_bLeftSen ACCESS p_DIOutMagConv2EntSen;
	p_sProgNm ACCESS p_NtParamOutMagConv2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
