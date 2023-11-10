(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE AND p_OpsInMagConv2Act <> 0 THEN
//		IF p_bLinkOpsInitULDStepInitDone2 = FALSE THEN
//			p_eAct ACCESS p_OpsLifMagULInMagConv2Act;
//		ELSE
			p_eAct ACCESS p_OpsInMagConv2Act;
//		END_IF
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIInMagConv2Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
