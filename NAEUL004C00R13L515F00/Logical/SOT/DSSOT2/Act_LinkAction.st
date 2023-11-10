(** 2021-04-20 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		IF 	p_bLinkProjMag2ConvPrep THEN
			p_eAct ACCESS p_OpsMagConvUL2DSSOTAct;
		ELSIF p_bLinkProjMagConvLane2Prep THEN
			p_eAct ACCESS p_OpsOutMagConv2DSSOTAct;	
		ELSE
			p_eAct ACCESS ADR(eAct);
		END_IF
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
