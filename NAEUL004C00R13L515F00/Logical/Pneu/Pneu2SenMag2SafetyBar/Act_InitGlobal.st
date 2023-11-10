(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bMagRcpCurrRcpSBarDisabled ACCESS p_MagRcpCurrRcpSBarDisabled;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjMagSafetyBarPrep;
//	p_bDis ACCESS p_McParamMagAWDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamMag2SafetyBarTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamMag2SafetyBarProgNm;
	p_bExtSen ACCESS p_DIMag2SafetyBarExtRS;
	p_bRetSen ACCESS p_DIMag2SafetyBarRetRS;
	p_tExtTO ACCESS p_NtParamMag2SafetyBarExtTO;
	p_tRetTO ACCESS p_NtParamMag2SafetyBarRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
