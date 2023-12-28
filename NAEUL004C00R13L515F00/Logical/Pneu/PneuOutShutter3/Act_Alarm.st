
ACTION Act_Alarm: 
	
	// Reset Error
	IF tylocalPneu.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalPneu.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Error State
	IF (tylocalPneu.Out.eStatus = Error) AND bRstErr THEN
		tylocalPneu.In.eAct		:= PneuActIdle; //Command Action From Global
		tylocalPneu.Out.eStat	:= PneuActIdle; //Feedback State To Global
	END_IF

	//Error Link To HMI
	IF EDGEPOS(tylocalPneu.Out.eStatus = Error) THEN
		
		tylocalPneu.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalPneu.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalPneu.Out.tyAlmData.udiRunTime	:= tylocalPneu.Out.tyAlmData.udiRunTime + 1;
		tylocalPneu.Out.tyAlmData.bAlm			:= TRUE;
		tylocalPneu.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_tyAlmProgNm.sPneuShutterProgNm		:= tylocalPneu.In.sProgNm;
		
	ELSIF bRstErr AND (tylocalPneu.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalPneu.Out.tyAlmData.udiCode	:= 0;
		tylocalPneu.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalPneu.Out.tyAlmData.bAlm		:= FALSE;
		
	END_IF
	
END_ACTION
