ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalUSSMEMA.In.udiRstErr := g_tyRstErr.bReset;
	tylocalUSSMEMA.In.bLeftSen := g_tyDInput.bConvRgtSen;
	tylocalUSSMEMA.In.bUBA := g_tyDSSMEMA2.bDBA;
	tylocalUSSMEMA.In.bUBAStat := g_tyDSSMEMA2.bDBAStat;
	tylocalUSSMEMA.In.tRstDlyTm := g_tyNtParamCurr.tUSSMEMA2RstDlyTm;
	tylocalUSSMEMA.In.tSigInChkTm := g_tyNtParamCurr.tUSSMEMA2SigInChkTm;
	tylocalUSSMEMA.In.sProgNm := g_tyNtParamCurr.sUSSMEMA2ProgNm;
	

	
	
	IF g_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
		tylocalUSSMEMA.In.bRdyRcv	:=  g_tyOpsMagConvUL2.bMagBffrAvl = TRUE;
	ELSE
		tylocalUSSMEMA.In.bRdyRcv	:= g_tyOpsLifMagUL.eMagNxtLoad = MagNxtLoadMag2;
	END_IF
	
	tylocalUSSMEMA.In.bComplSigOn	:= tylocalUSSMEMA.In.bLeftSen = FALSE;
	
	tylocalUSSMEMA.In.bDirLToR	:= tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToR OR tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToL;F eStat <> SMEMAActRun THEN
	tylocalUSSMEMA.In.bComplSigOn	:= FALSE;
	END_IF
	
	//Direction
	tylocalUSSMEMA.In.bDirLToR	:= tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToR OR tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToL;
	
	
	IF tylocalUSSMEMA.In.bLinkOpsRun = TRUE THEN
		IF g_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
			tylocalUSSMEMA.In.eAct := g_tyOpsMagConvUL2.eUSSMEMAAct;
		ELSE
			tylocalUSSMEMA.In.eAct := g_tyOpsLifMagUL.eUSSMEMAAct2;
		END_IF
	ELSE
		tylocalUSSMEMA.In.eAct := eAct;
	END_IF
END_ACTION
