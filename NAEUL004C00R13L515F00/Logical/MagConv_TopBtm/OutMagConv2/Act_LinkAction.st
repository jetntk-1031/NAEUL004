(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsOutMagConv2Act <> 0 THEN
//		IF p_bLinkOpsInitULDStepInitDone2 = FALSE THEN
//			p_eAct ACCESS p_OpsLifMagULOutMagConv2Act;
//		ELSE
			p_eAct ACCESS p_OpsOutMagConv2Act;
//		END_IF
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIOutMagConv2Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
