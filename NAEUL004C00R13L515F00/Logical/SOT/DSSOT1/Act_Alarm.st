(** 2021-04-20 **)
ACTION Act_Alarm: 
		//Reset Error
	IF (tylocalDSSOT.Out.eStatus = Error) AND bRstErr THEN
		tylocalDSSOT.In.eAct	:= MagConv2ClpActIdle;
		tylocalDSSOT.Out.eStat	:= MagConv2ClpActIdle;
	END_IF
	
	IF tylocalDSSOT.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalDSSOT.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalDSSOT.Out.eStatus = Error) THEN
		
		
		tylocalDSSOT.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalDSSOT.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalDSSOT.Out.tyAlmData.udiRunTime	:= tylocalDSSOT.Out.tyAlmData.udiRunTime + 1;
		tylocalDSSOT.Out.tyAlmData.bAlm			:= TRUE;
		tylocalDSSOT.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sDSSOTProgNm		    := tylocalDSSOT.In.sProgNm;
		
		tylocalDSSOT.Out.sStatTxt	:= tylocalDSSOT.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalDSSOT.Out.tyAlmData.udiCode	:= 0;
		tylocalDSSOT.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalDSSOT.Out.tyAlmData.bAlm			:= FALSE;
		tylocalDSSOT.Out.sStatTxt	:= a_sStatText[tylocalDSSOT.Out.eStat];
		
	END_IF
	
END_ACTION
