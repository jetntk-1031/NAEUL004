(** 2019-03-25 **)
ACTION Act_Alarm: 
	//Reset Error
	IF (tylocalAGV.Out.eStatus = Error) AND bRstErr THEN
		tylocalAGV.In.eAct	:= AGVMagActIdle;
		tylocalAGV.Out.eStat	:= AGVMagActIdle;
	END_IF
	
	//Error	
	IF tylocalAGV.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalAGV.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	IF EDGEPOS(tylocalAGV.Out.eStatus = Error) THEN
		
		tylocalAGV.Out.tyAlmData.sProgNm		:= tylocalAGV.In.sProgNm;
		tylocalAGV.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalAGV.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalAGV.Out.tyAlmData.udiRunTime	:= tylocalAGV.Out.tyAlmData.udiRunTime + 1;
		tylocalAGV.Out.tyAlmData.bAlm			:= TRUE;
		tylocalAGV.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sAGVProgNm		:= tylocalAGV.In.sProgNm;
		
		//Get Error Message
		IF tylocalAGV.Out.tyAlmData.udiCode < 10000 OR tylocalAGV.Out.tyAlmData.udiCode > 10099 THEN
			tylocalAGV.Out.tyAlmData.sAlmMsg	:= 'Unknown';
			tylocalAGV.Out.tyAlmData.sRcyMsg	:= 'Unknown';
		ELSE
			tylocalAGV.Out.tyAlmData.sAlmMsg	:= a_tyAlmText[tylocalAGV.Out.tyAlmData.udiCode].sAlmText;
			tylocalAGV.Out.tyAlmData.sRcyMsg	:= a_tyAlmText[tylocalAGV.Out.tyAlmData.udiCode].sRcyText;
		END_IF
		
		tylocalAGV.Out.sStatTxt	:= tylocalAGV.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tylocalAGV.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalAGV.Out.tyAlmData.udiCode	:= 0;
		tylocalAGV.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalAGV.Out.tyAlmData.sAlmMsg	:= '';
		tylocalAGV.Out.tyAlmData.sRcyMsg	:= '';
		tylocalAGV.Out.tyAlmData.bAlm			:= FALSE;
		tylocalAGV.Out.sStatTxt	:= a_sStatText[tylocalAGV.Out.eStat];
		
	END_IF
	
END_ACTION
