(** 2019-04-09 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		p_eAct ACCESS p_OpsMagConvUL2StepSelClampCtrl;
	ELSIF p_bManual = TRUE THEN
		p_eAct ACCESS p_UIMagConvSelClp2Act;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
