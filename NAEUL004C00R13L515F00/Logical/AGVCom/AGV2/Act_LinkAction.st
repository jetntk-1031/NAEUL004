(** 2019-03-29 **)
ACTION Act_LinkAction:
	IF p_bLinkProjMag2ConvPrep THEN
		p_eAct ACCESS p_OpsMagConvUL2AGVMagAct;
	ELSIF p_bLinkProjMagConvLane2Prep THEN
	//	p_eAct ACCESS p_OpsInMagConv2AGVMagAct;
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
	IF EDGENEG(p_bLinkOpsRun) THEN
		p_eAct	:= AGVMagActIdle;
	END_IF
	
	
END_ACTION
