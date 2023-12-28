(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalDSSMEMA.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	tylocalDSSMEMA.In.bGdBrd := g_tyPshrConvGdBrd;
	tylocalDSSMEMA.In.bLeftSen := g_tyDInput.bConvLftSen;
	tylocalDSSMEMA.In.bRightSen := g_tyDInput.bConvRgtSen;
	tylocalDSSMEMA.In.bClrSen := g_tyDInput.bConvClrSen;
	tylocalDSSMEMA.In.bDSB := g_tyUSSMEMA3.bUSB;
	tylocalDSSMEMA.In.tRstDlyTm := g_tyNtParamCurr.tDSSMEMA3RstDlyTm;
	tylocalDSSMEMA.In.tSigInChkTm := g_tyNtParamCurr.tDSSMEMA3SigInChkTm;
	tylocalDSSMEMA.In.sProgNm := g_tyNtParamCurr.sDSSMEMA3ProgNm;

	
	
	
	(tylocalDSSMEMA.In.bRdySend	:= g_tyPshrConv.bHvBrd AND g_tyOpsTravLifUL.eTravLifULPosGo = TravLifULPosDS3;
	
	tylocalDSSMEMA.In.bComplSigOn	:= g_tyPshrConv.bHvBrd = FALSE AND tylocalDSSMEMA.In.bClrSen = FALSE;
	
	tylocalDSSMEMA.In.bDirLToR	:= g_tyNtParamCurr.eProjConvDir = ConvDirLToR OR g_tyNtParamCurr.eProjConvDir = ConvDirLToL;
	
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalDSSMEMA.In.eAct := g_tyOpsTravLifULDSSMEMAAct3;
	ELSE
		tylocalDSSMEMA.In.eAct ACCESS ADR(eAct);
	END_IF
	
	
	(* Always Change If Project Change *)
	
	
END_ACTION
