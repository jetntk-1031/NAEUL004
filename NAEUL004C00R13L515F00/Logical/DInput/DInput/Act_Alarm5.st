(** 2019-03-25 **)
ACTION Act_Alarm5: 
	
	//Error
	IF EDGEPOS(eStatus5 = Error) THEN
		
		tyAlmData5.sProgNm		:= p_sProgNm;
		tyAlmData5.udiCode		:= udiStatus5;
		tyAlmData5.eSeverity	:= AlmSeverityError;
		tyAlmData5.udiRunTime	:= tyAlmData5.udiRunTime + 1;
		tyAlmData5.bAlm			:= TRUE;
		tyAlmData5.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;		
		//Get Error Message
		IF tyAlmData5.udiCode < 10000 OR tyAlmData5.udiCode > 10099 THEN
			tyAlmData5.sAlmMsg	:= 'Unknown';
			tyAlmData5.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData5.sAlmMsg	:= a_tyAlmText[tyAlmData5.udiCode].sAlmText;
			tyAlmData5.sRcyMsg	:= a_tyAlmText[tyAlmData5.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (tyAlmData5.udiCode <> 0) THEN
		
		tyAlmData5.udiCode		:= 0;
		tyAlmData5.eSeverity	:= AlmSeverityNA;
		tyAlmData5.sAlmMsg		:= '';
		tyAlmData5.sRcyMsg		:= '';
		tyAlmData5.bAlm			:= FALSE;
	END_IF
	
END_ACTION
