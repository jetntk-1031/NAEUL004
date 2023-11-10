(** 2019-03-22 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_eUISimuAct ACCESS p_UISimuAct;
	
	//Pass Data To Internal Use	
	p_bLinkPaused ACCESS p_OpsPause;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	(* Always Change If Project Change *)
	
END_ACTION
