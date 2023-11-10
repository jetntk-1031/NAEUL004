(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Receive
	IF p_bLinkProjTCPAGVSigPrep THEN
		//TCP package
		IF p_bLinkSOTReadyOnFirst THEN
			p_bRdyRcv	:= TRUE;
		ELSE
			p_bRdyRcv ACCESS p_TCPSvrUBA;
		END_IF
		p_bLeftSen ACCESS p_DIInMagConvMidSen;
		p_bRightSen ACCESS p_DIInMagConvEntSen;
		p_bUMA ACCESS p_TCPSvrUBA;	
		p_bDirLToR := FALSE;
		p_bComplSigOn	:= p_bLeftSen;

	ELSE
		IF p_bLinkSOTReadyOnFirst THEN
			p_bRdyRcv	:= TRUE;
		ELSE
			p_bRdyRcv ACCESS p_DISOT1Available;
		END_IF
		
		p_bLeftSen ACCESS p_DIMagConvEntSen1;
		p_bRightSen ACCESS p_DIMagPresentSen1;
		p_bUMA ACCESS p_DISOT1Available;	
		p_bUMASize ACCESS p_DISOT1SizeLarge;	
		p_bDirLToR := TRUE;
	
		p_bComplSigOn	:= p_bRightSen;
	END_IF
	
END_ACTION
