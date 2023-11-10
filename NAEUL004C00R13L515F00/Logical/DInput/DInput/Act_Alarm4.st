(** 2019-03-25 **)
ACTION Act_Alarm4: 
	
	//Error
	IF EDGEPOS(eStatus4 = Error) THEN
		
		tyAlmData4.sProgNm		:= p_sProgNm;
		tyAlmData4.udiCode		:= udiStatus4;
		tyAlmData4.eSeverity	:= AlmSeverityError;
		tyAlmData4.udiRunTime	:= tyAlmData4.udiRunTime + 1;
		tyAlmData4.bAlm			:= TRUE;
		tyAlmData4.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;		
		//Get Error Message
		IF tyAlmData4.udiCode < 10000 OR tyAlmData4.udiCode > 10099 THEN
			tyAlmData4.sAlmMsg	:= 'Unknown';
			tyAlmData4.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData4.sAlmMsg	:= a_tyAlmText[tyAlmData4.udiCode].sAlmText;
			tyAlmData4.sRcyMsg	:= a_tyAlmText[tyAlmData4.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (tyAlmData4.udiCode <> 0) THEN
		
		tyAlmData4.udiCode		:= 0;
		tyAlmData4.eSeverity	:= AlmSeverityNA;
		tyAlmData4.sAlmMsg		:= '';
		tyAlmData4.sRcyMsg		:= '';
		tyAlmData4.bAlm			:= FALSE;
	END_IF
	
END_ACTION
