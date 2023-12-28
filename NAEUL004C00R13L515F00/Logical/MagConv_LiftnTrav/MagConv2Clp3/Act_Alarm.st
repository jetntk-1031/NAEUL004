(** 2019-10-30 **)
ACTION Act_Alarm: 
	//Reset Error
	IF (tylocalMagConv2Clp.Out.eStatus = Error) AND bRstErr THEN
		tylocalMagConv2Clp.In.eAct	:= MagConv2ClpActIdle;
		tylocalMagConv2Clp.Out.eStat	:= MagConv2ClpActIdle;
	END_IF
	
	IF tylocalMagConv2Clp.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalMagConv2Clp.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalMagConv2Clp.Out.eStatus = Error) THEN
		
		tylocalMagConv2Clp.Out.tyAlmData.sProgNm		:= tylocalMagConv2Clp.In.sProgNm;
		tylocalMagConv2Clp.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMagConv2Clp.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalMagConv2Clp.Out.tyAlmData.udiRunTime	:= tylocalMagConv2Clp.Out.tyAlmData.udiRunTime + 1;
		tylocalMagConv2Clp.Out.tyAlmData.bAlm			:= TRUE;
		tylocalMagConv2Clp.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sMagConv2ClpProgNm		:= tylocalMagConv2Clp.In.sProgNm;
		tylocalMagConv2Clp.Out.sStatTxt	:= tylocalMagConv2Clp.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tylocalMagConv2Clp.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalMagConv2Clp.Out.tyAlmData.udiCode	:= 0;
		tylocalMagConv2Clp.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalMagConv2Clp.Out.tyAlmData.bAlm			:= FALSE;
		tylocalMagConv2Clp.Out.sStatTxt	:= a_sStatText[tylocalMagConv2Clp.Out.eStat];
		
	END_IF
	
END_ACTION
