
ACTION Act_Alarm: 
	
	IF g_tyRstErrOut.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= g_tyRstErrOut.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalLFLeader.Out.eStatus = Error) AND bRstErr THEN
		p_eAct	:= LFActIdle;
		tylocalLFLeader.Out.eStat	:= LFActIdle;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalLFLeader.Out.eStatus = Error) THEN
		
		
		tylocalLFLeader.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalLFLeader.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalLFLeader.Out.tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
		tylocalLFLeader.Out.tyAlmData.bAlm			:= TRUE;
		tylocalLFLeader.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sLFLeaderProgNm		:= g_tyNtParamCurr.sLFLeaderProgNm;			

		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalLFLeader.Out.tyAlmData.udiCode	:= 0;
		tylocalLFLeader.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalLFLeader.Out.tyAlmData.bAlm		:= FALSE;
		tylocalLFLeader.Out.sStatTxt	:= a_sStatText[tylocalLFLeader.Out.eStat];
		
	END_IF
	
END_ACTION
