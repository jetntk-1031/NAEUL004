(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_tyLinkDI.diOutMagConvExtSen = 0 THEN
		IF EDGENEG (p_bLeftSen) AND (eStat = MagConvActEnt) THEN
			bTmr := TRUE;
		END_IF
		
		IF bTmr	= TRUE THEN
			fbOutMagConvStopTm(IN := TRUE, PT:=T#3500ms);
	
			IF fbOutMagConvStopTm.Q THEN	
				fbOutMagConvStopTm(IN:=FALSE);
				
				p_bRightSen := TRUE;
				bTmr		:= FALSE;
			END_IF
		END_IF
		
		IF (eStat = MagConvActEnt AND eStatus = Done) THEN
			p_bRightSen		:= FALSE;
		END_IF
		
	ELSIF p_bLinkOpsOutMagConStepEntMag THEN 	//add
		p_bRightSen ACCESS p_DIOutMagConvExtSen;
	ELSIF p_bLinkOpsOutMagConStepEntMidMag THEN //add
		p_bRightSen ACCESS p_DIOutMagConvMidSen;
	ELSE
		p_bRightSen ACCESS p_DIOutMagConvExtSen;
	END_IF
	
	IF EDGEPOS(eStatus = Error) THEN
		bMtrSigOnOrLToR	:= FALSE;
		bMtrDirOrRToL	:= FALSE;
	END_IF

END_ACTION
