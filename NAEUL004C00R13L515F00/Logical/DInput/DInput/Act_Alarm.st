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
		

		g_tyDInputOut.tyAlmData1.udiCode		:= udiStatus1;
		g_tyDInputOut.tyAlmData1.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData1.udiRunTime	:= g_tyDInputOut.tyAlmData1.udiRunTime + 1;
		g_tyDInputOut.tyAlmData1.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData1.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData1.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData1.udiCode		:= 0;
		g_tyDInputOut.tyAlmData1.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData1.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus2 = Error) THEN
		
		g_tyDInputOut.tyAlmData2.udiCode		:= udiStatus2;
		g_tyDInputOut.tyAlmData2.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData2.udiRunTime	:= g_tyDInputOut.tyAlmData2.udiRunTime + 1;
		g_tyDInputOut.tyAlmData2.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData2.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;		
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData2.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData2.udiCode		:= 0;
		g_tyDInputOut.tyAlmData2.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData2.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus3 = Error) THEN
		
		g_tyDInputOut.tyAlmData3.udiCode		:= udiStatus3;
		g_tyDInputOut.tyAlmData3.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData3.udiRunTime	:= g_tyDInputOut.tyAlmData3.udiRunTime + 1;
		g_tyDInputOut.tyAlmData3.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData3.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;	
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData3.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData3.udiCode		:= 0;
		g_tyDInputOut.tyAlmData3.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData3.bAlm			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus4 = Error) THEN
		
		g_tyDInputOut.tyAlmData4.udiCode		:= udiStatus4;
		g_tyDInputOut.tyAlmData4.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData4.udiRunTime	:= g_tyDInputOut.tyAlmData4.udiRunTime + 1;
		g_tyDInputOut.tyAlmData4.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData4.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;		
		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData4.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData4.udiCode		:= 0;
		g_tyDInputOut.tyAlmData4.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData4.bAlm			:= FALSE;
	END_IF
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus5 = Error) THEN
		
		g_tyDInputOut.tyAlmData5.udiCode		:= udiStatus5;
		g_tyDInputOut.tyAlmData5.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData5.udiRunTime	:= g_tyDInputOut.tyAlmData5.udiRunTime + 1;
		g_tyDInputOut.tyAlmData5.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData5.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;		

		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData5.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData5.udiCode		:= 0;
		g_tyDInputOut.tyAlmData5.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData5.bAlm			:= FALSE;
	END_IF
	
	
	//Error
	IF EDGEPOS(g_tyDInputOut.eStatus6 = Error) THEN
		
		g_tyDInputOut.tyAlmData6.udiCode		:= udiStatus6;
		g_tyDInputOut.tyAlmData6.eSeverity	:= AlmSeverityError;
		g_tyDInputOut.tyAlmData6.udiRunTime	:= g_tyDInputOut.tyAlmData6.udiRunTime + 1;
		g_tyDInputOut.tyAlmData6.bAlm			:= TRUE;
		g_tyDInputOut.tyAlmData6.udiModuleNum  := udiModuleNum;
		g_sDInputProgNm		:= g_tyNtParamCurr.sDIProgNm;	

		
	ELSIF bRstErr AND (g_tyDInputOut.tyAlmData6.udiCode <> 0) THEN
		
		g_tyDInputOut.tyAlmData6.udiCode		:= 0;
		g_tyDInputOut.tyAlmData6.eSeverity	:= AlmSeverityNA;
		g_tyDInputOut.tyAlmData6.bAlm			:= FALSE;
	END_IF
		
		
END_ACTION
