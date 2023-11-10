(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsOutMagConvAct <> 0 THEN
//		IF p_bLinkOpsInitULDStepInitDone = FALSE THEN
//			p_eAct ACCESS p_OpsLifMagULOutMagConvAct;
//		ELSE
			p_eAct ACCESS p_OpsOutMagConvAct;
//		END_IF
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIOutMagConvAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
