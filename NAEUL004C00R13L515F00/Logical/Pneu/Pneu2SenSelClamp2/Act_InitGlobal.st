(** 2029-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMagAutoVerifyPrep;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamSelClamp2TwoCtrlIn;
	p_sProgNm ACCESS p_NtParamSelClamp2ProgNm;
	p_bExtSen ACCESS p_DIMag2SelUnclampRS;
//	p_bRetSen ACCESS p_DIOutShutterOpenRS;
	p_tExtTO ACCESS p_NtParamSelClamp2ExtDlyTm;
	p_tRetTO ACCESS p_NtParamSelClamp2RetDlyTm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
