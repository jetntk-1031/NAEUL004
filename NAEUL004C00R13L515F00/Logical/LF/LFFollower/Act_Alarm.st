
ACTION Act_Alarm: 
	
	IF g_tyRstErrOut.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= g_tyRstErrOut.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(eStatus = Error) THEN
		
		
		tylocalLFFollower.Out.tyAlmData.udiCode			:= udiStatus;
		tylocalLFFollower.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalLFFollower.Out.tyAlmData.udiRunTime		:= tyAlmData.udiRunTime + 1;
		tylocalLFFollower.Out.tyAlmData.bAlm			:= TRUE;
		tylocalLFFollower.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sLFFollowerProgNm					:= g_tyNtParamCurr.sLFFollowerProgNm;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalLFFollower.Out.tyAlmData.udiCode		:= 0;
		tylocalLFFollower.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalLFFollower.Out.tyAlmData.bAlm		:= FALSE;
		
	END_IF
	
END_ACTION
