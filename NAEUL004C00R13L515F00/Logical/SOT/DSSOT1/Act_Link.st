(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Send
	p_bRdySend	:= TRUE;
	
	IF p_bLinkProjTCPAGVSigPrep THEN //TCP AGV
		p_bLeftSen ACCESS p_DIOutMagConvExtSen;
		p_bRightSen ACCESS p_DIOutMagConvMidSen;
		p_bDSB ACCESS p_TCPSvrDSB;	
	
		//Send Complete Signal
		IF EDGENEG(p_bLeftSen) THEN
			p_bComplSigOn	:= TRUE;
		END_IF
		
		IF eStat <> SOTActRun THEN
			p_bComplSigOn	:= FALSE;
		END_IF
	ELSE	
		p_bLeftSen ACCESS p_DIMagConvEntSen1;
		p_bRightSen ACCESS p_DIMagPresentSen1;
		p_bDSB ACCESS p_DISOT1Ready;	
	
		//Send Complete Signal
		IF EDGENEG(p_bLeftSen) THEN
			p_bComplSigOn	:= TRUE;
		END_IF
		
		IF eStat <> SOTActRun THEN
			p_bComplSigOn	:= FALSE;
		END_IF
	
	END_IF
	
END_ACTION
