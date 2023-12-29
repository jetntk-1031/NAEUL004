(** 2021-04-20 **)
ACTION Act_Link:
	
		//Ready Receive
	IF tylocalUSSOT.In.bLinkProjTCPAGVSigPrep THEN
		//TCP package
		IF tylocalUSSOT.In.bLinkSOTReadyOnFirst THEN
			tylocalUSSOT.In.bRdyRcv	:= TRUE;
		ELSE
			tylocalUSSOT.In.bRdyRcv := g_tyTCP.bSvrUBA;
		END_IF
		tylocalUSSOT.In.bLeftSen := g_tyDInput.bInMagConvMidSen;
		tylocalUSSOT.In.bRightSen := g_tyDInput.bInMagConvEntSen;
		tylocalUSSOT.In.bUMA := g_tyTCP.bSvrUBA;	
		tylocalUSSOT.In.bDirLToR := FALSE;
		tylocalUSSOT.In.bComplSigOn	:= tylocalUSSOT.In.bLeftSen;

	ELSE
		IF tylocalUSSOT.In.bLinkSOTReadyOnFirst THEN
			tylocalUSSOT.In.bRdyRcv	:= TRUE;
		ELSE
			tylocalUSSOT.In.bRdyRcv := g_tyDInput.bSOT1AIVAvailable;
		END_IF
		
		tylocalUSSOT.In.bLeftSen := g_tyDInput.bMagConvEntSen1;
		tylocalUSSOT.In.bRightSen := g_tyDInput.bMagPresentSen1;
		tylocalUSSOT.In.bUMA := g_tyDInput.bSOT1AIVAvailable;	
		tylocalUSSOT.In.bUMASize := g_tyDInput.bSOT1AIVSizeLarge;	
		tylocalUSSOT.In.bDirLToR := TRUE;
	
		tylocalUSSOT.In.bComplSigOn	:= tylocalUSSOT.In.bRightSen;
	END_IF
	
END_ACTION
