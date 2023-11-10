(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		IF p_bLinkProjLifterMagPlatform = FALSE THEN
			p_eAct ACCESS p_OpsMagConvUL3USSMEMAAct;
		ELSE
			p_eAct ACCESS p_OpsLifMagULUSSMEMAAct3;
		END_IF
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
