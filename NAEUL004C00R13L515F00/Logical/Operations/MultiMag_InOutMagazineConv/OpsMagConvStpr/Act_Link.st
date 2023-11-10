(** 2018-12-11 **)
ACTION Act_Link:
	
	IF (ABS(p_diLinkLiftBtmActualPos - p_diLinkLiftBtmPos))<500 THEN
		
		p_bLiftBtmPos	:= TRUE;
		
	ELSE
		p_bLiftBtmPos	:= FALSE;
	
	END_IF
	
	IF (ABS(p_diLinkLiftBtmActualPos - p_diLinkLiftTopPos))<500 THEN
		
		p_bLiftTopPos	:= TRUE;
		
	ELSE
		p_bLiftTopPos	:= FALSE;
	
	END_IF
	
	
	p_bBtmEntToLift		:= p_bMagPresentSen = FALSE AND p_bBtmMagConvZ1Sen AND ((p_eLiftMagConvStat = MagConvActEntStopClp (*OR p_eLiftMagConvStat = MagConvActInitStopClp*)) AND p_eLiftMagConvStatus = Busy) AND p_bLiftBtmPos;
	
	p_bTopExitFromLift	:= (p_eLiftMagConvStat = MagConvActExitClpr AND p_eLiftMagConvStatus = Busy) AND p_bLiftTopPos;
	
	
	p_bBtmExitFromLift	:=  (p_eLiftMagConvStat = MagConvActExitClpr AND p_eLiftMagConvStatus = Busy) AND p_bLiftBtmPos;
	
	p_bTopEntToLift		:= p_bMagPresentSen = FALSE AND p_bTopMagConvZ1Sen 
							AND ((p_eLiftMagConvStat = MagConvActEntClpStop) 
							AND p_eLiftMagConvStatus = Busy) 
							AND p_bLiftTopPos;
	
	p_bTopEntFromMagConv := p_bEnterSig;// AND p_bTopMagConvEndSen;
	p_bBtmExitFromMagConv := p_bExitSig AND p_bBtmMagConvEndSen;
	p_bBtmExitMnl		 := p_bLinkOpsMnlUnloadMag AND p_bLinkOpsOutMagConvStepWaitRmv AND p_bBtmMagConvEndSen;

END_ACTION
