(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsInMagConvAct <> 0 THEN
//		IF p_bLinkOpsInitULDStepInitDone = FALSE THEN
//			p_eAct ACCESS p_OpsLifMagULInMagConvAct;
//		ELSE
			p_eAct ACCESS p_OpsInMagConvAct;
//		END_IF
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIInMagConvAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
