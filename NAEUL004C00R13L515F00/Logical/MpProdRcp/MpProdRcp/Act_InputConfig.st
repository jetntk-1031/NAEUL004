
ACTION Act_InputConfig:
	
	pa_tyMpProdRcp ACCESS p_ProdRcpCurrList; // Accessing the Current Product Recipe List
	
	tylocalMpProdRcp.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	tylocalMpProdRcp.In.sPVName	  := g_tyNtParamCurr.sMpProdRcpPVNm;
	tylocalMpProdRcp.In.sFileName := g_tyNtParamCurr.sMpProdRcpFileNm;
	tylocalMpProdRcp.In.sProgNm   := g_tyNtParamCurr.sProdRcpProgNm;
	
	IF g_tyStartUp.bRun THEN
		tylocalMpProdRcp.In.eAct := g_tyStartUp.eMpProdRcpAct;
	ELSE
		tylocalMpProdRcp.In.eAct := g_tyUIOut.eMnlAct.eMpProdRcpAct;
	END_IF
	
	

	
END_ACTION
