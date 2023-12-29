(** 2019-03-25 **)
ACTION Act_Alarm: 
	//Reset Error
	IF (tylocalPshrConv.Out.eStatus = Error) AND bRstErr THEN
		tylocalPshrConv.In.eAct	:= MagConv2ClpActIdle;
		tylocalPshrConv.Out.eStat	:= MagConv2ClpActIdle;
	END_IF
	
	IF tylocalPshrConv.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalPshrConv.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalPshrConv.Out.eStatus = Error) THEN
		
		
		tylocalPshrConv.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalPshrConv.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalPshrConv.Out.tyAlmData.udiRunTime	:= tylocalPshrConv.Out.tyAlmData.udiRunTime + 1;
		tylocalPshrConv.Out.tyAlmData.bAlm			:= TRUE;
		tylocalPshrConv.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sConvProgNm		    := tylocalUSSOT.In.sProgNm;
		
		tylocalPshrConv.Out.sStatTxt	:= tylocalPshrConv.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalPshrConv.Out.tyAlmData.udiCode	:= 0;
		tylocalPshrConv.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalPshrConv.Out.tyAlmData.bAlm			:= FALSE;
		tylocalPshrConv.Out.sStatTxt	:= a_sStatText[tylocalPshrConv.Out.eStat];
		
	END_IF
	
END_ACTION
