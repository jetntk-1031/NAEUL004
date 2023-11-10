(** 2019-03-29 **)
ACTION Act_Link:
	//InMag unloader -> R-L 
	IF p_eAct = MagConvActInit OR p_eAct = MagConvActEnt THEN 
		IF p_bLinkOpsInMagConvStepEntToMid THEN
			p_bRightSen ACCESS p_DIInMagConvEntSen;
			p_bLeftSen		:= p_bLinkInMagConvMidSen;
		ELSE
			p_bRightSen ACCESS p_DIInMagConvMidSen;
			p_bLeftSen		:= p_bLinkInMagConvExtSen;
		END_IF
		
	//	p_bRightSen ACCESS p_DIInMagConvMidSen;
	ELSIF p_eAct = MagConvActExit THEN
		p_bLeftSen		:= p_bLinkLifterLmtSW = FALSE;
		p_bRightSen ACCESS p_DIInMagConvMidSen;
	ELSE
		p_bRightSen ACCESS p_DIInMagConvMidSen;
	END_IF
		
	IF EDGEPOS(eStatus = Error) THEN
		bMtrSigOnOrLToR	:= FALSE;
		bMtrDirOrRToL	:= FALSE;
	END_IF
	
END_ACTION
