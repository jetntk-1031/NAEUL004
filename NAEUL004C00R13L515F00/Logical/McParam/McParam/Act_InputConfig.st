
ACTION Act_InputConfig:
	
	tylocalMcParam.In.udiRstErr 	:= g_tyRstErrOut.udiRstErr;
	tylocalMcParam.In.tyMcParmWr	:= g_tyUIOut.tyMcParamWr;	
	tylocalMcParam.In.sProgNm		:= g_tyNtParamCurr.sMcParamProgNm;
	
	IF g_tyStartUp.bRun THEN
		tylocalMcParam.In.eAct  := g_tyStartUp.eMcParamAct;
	ELSIF g_tySvyHermes.bWriteConfig THEN
		tylocalMcParam.In.eAct  := g_tySvyHermes.eMcParamAct;
	ELSIF g_tyRmtHermes.bWriteConfig THEN
		tylocalMcParam.In.eAct  := g_tyRmtHermes.eMcParamAct;
	ELSE
		tylocalMcParam.In.eAct	:= g_tyUIOut.eMnlAct.eMcParamAct;
	END_IF
	
END_ACTION
