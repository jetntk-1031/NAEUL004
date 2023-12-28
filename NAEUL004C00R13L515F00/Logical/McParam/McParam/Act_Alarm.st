(** 2019-03-25 **)
ACTION Act_Alarm: 
	
	IF tylocalMcParam.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalMcParam.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalMcParam.Out.eStatus = Error) AND bRstErr THEN
		tylocalMcParam.In.eAct	:= McParamActIdle;
		tylocalMcParam.Out.eStat	:= McParamActIdle;
	END_IF
	
	//Reset Done
	IF tylocalMcParam.Out.eStatus = Done AND tylocalMcParam.In.eAct = McParamActIdle THEN
		tylocalMcParam.Out.eStat	:= McParamActIdle;
	END_IF
	
	//Set p_eAct
	IF tylocalMcParam.Out.eStatus = Idle THEN
		tylocalMcParam.Out.eStat	:= tylocalMcParam.In.eAct;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalMcParam.Out.eStatus = Error) THEN
		
		tylocalMcParam.Out.tyAlmData.sProgNm		:= g_tyNtParamCurr.sMcParamFileNm;
		tylocalMcParam.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMcParam.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalMcParam.Out.tyAlmData.udiRunTime		:= tylocalMcParam.Out.tyAlmData.udiRunTime + 1;
		tylocalMcParam.Out.tyAlmData.bAlm			:= TRUE;
		tylocalMcParam.Out.tyAlmData.udiModuleNum  	:= udiModuleNum;
		g_sMcParamProgNm		:= g_tyNtParamCurr.sMcParamFileNm;
		
		//Get Error Message
		IF tylocalMcParam.Out.tyAlmData.udiCode < 10000 OR tylocalMcParam.Out.tyAlmData.udiCode > 10099 THEN
			tylocalMcParam.Out.tyAlmData.sAlmMsg	:= 'Unknown';
			tylocalMcParam.Out.tyAlmData.sRcyMsg	:= 'Unknown';
		ELSE
			tylocalMcParam.Out.tyAlmData.sAlmMsg	:= a_tyAlmText[tylocalMcParam.Out.tyAlmData.udiCode].sAlmText;
			tylocalMcParam.Out.tyAlmData.sRcyMsg	:= a_tyAlmText[tylocalMcParam.Out.tyAlmData.udiCode].sRcyText;
		END_IF
		
		tylocalMcParam.Out.sStatTxt	:= tylocalMcParam.Out.tyAlmData.sAlmMsg;
	ELSIF bConnected = FALSE THEN
		tylocalMcParam.Out.tyAlmData.sProgNm		:= g_tyNtParamCurr.sMcParamFileNm;
		tylocalMcParam.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMcParam.Out.tyAlmData.eSeverity		:= AlmSeverityWarning;
		tylocalMcParam.Out.tyAlmData.udiRunTime		:= tylocalMcParam.Out.tyAlmData.udiRunTime + 1;
		tylocalMcParam.Out.tyAlmData.bWarning		:= TRUE;
		tylocalMcParam.Out.tyAlmData.udiModuleNum 	:= udiModuleNum;
		g_sMcParamProgNm							:= g_tyNtParamCurr.sMcParamFileNm;
		
		//Get Error Message
		IF tylocalMcParam.Out.tyAlmData.udiCode < 10000 OR tylocalMcParam.Out.tyAlmData.udiCode > 10099 THEN
			tylocalMcParam.Out.tyAlmData.sAlmMsg	:= 'Unknown';
			tylocalMcParam.Out.tyAlmData.sRcyMsg	:= 'Unknown';
		ELSE
			tylocalMcParam.Out.tyAlmData.sAlmMsg	:= a_tyAlmText[tylocalMcParam.Out.tyAlmData.udiCode].sAlmText;
			tylocalMcParam.Out.tyAlmData.sRcyMsg	:= a_tyAlmText[tylocalMcParam.Out.tyAlmData.udiCode].sRcyText;
		END_IF
		
		tylocalMcParam.Out.sStatTxt	:= tylocalMcParam.Out.tyAlmData.sAlmMsg;	
	ELSIF bRstErr AND (tylocalMcParam.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalMcParam.Out.tyAlmData.udiCode	:= 0;
		tylocalMcParam.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalMcParam.Out.tyAlmData.sAlmMsg	:= '';
		tylocalMcParam.Out.tyAlmData.sRcyMsg	:= '';
		tylocalMcParam.Out.tyAlmData.bAlm			:= FALSE;
		tylocalMcParam.Out.tyAlmData.bWarning		:= FALSE;
		tylocalMcParam.Out.sStatTxt	:= a_sStatText[tylocalMcParam.Out.eStat];
		
	END_IF
	
END_ACTION
