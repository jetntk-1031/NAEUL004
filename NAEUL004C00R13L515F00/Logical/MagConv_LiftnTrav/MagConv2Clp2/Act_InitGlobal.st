(** 2019-10-30 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	p_bLinkMagSmallSen ACCESS p_DIMagConvSmallMagSen2;
	p_bLinkMagLargeSen ACCESS p_DIMagConvLargeMagSen2;
	p_bLinkFixClprUnClampSen ACCESS p_DIMag2FixedUnclampRS;
	p_bLinkFixClprClampSen ACCESS p_DIMag2FixedClampRS; //Pneumatic Clamp RS
	p_bLinkFixClprMagDetectSen ACCESS p_DIMag2FixedClampSen; // Clamping Done Before Pneumatic Clamp Reed Switch for special Condition 
	p_bLinkFixClprMagDetectSenPrep ACCESS p_NtParamProjFixClpMagDSenPrep; // Fixed Clamp Detect Sensor Prep before Clamp RS
	
	p_bLinkMagOpsStepMagFullExit ACCESS p_OpsMagConvUL2MagFullExit;
	p_bLinkDIMagEntSen ACCESS p_DIMagConvEntSen2;
	p_bLinkDO ACCESS p_DO;
	
	p_bLinkNtParamMagModelAutoVerify ACCESS p_NtParamProjMagAutoVerifyPrep;
	
	p_bWidthChkInterrupt ACCESS p_DICurtainSen;
	p_bWidthChkSen	ACCESS p_DIMagWidthChkSen;
	
	p_tyDISettings ACCESS p_NtParamDISettings;
	p_bLinkFixClprClampSen ACCESS ADR(bFixClprClampSen);//p_DIMag1FixedSideDetect;//p_DIMag1FixedClampRS; //initLocal at 1st

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMag2ConvPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamMagConv2OnDirMod;
	p_diInitTm ACCESS p_McParamMag2ConvRunTmOut;
	p_tMtrOffDlyTm ACCESS p_NtParamMagConv2MtrOffDlyTm;
	p_diTxInTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_diTxOutTimeOut ACCESS p_McParamMag2ConvRunTmOut;
	p_eDirection ACCESS p_NtParamProjMagConvDir;
	p_sProgNm ACCESS p_NtParamMagConv2ProgNm;
	p_tClprClampTO ACCESS p_NtParamMagConv2ClprClampTO;
	p_tClprUnclampTO ACCESS p_NtParamMagConv2ClprUnclampTO;
//	p_bLeftSen ACCESS p_DIMagPresentSen2;
	p_bRightSen	ACCESS p_DIMagPresentSen2;

	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
