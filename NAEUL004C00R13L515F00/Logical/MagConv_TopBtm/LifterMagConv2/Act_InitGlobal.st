(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_diLinkLifterActualPos ACCESS p_Lifter2ActualPos;
	p_diLinkLifterBtmPos ACCESS p_McParamLifterBtmPos2;
	p_diLinkLifterTopPos ACCESS p_McParamLifterTopPos2;
//	p_bLinkOpsInitULDStepInitDone ACCESS p_OpsInitULDStepInitDone;
	p_bLinkOpsLifMagULStepExtMag2 ACCESS p_OpsLifMagULStepExtMag2;

	//Pass Data To Internal Use
	p_bPrep ACCESS p_NtParamProjLifter2Prep;
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamLifterMag2OnDirMod;
	p_diInitTm ACCESS p_McParamLifterMagConv2RunTmOut;
	p_diTxInTimeOut ACCESS p_McParamLifterMagConv2RunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamLifterMagConv2RunTmOut;
	p_eDirection ACCESS p_NtParamProjLifterMagConv2Dir;
	p_tMtrOffDlyTm ACCESS p_NtParamLifterMag2MtrOffDlyTm;
	p_bClprClampSen ACCESS p_DIMag2FixedClampRS; //Clamp
	p_bClprUnclampSen ACCESS p_DIMag2FixedUnclampRS;
	p_sProgNm ACCESS p_NtParamLifterMag2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	// chuanyee Add
	p_bMagPresentSen ACCESS p_DILifter2LmtSW;
	(* Always Change If Project Change *)
	
END_ACTION
