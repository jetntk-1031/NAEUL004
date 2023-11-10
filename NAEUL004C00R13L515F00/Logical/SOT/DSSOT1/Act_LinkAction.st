(** 2021-04-20 **)
ACTION Act_LinkAction:
	
	IF p_bLinkOpsRun = TRUE THEN
		IF p_bLinkProjMag1ConvPrep THEN
			p_eAct ACCESS p_OpsMagConvUL1DSSOTAct;
		ELSIF p_bLinkProjMagConvLane1Prep THEN
			p_eAct ACCESS p_OpsOutMagConvDSSOTAct;	
		ELSE
			p_eAct ACCESS ADR(eAct);
		END_IF
	ELSE
		p_eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
