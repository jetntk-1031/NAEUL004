(** 2021-04-20 **)
ACTION Act_Alarm: 
		//Reset Error
	IF (tylocalUSSOT.Out.eStatus = Error) AND bRstErr THEN
		tylocalUSSOT.In.eAct	:= MagConv2ClpActIdle;
		tylocalUSSOT.Out.eStat	:= MagConv2ClpActIdle;
	END_IF
	
	IF tylocalUSSOT.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalUSSOT.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalUSSOT.Out.eStatus = Error) THEN
		
		
		tylocalUSSOT.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalUSSOT.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalUSSOT.Out.tyAlmData.udiRunTime	:= tylocalUSSOT.Out.tyAlmData.udiRunTime + 1;
		tylocalUSSOT.Out.tyAlmData.bAlm			:= TRUE;
		tylocalUSSOT.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sUSSOTProgNm		    := tylocalUSSOT.In.sProgNm;
		
		tylocalUSSOT.Out.sStatTxt	:= tylocalUSSOT.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalUSSOT.Out.tyAlmData.udiCode	:= 0;
		tylocalUSSOT.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalUSSOT.Out.tyAlmData.bAlm			:= FALSE;
		tylocalUSSOT.Out.sStatTxt	:= a_sStatText[tylocalUSSOT.Out.eStat];
		
	END_IF
	
END_ACTION
