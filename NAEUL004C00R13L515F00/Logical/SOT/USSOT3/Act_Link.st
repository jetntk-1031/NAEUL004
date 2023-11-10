(** 2021-04-20 **)
ACTION Act_Link:
	
	//Ready Receive
	IF p_bLinkSOTReadyOnFirst THEN
		p_bRdyRcv	:= TRUE;
	ELSE
		p_bRdyRcv ACCESS p_DISOT3Available;
	END_IF
	
	p_bLeftSen ACCESS p_DIMagConvEntSen3;
	p_bRightSen ACCESS p_DIMagPresentSen3;
	p_bUMA ACCESS p_DISOT3Available;	
	p_bUMASize ACCESS p_DISOT3SizeLarge;	
	p_bDirLToR := TRUE;

	p_bComplSigOn	:= p_bRightSen;
	
END_ACTION
