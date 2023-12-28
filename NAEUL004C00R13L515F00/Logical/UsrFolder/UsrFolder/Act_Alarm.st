(** 2019-03-25 **)
ACTION Act_Alarm: 
	
	IF tylocalUsrFolder.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalUsrFolder.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalUsrFolder.Out.eStatus = Error) AND bRstErr THEN
		tylocalUsrFolder.In.eAct	:= UsrFolderActIdle;
		tylocalUsrFolder.Out.eStat	:= UsrFolderActIdle;
	END_IF

	//Error
	IF EDGEPOS(tylocalUsrFolder.Out.eStatus = Error) THEN
		
		tyAlmData.sProgNm		:= p_sProgNm;
		tyAlmData.udiCode		:= udiStatus;
		tyAlmData.eSeverity		:= AlmSeverityError;
		tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
		tyAlmData.bAlm			:= TRUE;
		tyAlmData.udiModuleNum  := udiModuleNum;
		g_sUsrFolderProgNm		:= p_sProgNm;	
		
		//Get Error Message
		IF tyAlmData.udiCode < 10000 OR tyAlmData.udiCode > 10099 THEN
			tyAlmData.sAlmMsg	:= 'Unknown';
			tyAlmData.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData.sAlmMsg	:= a_tyAlmText[tyAlmData.udiCode].sAlmText;
			tyAlmData.sRcyMsg	:= a_tyAlmText[tyAlmData.udiCode].sRcyText;
		END_IF
		
		tylocalUsrFolder.Out.sStatTxt	:= tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tyAlmData.udiCode	:= 0;
		tyAlmData.eSeverity	:= AlmSeverityNA;
		tyAlmData.sAlmMsg	:= '';
		tyAlmData.sRcyMsg	:= '';
		tyAlmData.bAlm			:= FALSE;
		
		tylocalUsrFolder.Out.sStatTxt	:= a_sStatText[tylocalUsrFolder.Out.eStat];
		
	END_IF
	
END_ACTION
