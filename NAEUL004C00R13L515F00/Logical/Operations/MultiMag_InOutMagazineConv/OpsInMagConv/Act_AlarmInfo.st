(** 2019-01-14 **)
ACTION Act_AlarmInfo: 
	
	//Info
	tyAlmData.sProgNm		:= p_sProgNm;
	tyAlmData.udiCode		:= udiStatus1;
	tyAlmData.eSeverity		:= AlmSeverityInfo;
	tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
	
	//Get Info Message
	IF tyAlmData.udiCode < 10000 OR tyAlmData.udiCode > 10099 THEN
		tyAlmData.sAlmMsg	:= 'Unknown';
		tyAlmData.sRcyMsg	:= 'Unknown';
	ELSE
		tyAlmData.sAlmMsg	:= a_tyAlmText[tyAlmData.udiCode].sAlmText;
		tyAlmData.sRcyMsg	:= a_tyAlmText[tyAlmData.udiCode].sRcyText;
	END_IF
		
END_ACTION
