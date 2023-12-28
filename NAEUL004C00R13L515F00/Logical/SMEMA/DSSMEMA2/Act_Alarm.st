(** 2019-03-25 **)
ACTION Act_Alarm: 
	
		
	IF tylocalDSSMEMA.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalDSSMEMA.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalDSSMEMA.Out.eStatus = Error) AND bRstErr THEN
		tylocalDSSMEMA.In.eAct	:= SMEMAActIdle;
		tylocalDSSMEMA.Out.eStat:= SMEMAActIdle;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalDSSMEMA.Out.eStatus = Error) THEN
		
		tylocalDSSMEMA.Out.tyAlmData.sProgNm		:= tylocalDSSMEMA.In.sProgNm;
		tylocalDSSMEMA.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalDSSMEMA.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalDSSMEMA.Out.tyAlmData.udiRunTime		:= tylocalDSSMEMA.Out.tyAlmData.udiRunTime + 1;
		tylocalDSSMEMA.Out.tyAlmData.bAlm			:= TRUE;
		tylocalDSSMEMA.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sDSSMEMAProgNm		:= tylocalDSSMEMA.In.sProgNm;
		
		
	ELSIF bRstErr AND (tylocalDSSMEMA.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalDSSMEMA.Out.tyAlmData.udiCode	:= 0;
		tylocalDSSMEMA.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalDSSMEMA.Out.tyAlmData.bAlm		:= FALSE;
		
		tylocalDSSMEMA.Out.sStatTxt	:= a_sStatText[tylocalDSSMEMA.Out.eStat];
		
	END_IF
	
END_ACTION
