(** 2021-08-01 **)
ACTION Act_Alarm: //General
	
	//Error
	IF EDGEPOS(eStatus = Error) THEN
		
		tyAlmData.sProgNm		:= p_sProgNm;
		tyAlmData.udiCode		:= udiStatus;
		tyAlmData.eSeverity		:= AlmSeverityError;
		tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
		tyAlmData.bAlm			:= TRUE;
		tyAlmData.udiModuleNum  := udiModuleNum;
		g_sSvyHermesProgNm		:= p_sProgNm;
		//Get Error Message
		IF tyAlmData.udiCode < 10000 OR tyAlmData.udiCode > 10199 THEN
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
		tyAlmData.sAlmMsg	:= '';
		tyAlmData.sRcyMsg	:= '';
		tyAlmData.bAlm			:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
		
	END_IF
	
END_ACTION
