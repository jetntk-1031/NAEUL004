
ACTION Act_Alarm: 
	
	IF tylocalTime.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalTime.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	IF (eStatus = Error) AND bRstErr THEN
		tylocalTime.In.eAct	:= TimeActIdle;
		tylocalTime.Out.eStat	:= TimeActIdle;
	END_IF
	
	
	//Error
	IF EDGEPOS(eStatus = Error) THEN
		
		tylocalTime.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalTime.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalTime.Out.tyAlmData.udiRunTime	:= tylocalTime.Out.tyAlmData.udiRunTime + 1;
		tylocalTime.Out.tyAlmData.bAlm			:= TRUE;
		tylocalTime.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_tyAlmProgNm.sTimeProgNm				:= tylocalTime.In.sProgNm;
		
	ELSIF bRstErr AND (tylocalTime.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalTime.Out.tyAlmData.udiCode	:= 0;
		tylocalTime.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalTime.Out.tyAlmData.bAlm		:= FALSE;
		
		tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
	END_IF
		
	//Error
	IF EDGEPOS(eStatus1 = Error) THEN
		
		tylocalTime.Out.tyAlmData1.udiCode		:= udiStatus1;
		tylocalTime.Out.tyAlmData1.eSeverity	:= AlmSeverityError;
		tylocalTime.Out.tyAlmData1.udiRunTime	:= tylocalTime.Out.tyAlmData1.udiRunTime + 1;
		
		tylocalTime.Out.tyAlmData1.bAlm			:= TRUE;
		tylocalTime.Out.tyAlmData1.udiModuleNum := udiModuleNum;
		g_tyAlmProgNm.sTimeProgNm				:= tylocalTime.In.sProgNm;
		

		
	ELSIF bRstErr AND (tylocalTime.Out.tyAlmData1.udiCode <> 0) THEN
		
		tylocalTime.Out.tyAlmData1.udiCode		:= 0;
		tylocalTime.Out.tyAlmData1.eSeverity	:= AlmSeverityNA;
		tylocalTime.Out.tyAlmData1.bAlm			:= FALSE;
		
		tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
		
	END_IF
	
END_ACTION
