(** 2019-03-25 **)
ACTION Act_Alarm6: 
	
	//Error
	IF EDGEPOS(eStatus6 = Error) THEN
		
		tyAlmData6.sProgNm		:= p_sProgNm;
		tyAlmData6.udiCode		:= udiStatus6;
		tyAlmData6.eSeverity	:= AlmSeverityError;
		tyAlmData6.udiRunTime	:= tyAlmData6.udiRunTime + 1;
		tyAlmData6.bAlm			:= TRUE;
		tyAlmData6.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;	
		//Get Error Message
		IF tyAlmData6.udiCode < 10000 OR tyAlmData6.udiCode > 10099 THEN
			tyAlmData6.sAlmMsg	:= 'Unknown';
			tyAlmData6.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData6.sAlmMsg	:= a_tyAlmText[tyAlmData6.udiCode].sAlmText;
			tyAlmData6.sRcyMsg	:= a_tyAlmText[tyAlmData6.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (tyAlmData6.udiCode <> 0) THEN
		
		tyAlmData6.udiCode		:= 0;
		tyAlmData6.eSeverity	:= AlmSeverityNA;
		tyAlmData6.sAlmMsg		:= '';
		tyAlmData6.sRcyMsg		:= '';
		tyAlmData6.bAlm			:= FALSE;
	END_IF
	
END_ACTION
