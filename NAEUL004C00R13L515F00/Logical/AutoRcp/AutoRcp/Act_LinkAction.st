(** 2021-08-01 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupAutoRcpsAct;
	ELSE 
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
