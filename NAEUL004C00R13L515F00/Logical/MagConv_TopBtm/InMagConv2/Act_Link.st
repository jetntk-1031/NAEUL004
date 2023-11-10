(** 2019-03-29 **)
ACTION Act_Link:
	//InMag unloader -> R-L 
	IF p_eAct = MagConvActInit OR p_eAct = MagConvActEnt THEN 
		IF p_bLinkOpsInMagConv2StepEntToMid THEN
			p_bRightSen ACCESS p_DIInMagConv2EntSen;
			p_bLeftSen		:= p_bLinkInMagConv2MidSen;
		ELSE
			p_bRightSen ACCESS p_DIInMagConv2MidSen;
			p_bLeftSen		:= p_bLinkInMagConv2ExtSen;
		END_IF
		
	//	p_bRightSen ACCESS p_DIInMagConvMidSen;
	ELSIF p_eAct = MagConvActExit THEN
		p_bLeftSen		:= p_bLinkLifter2LmtSW = FALSE;
		p_bRightSen ACCESS p_DIInMagConv2MidSen;
	ELSE
		p_bRightSen ACCESS p_DIInMagConv2MidSen;
	END_IF
		
	IF EDGEPOS(eStatus = Error) THEN
		bMtrSigOnOrLToR	:= FALSE;
		bMtrDirOrRToL	:= FALSE;
	END_IF
	
END_ACTION
