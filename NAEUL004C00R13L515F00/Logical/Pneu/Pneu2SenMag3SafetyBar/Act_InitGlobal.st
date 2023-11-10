(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkNtPrmProjMagSafetyBarPrep ACCESS p_NtParamProjMagSafetyBarPrep;
	p_bLinkNtPrmProjMag ACCESS p_NtParamProjMag;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bMagRcpCurrRcpSBarDisabled ACCESS p_MagRcpCurrRcpSBarDisabled;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
//	p_bDis ACCESS p_McParamMagAWDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamMag3SafetyBarTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamMag3SafetyBarProgNm;
	p_bExtSen ACCESS p_DIMag3SafetyBarExtRS;
	p_bRetSen ACCESS p_DIMag3SafetyBarRetRS;
	p_tExtTO ACCESS p_NtParamMag3SafetyBarExtTO;
	p_tRetTO ACCESS p_NtParamMag3SafetyBarRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
