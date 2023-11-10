(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
		
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_diLinkLifterActualPos ACCESS p_LifterBtmActualPos;
	p_diLinkLifterBtmPos ACCESS p_McParamLifterBtmPos;
	p_diLinkLifterTopPos ACCESS p_McParamLifterTopPos;
//	p_bLinkOpsInitULDStepInitDone ACCESS p_OpsInitULDStepInitDone;
	p_bLinkOpsLifMagULStepExtMag1 ACCESS p_OpsLifMagULStepExtMag1;
	
	//Pass Data To Internal Use
	p_bPrep ACCESS p_NtParamProjLifter2Prep;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamLifterMagOnDirMod;
	p_diInitTm ACCESS p_McParamLifterMagConvRunTmOut;
	p_diTxInTimeOut ACCESS p_McParamLifterMagConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamLifterMagConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjLifterMagConvDir;
	p_tMtrOffDlyTm ACCESS p_NtParamLifterMagMtrOffDlyTm;
	p_bClprClampSen ACCESS p_DIMag1FixedClampRS;
	p_bClprUnclampSen ACCESS p_DIMag1FixedUnclampRS;
	p_sProgNm ACCESS p_NtParamLifterMagProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	// chuanyee Add
	p_bMagPresentSen ACCESS p_DILifterLmtSW;
	(* Always Change If Project Change *)
	
END_ACTION
