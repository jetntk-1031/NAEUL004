(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkInitOpsTravULDone ACCESS p_OpsTravLifULInitDone;
	p_bLinkMcParamInShutDis ACCESS p_McParamInShutterDis;
	
	
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjInletShutPrep;
	//	p_bDis ACCESS p_McParamInShutterDis;
	p_bUISimu ACCESS p_UISimuMod;
	p_bManual ACCESS p_UIMnlMod;
	p_bSimu ACCESS p_UISimuMod;
	p_bTwoCtrlIn ACCESS p_NtParamInShutterTwoCtrlIn;
	p_sProgNm ACCESS p_NtParamInShutterProgNm;
	p_bExtSen ACCESS p_DIInShutterCloseRS;
	p_bRetSen ACCESS p_DIInShutterOpenRS;
	p_tExtTO ACCESS p_NtParamInShutterExtTO;
	p_tRetTO ACCESS p_NtParamInShutterRetTO;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
