
ACTION Act_Alarm: 
	
	IF tylocalNtParam.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalNtParam.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalNtParam.Out.eStatus = Error) AND bRstErr THEN
		tylocalNtParam.In.eAct	  := NtParamActIdle;
		tylocalNtParam.Out.eStat  := NtParamActIdle;
	END_IF
	
	//Reset Done
	IF tylocalNtParam.Out.eStatus = Done AND tylocalNtParam.In.eAct = NtParamActIdle THEN
		tylocalNtParam.Out.eStat 	:= NtParamActIdle;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalNtParam.Out.eStatus = Error) THEN
		
		tylocalNtParam.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalNtParam.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalNtParam.Out.tyAlmData.udiRunTime	    := tylocalNtParam.Out.tyAlmData.udiRunTime + 1;
		tylocalNtParam.Out.tyAlmData.bAlm			:= TRUE;
		tylocalNtParam.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sNtParamProgNm				:= sProgNm;
		
		
	ELSIF bRstErr AND (tylocalNtParam.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalNtParam.Out.tyAlmData.udiCode	:= 0;
		tylocalNtParam.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalNtParam.Out.tyAlmData.bAlm		:= FALSE;
		
		sStatTxt	:= a_sStatText[tylocalNtParam.Out.eStat];
		
	END_IF
	
END_ACTION
