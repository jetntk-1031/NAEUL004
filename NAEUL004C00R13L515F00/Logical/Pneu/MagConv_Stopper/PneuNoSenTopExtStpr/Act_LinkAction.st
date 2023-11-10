(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsMagConvStprTopExitAct<> 0 THEN
		//	p_eAct ACCESS p_OpsTravLifULStopperAct1;
		p_eAct ACCESS p_OpsMagConvStprTopExitAct;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIStopper3Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
