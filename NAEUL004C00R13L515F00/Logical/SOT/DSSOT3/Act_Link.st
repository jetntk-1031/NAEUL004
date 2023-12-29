(** 3033-04-30 **)
ACTION Act_Link:
	
		//Ready Send
	tylocalDSSOT.In.bRdySend	:= TRUE;
	
	IF tylocalDSSOT.In.bLinkProjTCPAGVSigPrep THEN //TCP AGV
		tylocalDSSOT.In.bLeftSen := g_tyDInput.bOutMagConvExtSen;
		tylocalDSSOT.In.bRightSen := g_tyDInput.bOutMagConvMidSen;
		tylocalDSSOT.In.bDSB := g_tyTCP.bSvrDSB;	
	
		//Send Complete Signal
		IF EDGENEG(tylocalDSSOT.In.bLeftSen) THEN
			tylocalDSSOT.In.bComplSigOn	:= TRUE;
		END_IF
		
		IF tylocalDSSOT.Out.eStat <> SOTActRun THEN
			tylocalDSSOT.In.bComplSigOn	:= FALSE;
		END_IF
	ELSE	
		tylocalDSSOT.In.bLeftSen := g_tyDInput.bMagConvEntSen3;
		tylocalDSSOT.In.bRightSen := g_tyDInput.bMagPresentSen3;
		tylocalDSSOT.In.bDSB := g_tyDInput.bSOT3AIVReady;	
	
		//Send Complete Signal
		IF EDGENEG(tylocalDSSOT.In.bLeftSen) THEN
			tylocalDSSOT.In.bComplSigOn	:= TRUE;
		END_IF
		
		IF tylocalDSSOT.Out.eStat <> SOTActRun THEN
			tylocalDSSOT.In.bComplSigOn	:= FALSE;
		END_IF
	
	END_IF
	
END_ACTION
