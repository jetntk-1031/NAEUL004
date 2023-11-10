(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsMagConv2StprTopMidAct <> 0  THEN
		p_eAct ACCESS p_OpsMagConv2StprTopMidAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIStopper2Act2;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
