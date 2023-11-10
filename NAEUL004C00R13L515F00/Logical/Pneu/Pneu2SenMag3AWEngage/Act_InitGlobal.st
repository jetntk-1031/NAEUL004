(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkNtParamProjMagAWPrep ACCESS p_NtParamProjMagAWPrep;
	p_bLinkNtParamProjMag ACCESS p_NtParamProjMag;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bDis ACCESS p_McParamMagAWDis;
	p_bManual ACCESS p_UIMnlMod;
	p_bTwoCtrlIn ACCESS p_NtParamMag3AWEngageTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamMag3AWEngageProgNm;
	p_bExtSen ACCESS p_DIMag3WallEngageRS;
	p_bRetSen ACCESS p_DIMag3WallDisengageRS;
	p_tExtTO ACCESS p_NtParamMag3AWEngageExtTO;
	p_tRetTO ACCESS p_NtParamMag3AWEngageRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
