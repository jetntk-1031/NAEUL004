(** 2021-08-01 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupHermesAct;
	ELSIF p_bSvyHermesWriteConfig THEN //Changed
		p_eAct ACCESS p_SvyHermesAct;
	ELSIF p_bRmtHermesWriteConfig THEN
		p_eAct ACCESS p_RmtHermesAct;
	ELSIF p_bUISaveHMIConfigure OR p_bUISaveHMISvyConfig THEN //Change
		p_eAct ACCESS p_UIHermesAct;
	END_IF
	
END_ACTION
