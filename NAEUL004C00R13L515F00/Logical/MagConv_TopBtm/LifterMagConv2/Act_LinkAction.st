(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
//		IF p_bLinkOpsInitULDStepInitDone = FALSE THEN
//			p_eAct ACCESS p_OpsInitULDLifterMagConvAct;
//		ELSE
			p_eAct ACCESS p_OpsLifMagULLifterConv2Act;
//		END_IF
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UILifterMagConv2Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
