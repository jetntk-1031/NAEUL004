
ACTION Act_InputConfig:
		
	tylocalNtParam.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	
	IF g_tyStartUp.bRun THEN
		tylocalNtParam.In.eAct := g_tyStartUp.eNtParamAct;
	ELSE
		tylocalNtParam.In.eAct := tylocalNtParam.In.eAct;
	END_IF
	
END_ACTION
