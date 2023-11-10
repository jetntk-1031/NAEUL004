(** 2021-04-20 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		IF p_bLinkProjMag2ConvPrep THEN
			p_eAct ACCESS p_OpsMagConvUL2USSOTAct;
		ELSIF p_bLinkProjMagConvLane2Prep THEN
			p_eAct ACCESS p_OpsInMagConv2USSOTAct;	
		ELSE
			p_eAct ACCESS ADR(eAct);
		END_IF
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
