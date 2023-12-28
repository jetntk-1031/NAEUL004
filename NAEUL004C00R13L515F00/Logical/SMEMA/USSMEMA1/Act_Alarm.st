(** 2019-03-25 **)
ACTION Act_Alarm: 
	//Reset Error
	IF tylocalUSSMEMA.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalUSSMEMA.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Error State
	IF (tylocalUSSMEMA.Out.eStatus = Error) AND bRstErr THEN
		tylocalUSSMEMA.In.eAct		:= SMEMAActIdle;
		tylocalUSSMEMA.Out.eStat	:= SMEMAActIdle;
	END_IF

	//Error Link To HMI
	IF EDGEPOS(tylocalUSSMEMA.Out.eStatus = Error) THEN
	
		tylocalUSSMEMA.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalUSSMEMA.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalUSSMEMA.Out.tyAlmData.udiRunTime		:= tylocalUSSMEMA.Out.tyAlmData.udiRunTime + 1;
		tylocalUSSMEMA.Out.tyAlmData.bAlm			:= TRUE;
		tylocalUSSMEMA.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sUSSMEMAProgNm				:= tylocalUSSMEMA.In.sProgNm;
	
		
	ELSIF bRstErr AND (tylocalUSSMEMA.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalUSSMEMA.Out.tyAlmData.udiCode	:= 0;
		tylocalUSSMEMA.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalUSSMEMA.Out.tyAlmData.bAlm		:= FALSE;
		
		tylocalUSSMEMA.Out.sStatTxt	:= a_sStatText[tylocalUSSMEMA.Out.eStat];
		
	END_IF
	
END_ACTION
