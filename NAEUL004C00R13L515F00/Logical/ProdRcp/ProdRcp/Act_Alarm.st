
ACTION Act_Alarm: 
	
	IF tylocalProdRcp.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalProdRcp.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalProdRcp.Out.eStatus = Error) AND bRstErr THEN
		p_eAct						:= ProdRcpActIdle;
		tylocalProdRcp.Out.eStat	:= ProdRcpActIdle;
	END_IF
	
	//Reset Done
	IF tylocalProdRcp.Out.eStatus = Done AND p_eAct = ProdRcpActIdle THEN
		tylocalProdRcp.Out.eStat	:= ProdRcpActIdle;
	END_IF
	
	
	//Error
	IF EDGEPOS(tylocalProdRcp.Out.eStatus = Error) THEN
		
		tylocalProdRcp.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalProdRcp.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalProdRcp.Out.tyAlmData.udiRunTime		:= tylocalProdRcp.Out.tyAlmData.udiRunTime + 1;
		tylocalProdRcp.Out.tyAlmData.bAlm			:= TRUE;
		tylocalProdRcp.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sProdRcpProgNm				:= tylocalProdRcp.In.sProgNm;
	
		
	ELSIF bRstErr AND (tylocalProdRcp.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalProdRcp.Out.tyAlmData.udiCode	:= 0;
		tylocalProdRcp.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
	    tylocalProdRcp.Out.tyAlmData.bAlm		:= FALSE;
		
		tylocalProdRcp.Out.sStatTxt	:= a_sStatText[tylocalProdRcp.Out.eStat];
		
	END_IF
	
END_ACTION
