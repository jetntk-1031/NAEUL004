(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Receive
	IF p_bLinkProjTCPAGVSigPrep THEN
		//TCP package
		IF p_bLinkSOTReadyOnFirst THEN
			p_bRdyRcv	:= TRUE;
		ELSE
			p_bRdyRcv ACCESS p_TCPSvrUBA2;
		END_IF
		p_bLeftSen ACCESS p_DIInMagConv2MidSen;
		p_bRightSen ACCESS p_DIInMagConv2EntSen;
		p_bUMA ACCESS p_TCPSvrUBA2;	
		p_bDirLToR := FALSE;
		p_bComplSigOn	:= p_bLeftSen;

	ELSE
		IF p_bLinkSOTReadyOnFirst THEN
			p_bRdyRcv	:= TRUE;
		ELSE
			p_bRdyRcv ACCESS p_DISOT2Available;
		END_IF
		
		p_bLeftSen ACCESS p_DIMagConvEntSen2;
		p_bRightSen ACCESS p_DIMagPresentSen2;
		p_bUMA ACCESS p_DISOT2Available;	
		p_bUMASize ACCESS p_DISOT2SizeLarge;	
		p_bDirLToR := TRUE;
	
		p_bComplSigOn	:= p_bRightSen;
	END_IF
	
END_ACTION
