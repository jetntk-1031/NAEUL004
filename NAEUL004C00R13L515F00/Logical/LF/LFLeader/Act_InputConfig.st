ACTION Act_InputConfig:
	
	tylocalLFLeader.In.bPrep	:= g_tyNtParamCurr.bLFPrep;
	tylocalLFLeader.In.bDis 	:= g_tyStartUp.bRun OR (NOT g_tyNtParamCurr.bLFUsrSetPrep AND NOT g_tyNtParamCurr.bLeaderMc) OR (g_tyNtParamCurr.bLFUsrSetPrep AND NOT g_tyMcParamCurr.bLFLeaderMc);
	tylocalLFLeader.In.bEn		:= g_tyMcParamCurr.bLFLeaderMc;

	p_eAct ACCESS p_UILFLeaderAct;
	p_sReqProdRcpNm ACCESS p_ProdRcpCurrRcp0Nm;
	
	IF g_tyNtParamCurr.bLFProdWidth2Prep THEN
		p_diReqProdWidth ACCESS p_ProdRcpCurrRcp0Width2;
	ELSE
		p_diReqProdWidth ACCESS p_ProdRcpCurrRcp0Width;
	END_IF
	

	IF (g_tyUIOut.bUILeaderRun = TRUE) AND ((bRun1 = FALSE) OR (bRun2 = FALSE)) THEN
		bUILeaderStart	:= TRUE;
		bUILeaderStop	:= FALSE;
	END_IF
	
	IF (g_tyUIOut.bUILeaderRun = FALSE) AND ((bRun1 = TRUE) OR (bRun2 = TRUE)) THEN
		bUILeaderStart	:= FALSE;
		bUILeaderStop	:= TRUE;
	END_IF
	
	IF bUILeaderStart = TRUE THEN
		p_eAct	:= LFActBGStartRun;
		
		IF (tylocalLFLeader.Out.eStat = LFActBGStartRun) AND (tylocalLFLeader.Out.eStatus = Done) THEN
			p_eAct			:= LFActIdle;
			bUILeaderStart	:= FALSE;
		END_IF
		
	ELSIF bUILeaderStop = TRUE THEN
		p_eAct	:= LFActBGStopRun;
		
		IF (tylocalLFLeader.Out.eStat = LFActBGStopRun) AND (tylocalLFLeader.Out.eStatus = Done) THEN
			p_eAct			:= LFActIdle;
			bUILeaderStop	:= FALSE;
		END_IF
		
	END_IF
END_ACTION
