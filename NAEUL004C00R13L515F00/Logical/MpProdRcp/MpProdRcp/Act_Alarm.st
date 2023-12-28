
ACTION Act_Alarm:
	
	IF tylocalMpProdRcp.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalMpProdRcp.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalMpProdRcp.Out.eStatus = Error) AND bRstErr THEN
		tylocalMpProdRcp.In.eAct	:= MpProdRcpActIdle;
		tylocalMpProdRcp.Out.eStat	:= MpProdRcpActIdle;
	END_IF
	
	//Reset Done
	IF tylocalMpProdRcp.Out.eStatus = Done AND tylocalMpProdRcp.In.eAct = MpProdRcpActIdle THEN
		tylocalMpProdRcp.Out.eStat	:= MpProdRcpActIdle;
	END_IF
	
	
	//Error
	IF EDGEPOS(tylocalMpProdRcp.Out.eStatus = Error) THEN		
		
		tylocalMpProdRcp.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMpProdRcp.Out.tyAlmData.eSeverity	:= AlmSeverityError;
		tylocalMpProdRcp.Out.tyAlmData.udiRunTime	:= tylocalMpProdRcp.Out.tyAlmData.udiRunTime + 1;
		tylocalMpProdRcp.Out.tyAlmData.bAlm			:= TRUE;
		tylocalMpProdRcp.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sMpProdRcpProgNm				:= tylocalMpProdRcp.In.sProgNm;
		
	ELSIF bRstErr AND (tylocalMpProdRcp.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalMpProdRcp.Out.tyAlmData.udiCode		:= 0;
		tylocalMpProdRcp.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalMpProdRcp.Out.tyAlmData.bAlm			:= FALSE;
		
		sStatTxt	:= a_sStatText[tylocalMpProdRcp.Out.eStat];
		
	END_IF
	
END_ACTION
