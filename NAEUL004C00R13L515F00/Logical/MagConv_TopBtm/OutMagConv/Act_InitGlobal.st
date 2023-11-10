(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_tyLinkDI ACCESS p_NtParamDISettings;
	p_bLinkOpsInitULDStepInitDone ACCESS p_OpsLifMagULStepInitDone1;
	p_bLinkOpsOutMagConStepEntMag ACCESS p_OpsOutMagConvStepEntMag;
	p_bLinkOpsOutMagConStepEntMidMag ACCESS p_OpsOutMagConvStepEntMidMag;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamOutMagConvOnDirMod;
	p_tMtrOffDlyTm ACCESS p_NtParamOutMagConvMtrOffDlyTm;
	p_diInitTm ACCESS p_McParamOutMagConvRunTmOut;
	p_diTxInTimeOut ACCESS p_McParamOutMagConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamOutMagConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjOutMagConvDir;
	p_bLeftSen ACCESS p_DIOutMagConvEntSen;
	p_sProgNm ACCESS p_NtParamOutMagConvProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
