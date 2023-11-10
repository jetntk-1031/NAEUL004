(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsMagConv2StprTopExitAct <> 0  THEN
		p_eAct ACCESS p_OpsMagConv2StprTopExitAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIStopper3Act2;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
