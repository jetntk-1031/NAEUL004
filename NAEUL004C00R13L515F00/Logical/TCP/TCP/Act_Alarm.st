(** 2019-03-25 **)
ACTION Act_Alarm: 
	
	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		p_eAct	:= TCPActIdle;
		eStat	:= TCPActIdle;
	END_IF
	
	IF p_udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= p_udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Combine Error
	IF eStatus = Error OR eStatus1 = Error OR eStatus2 = Error THEN
		eMainStatus	:= Error;
	ELSE
		eMainStatus	:= eStatus;
	END_IF
	//Error
	IF EDGEPOS(eStatus = Error) THEN
		
		tyAlmData.sProgNm		:= p_sProgNm;
		tyAlmData.udiCode		:= udiStatus;
		tyAlmData.eSeverity		:= AlmSeverityError;
		tyAlmData.udiRunTime	:= tyAlmData.udiRunTime + 1;
		tyAlmData.bAlm			:= TRUE;
		tyAlmData.udiModuleNum  := udiModuleNum;
		g_sTCPProgNm		:= p_sProgNm;	
		
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
	
	//Error
	IF EDGEPOS(eStatus1 = Error) THEN
		
		tyAlmData1.sProgNm		:= p_sProgNm;
		tyAlmData1.udiCode		:= udiStatus1;
		tyAlmData1.eSeverity	:= AlmSeverityError;
		tyAlmData1.udiRunTime	:= tyAlmData1.udiRunTime + 1;
		tyAlmData1.bAlm			:= TRUE;
		tyAlmData1.udiModuleNum  := udiModuleNum;
		g_sTCPProgNm		:= p_sProgNm;
		
		//Get Error Message
		IF tyAlmData1.udiCode < 10000 OR tyAlmData1.udiCode > 10199 THEN
			tyAlmData1.sAlmMsg	:= 'Unknown';
			tyAlmData1.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData1.sAlmMsg	:= a_tyAlmText[tyAlmData1.udiCode].sAlmText;
			tyAlmData1.sRcyMsg	:= a_tyAlmText[tyAlmData1.udiCode].sRcyText;
		END_IF
				
		sStatTxt	:= tyAlmData1.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData1.udiCode <> 0) THEN
		
		tyAlmData1.udiCode		:= 0;
		tyAlmData1.eSeverity	:= AlmSeverityNA;
		tyAlmData1.sAlmMsg		:= '';
		tyAlmData1.sRcyMsg		:= '';
		tyAlmData1.bAlm			:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
		
	END_IF
	
	//Error
	IF EDGEPOS(eStatus2 = Error) THEN
		
		tyAlmData2.sProgNm		:= p_sProgNm;
		tyAlmData2.udiCode		:= udiStatus2;
		tyAlmData2.eSeverity	:= AlmSeverityError;
		tyAlmData2.udiRunTime	:= tyAlmData2.udiRunTime + 1;
		tyAlmData2.bAlm			:= TRUE;
		tyAlmData2.udiModuleNum  := udiModuleNum;
		g_sTCPProgNm		:= p_sProgNm;	
		
		//Get Error Message
		IF tyAlmData2.udiCode < 10000 OR tyAlmData2.udiCode > 10199 THEN
			tyAlmData2.sAlmMsg	:= 'Unknown';
			tyAlmData2.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData2.sAlmMsg	:= a_tyAlmText[tyAlmData2.udiCode].sAlmText;
			tyAlmData2.sRcyMsg	:= a_tyAlmText[tyAlmData2.udiCode].sRcyText;
		END_IF
				
		sStatTxt	:= tyAlmData2.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData2.udiCode <> 0) THEN
		
		tyAlmData2.udiCode		:= 0;
		tyAlmData2.eSeverity	:= AlmSeverityNA;
		tyAlmData2.sAlmMsg		:= '';
		tyAlmData2.sRcyMsg		:= '';
		tyAlmData2.bAlm			:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
		
	END_IF
	
	//Error
	IF (bConnected = FALSE) THEN
		
		tyAlmData3.sProgNm		:= p_sProgNm;
		tyAlmData3.udiCode		:= udiStatus3;
		tyAlmData3.eSeverity	:= AlmSeverityWarning;
		tyAlmData3.udiRunTime	:= tyAlmData3.udiRunTime + 1;
		tyAlmData3.bWarning			:= TRUE;
		tyAlmData3.udiModuleNum  := udiModuleNum;
		g_sTCPProgNm		:= p_sProgNm;	
		//Get Error Message
		IF tyAlmData3.udiCode < 10000 OR tyAlmData3.udiCode > 10199 THEN
			tyAlmData3.sAlmMsg	:= 'Unknown';
			tyAlmData3.sRcyMsg	:= 'Unknown';
		ELSE
			tyAlmData3.sAlmMsg	:= a_tyAlmText[tyAlmData3.udiCode].sAlmText;
			tyAlmData3.sRcyMsg	:= a_tyAlmText[tyAlmData3.udiCode].sRcyText;
			tyAlmData3.sRcyMsg	:= '';
		END_IF
				
		sStatTxt	:= tyAlmData3.sAlmMsg;
		
	ELSIF (bConnected AND (tyAlmData3.udiCode <> 0))  THEN
		
		tyAlmData3.udiCode		:= 0;
		tyAlmData3.eSeverity	:= AlmSeverityNA;
		tyAlmData3.sAlmMsg		:= '';
		tyAlmData3.sRcyMsg		:= '';
		tyAlmData3.bWarning		:= FALSE;
		sStatTxt	:= a_sStatText[eStat];
		
	END_IF
END_ACTION
