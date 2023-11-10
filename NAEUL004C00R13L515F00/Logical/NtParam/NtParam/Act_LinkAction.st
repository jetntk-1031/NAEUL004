(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkStartupRun = TRUE THEN
		p_eAct ACCESS p_StartupNtParamAct;
	ELSIF p_bSimu THEN
		p_eAct ACCESS p_UINtWr;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
