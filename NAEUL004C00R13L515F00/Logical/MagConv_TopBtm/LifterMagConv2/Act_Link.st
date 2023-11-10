(** 2019-03-29 **)
ACTION Act_Link:
	
	IF (p_eAct = MagConvActEntClpStop OR p_eAct = MagConvActEnt OR p_eAct = MagConvActExitClpr OR p_eAct = MagConvActExit) AND (ABS(p_diLinkLifterActualPos - p_diLinkLifterTopPos))<500 THEN
		p_bLeftSen ACCESS p_DILifter2LmtSW;
		p_bRightSen ACCESS p_DIInMagConv2ExtSen;
	ELSIF (p_eAct = MagConvActExitClpr OR p_eAct = MagConvActExit) OR p_bLinkOpsLifMagULStepExtMag2 THEN //AND (ABS(p_diLinkLifterActualPos - p_diLinkLifterBtmPos))<500 THEN
		p_bLeftSen ACCESS p_DILifter2LmtSW;
		p_bRightSen ACCESS p_DIOutMagConv2EntSen;
	
	ELSIF (p_eAct = MagConvActInitClpStop) AND eStatus <> Done THEN
		
		fbLeftSenOn(IN := TRUE, PT := T#5s);
		IF p_bMagPresentSen AND fbLeftSenOn.Q = FALSE AND p_bLeftSen THEN
			p_bLeftSen	:= FALSE;
		END_IF
		IF p_bMagPresentSen AND fbLeftSenOn.Q THEN
			p_bLeftSen  := TRUE;
		END_IF
		
		p_bRightSen ACCESS ADR(bRightSen);
		
	ELSIF (p_eAct = MagConvActInitClpStop) AND eStatus = Done THEN
		p_bLeftSen		:= FALSE;
		fbLeftSenOn(IN := FALSE);
		p_bRightSen ACCESS ADR(bRightSen);
	
	ELSE
		IF p_bMagPresentSen THEN
			fbLeftSenOnChk(IN := p_bMagPresentSen, PT := T#3s);
			IF fbLeftSenOnChk.Q THEN
				p_bLeftSen := p_bMagPresentSen;
				fbLeftSenOnChk(IN := FALSE);
			ELSE
			END_IF			
			p_bRightSen ACCESS ADR(bRightSen);
		ELSE
			
			p_bLeftSen := p_bMagPresentSen;
			p_bRightSen ACCESS ADR(bRightSen);
		END_IF
	END_IF
	
	fbClprDlyTm.PT		:= p_tMtrOffDlyTm / 2;

	IF p_bLinkDISafetyRlySig = FALSE THEN
		bClprClampCtrl := FALSE;
		fbLeftSenOnChk(IN := FALSE);
		fbLeftSenOn(IN := FALSE);
	END_IF
	
	IF EDGEPOS(eStatus = Error) THEN
		bMtrSigOnOrLToR	:= FALSE;
		bMtrDirOrRToL	:= FALSE;
		fbLeftSenOnChk(IN := FALSE);
		fbLeftSenOn(IN := FALSE);
	END_IF
		
END_ACTION
