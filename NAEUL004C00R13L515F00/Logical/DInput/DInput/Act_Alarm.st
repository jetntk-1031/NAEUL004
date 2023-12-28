(** 2019-03-25 **)
ACTION Act_Alarm1: 
	
	IF g_tyRstErrOut.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= g_tyRstErrOut.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus1 = Error) THEN
		
		g_tyDInputOut.tyAlmData1.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData1.udiCode		:= udiStatus1;
		g_tyDInputOut.tyAlmData1.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData1.udiRunTime	:= g_tyDInputOut.tyAlmData1.udiRunTime + 1;
		g_tyDInputOut.tyAlmData1.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData1.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;
		
		//Get Error Message
		IF g_tyDInputOut.tyAlmData1.udiCode < 10000 OR g_tyDInputOut.tyAlmData1.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData1.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData1.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData1.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData1.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData1.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData1.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData1.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData1.udiCode		:= 0;
		g_tyDInputOut.tyAlmData1.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData1.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData1.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData1.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus2 = Error) THEN
		
		g_tyDInputOut.tyAlmData2.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData2.udiCode		:= udiStatus2;
		g_tyDInputOut.tyAlmData2.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData2.udiRunTime	:= g_tyDInputOut.tyAlmData2.udiRunTime + 1;
		g_tyDInputOut.tyAlmData2.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData2.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;		
		//Get Error Message
		IF g_tyDInputOut.tyAlmData2.udiCode < 10000 OR g_tyDInputOut.tyAlmData2.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData2.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData2.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData2.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData2.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData2.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData2.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData2.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData2.udiCode		:= 0;
		g_tyDInputOut.tyAlmData2.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData2.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData2.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData2.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus3 = Error) THEN
		
		g_tyDInputOut.tyAlmData3.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData3.udiCode		:= udiStatus3;
		g_tyDInputOut.tyAlmData3.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData3.udiRunTime	:= g_tyDInputOut.tyAlmData3.udiRunTime + 1;
		g_tyDInputOut.tyAlmData3.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData3.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;	
		//Get Error Message
		IF g_tyDInputOut.tyAlmData3.udiCode < 10000 OR g_tyDInputOut.tyAlmData3.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData3.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData3.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData3.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData3.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData3.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData3.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData3.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData3.udiCode		:= 0;
		g_tyDInputOut.tyAlmData3.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData3.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData3.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData3.bAlm			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus4 = Error) THEN
		
		g_tyDInputOut.tyAlmData4.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData4.udiCode		:= udiStatus4;
		g_tyDInputOut.tyAlmData4.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData4.udiRunTime	:= g_tyDInputOut.tyAlmData4.udiRunTime + 1;
		g_tyDInputOut.tyAlmData4.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData4.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;		
		//Get Error Message
		IF g_tyDInputOut.tyAlmData4.udiCode < 10000 OR g_tyDInputOut.tyAlmData4.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData4.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData4.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData4.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData4.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData4.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData4.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData4.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData4.udiCode		:= 0;
		g_tyDInputOut.tyAlmData4.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData4.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData4.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData4.bAlm			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus5 = Error) THEN
		
		g_tyDInputOut.tyAlmData5.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData5.udiCode		:= udiStatus5;
		g_tyDInputOut.tyAlmData5.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData5.udiRunTime	:= g_tyDInputOut.tyAlmData5.udiRunTime + 1;
		g_tyDInputOut.tyAlmData5.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData5.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;		
		//Get Error Message
		IF g_tyDInputOut.tyAlmData5.udiCode < 10000 OR g_tyDInputOut.tyAlmData5.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData5.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData5.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData5.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData5.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData5.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData5.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData5.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData5.udiCode		:= 0;
		g_tyDInputOut.tyAlmData5.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData5.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData5.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData5.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus6 = Error) THEN
		
		g_tyDInputOut.tyAlmData6.sProgNm		:= p_sProgNm;
		g_tyDInputOut.tyAlmData6.udiCode		:= udiStatus6;
		g_tyDInputOut.tyAlmData6.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData6.udiRunTime	:= g_tyDInputOut.tyAlmData6.udiRunTime + 1;
		g_tyDInputOut.tyAlmData6.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData6.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= p_sProgNm;	
		//Get Error Message
		IF g_tyDInputOut.tyAlmData6.udiCode < 10000 OR g_tyDInputOut.tyAlmData6.udiCode > 10099 THEN
			g_tyDInputOut.tyAlmData6.sAlmMsg	:= 'Unknown';
			g_tyDInputOut.tyAlmData6.sRcyMsg	:= 'Unknown';
		ELSE
			g_tyDInputOut.tyAlmData6.sAlmMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData6.udiCode].sAlmText;
			g_tyDInputOut.tyAlmData6.sRcyMsg	:= a_tyAlmText[g_tyDInputOut.tyAlmData6.udiCode].sRcyText;
		END_IF
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData6.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData6.udiCode		:= 0;
		g_tyDInputOut.tyAlmData6.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData6.sAlmMsg		:= '';
		g_tyDInputOut.tyAlmData6.sRcyMsg		:= '';
		g_tyDInputOut.tyAlmData6.bAlm			:= FALSE;
	END_IF
		
		
END_ACTION
