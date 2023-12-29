
ACTION Act_Alarm: 
	
	IF g_tyRstErrOut.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= g_tyRstErrOut.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalFollower.Out.eStatus = Error) THEN
		
		tylocalFollower.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalFollower.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalFollower.Out.tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
		tylocalFollower.Out.tyAlmData.bAlm			:= TRUE;
		tylocalFollower.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sLFFollowerProgNm				 := g_tyNtParamCurr.sFollower1ProgNm;
		
	ELSIF bRstErr AND (tylocalFollower.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalFollower.Out.tyAlmData.udiCode	:= 0;
		tylocalFollower.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalFollower.Out.tyAlmData.bAlm		:= FALSE;
		
	END_IF
	
END_ACTION
