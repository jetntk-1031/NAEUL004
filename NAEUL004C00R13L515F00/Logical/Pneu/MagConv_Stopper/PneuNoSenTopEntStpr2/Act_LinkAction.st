(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsMagConv2StprTopEntAct <> 0 THEN
		p_eAct ACCESS p_OpsMagConv2StprTopEntAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIStopper1Act2;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
