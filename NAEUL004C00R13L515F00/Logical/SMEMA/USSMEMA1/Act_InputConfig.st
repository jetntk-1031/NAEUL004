ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Internal Use
	tylocalUSSMEMA.In.udiRstErr := g_tyRstErr.bReset;
	tylocalUSSMEMA.In.bLeftSen := g_tyDInput.bConvRgtSen;
	tylocalUSSMEMA.In.bUBA := g_tyDSSMEMA1.bDBA;
	tylocalUSSMEMA.In.bUBAStat := g_tyDSSMEMA1.bDBAStat;
	tylocalUSSMEMA.In.tRstDlyTm := g_tyNtParamCurr.tUSSMEMA1RstDlyTm;
	tylocalUSSMEMA.In.tSigInChkTm := g_tyNtParamCurr.tUSSMEMA1SigInChkTm;
	tylocalUSSMEMA.In.sProgNm := g_tyNtParamCurr.sUSSMEMA1ProgNm;
	
	(* Always Change If Project Change *)
	
	
	IF g_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
		tylocalUSSMEMA.In.bRdyRcv	:=  g_tyOpsMagConvUL1.bMagBffrAvl = TRUE;
	ELSE
		tylocalUSSMEMA.In.bRdyRcv	:= g_tyOpsLifMagUL.eMagNxtLoad = MagNxtLoadMag1;
	END_IF
	
	tylocalUSSMEMA.In.bComplSigOn	:= tylocalUSSMEMA.In.bLeftSen = FALSE;
	
	tylocalUSSMEMA.In.bDirLToR	:= tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToR OR tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToL;F eStat <> SMEMAActRun THEN
		tylocalUSSMEMA.In.bComplSigOn	:= FALSE;
	END_IF
	
	//Direction
	tylocalUSSMEMA.In.bDirLToR	:= tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToR OR tylocalUSSMEMA.In.eLinkConvDir = ConvDirLToL;
	
	
	IF tylocalUSSMEMA.In.bLinkOpsRun = TRUE THEN
		IF g_tyNtParamCurr.bProjLifterMagPlatform = FALSE THEN
			tylocalUSSMEMA.In.eAct := g_tyOpsMagConvUL1.eUSSMEMAAct;
		ELSE
			tylocalUSSMEMA.In.eAct := g_tyOpsLifMagUL.eUSSMEMAAct1;
		END_IF
	ELSE
		tylocalUSSMEMA.In.eAct := eAct;
	END_IF
	
	
END_ACTION
