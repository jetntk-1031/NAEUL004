(** 2019-03-29 **)
ACTION Act_LinkAction:
	IF p_bLinkProjMag1ConvPrep THEN
		p_eAct ACCESS p_OpsMagConvUL1AGVMagAct;
	ELSIF p_bLinkProjMagConvLane1Prep THEN
	//	p_eAct ACCESS p_OpsInMagConvAGVMagAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
	IF EDGENEG(p_bLinkOpsRun) THEN
		p_eAct	:= AGVMagActIdle;
	END_IF
	
	
END_ACTION
