(** 2019-03-25 **)
ACTION Act_Alarm: 
	IF tylocalAlm.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalAlm.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Checking which Warning is clear 
	IF a_tyWarningCurrList[1].sMsg <> '' AND p_tyLinkLibVerAlmData.udiCode = 0 THEN
		
		FOR udi2 := 1 TO (udiWarningMax-1) DO
			udiRecorded1:= udiRecorded[udi2];
			IF 	(pa_tyAlmData[udiRecorded1].eSeverity =  AlmSeverityNA) AND udiRecorded1<> 0 THEN
				bRstWarning := TRUE;	
				EXIT;
			ELSE 
				bRstWarning := FALSE;
			END_IF
			
		END_FOR 
	ELSE
		bRstWarning := FALSE;			
	END_IF

	//Reset Error
	IF (tylocalAlm.Out.eStatus = Error) AND bRstErr THEN
		tylocalAlm.In.eAct	:= AlarmActIdle;
		tylocalAlm.Out.eStat	:= AlarmActIdle;
	END_IF
	
	
	//Error
	IF EDGEPOS(tylocalAlm.Out.eStatus = Error) THEN
		
		tyAlmData.udiCode				:= udiStatus;
		tyAlmData.eSeverity				:= AlmSeverityError;
		tyAlmData.udiRunTime			:= tyAlmData.udiRunTime + 1;
		tyAlmData.bAlm					:= TRUE;
		tyAlmData.udiModuleNum  		:= udiModuleNum;
		g_tyAlmProgNm.sAlarmProgNm		:= g_tyNtParamCurr.sAlmProgNm;	

		//Get Error Message
		IF tyAlmData.udiCode < 10000 OR tyAlmData.udiCode > 10099 THEN
			tyAlmData.sAlmMsg	:= 'Unknown';
			tyAlmData.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData.sAlmMsg	:= a_tyAlmText[tyAlmData.udiCode].sAlmText;
			tyAlmData.sRcyMsg	:= a_tyAlmText[tyAlmData.udiCode].sRcyText;
		END_IF
		
		sStatTxt	:= tyAlmData.sAlmMsg;
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tyAlmData.udiCode	:= 0;
		tyAlmData.eSeverity	:= AlmSeverityNA;
		tyAlmData.bAlm			:= FALSE;
		sStatTxt	:= a_sStatText[tylocalAlm.Out.eStat];
		
	END_IF
	
END_ACTION
