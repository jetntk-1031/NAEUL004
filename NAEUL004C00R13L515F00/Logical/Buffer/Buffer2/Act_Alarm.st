(** 2019-03-25 **)
ACTION Act_Alarm: 
	IF tylocalBuffer.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalBuffer.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Reset Error
	IF (tylocalBuffer.Out.eStatus = Error) AND bRstErr THEN
		tylocalBuffer.In.eAct	:= BufferActIdle;
		tylocalBuffer.Out.eStat	:= BufferActIdle;
	END_IF
	//Error
	IF EDGEPOS(tylocalBuffer.Out.eStatus = Error) THEN
		
		tylocalBuffer.Out.tyAlmData.sProgNm		:= tylocalBuffer.In.sProgNm;
		tylocalBuffer.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalBuffer.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalBuffer.Out.tyAlmData.udiRunTime	:= tylocalBuffer.Out.tyAlmData.udiRunTime + 1;
		tylocalBuffer.Out.tyAlmData.bAlm			:= TRUE;
		tylocalBuffer.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sBufferProgNm			:= tylocalBuffer.In.sProgNm;

		tylocalBuffer.Out.sStatTxt	:= tylocalBuffer.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tylocalBuffer.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalBuffer.Out.tyAlmData.udiCode	:= 0;
		tylocalBuffer.Out.tyAlmData.eSeverity	:= AlmSeverityNA;

		tylocalBuffer.Out.tyAlmData.bAlm			:= FALSE;
		tylocalBuffer.Out.sStatTxt	:= a_sStatText[tylocalBuffer.Out.eStat];
		
	END_IF
	
END_ACTION
