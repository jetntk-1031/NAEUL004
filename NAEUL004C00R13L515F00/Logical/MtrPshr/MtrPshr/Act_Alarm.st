(** 2019-03-25 **)
ACTION Act_Alarm:
	//Reset Error
	IF (tylocalMtrPshr.Out.eStatus = Error) AND bRstErr THEN
		tylocalMtrPshr.In.eAct	:= MtrPshrActIdle;
		tylocalMtrPshr.Out.eStat	:= MtrPshrActIdle;
	END_IF
	
	IF tylocalMtrPshr.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalMtrPshr.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(eStatus = Error) THEN
		
		
		tylocalMtrPshr.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMtrPshr.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalMtrPshr.Out.tyAlmData.udiRunTime	:= tylocalMtrPshr.Out.tyAlmData.udiRunTime + 1;
		tylocalMtrPshr.Out.tyAlmData.bAlm			:= TRUE;
		tylocalMtrPshr.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_sConvProgNm		    := p_sProgNm;
		
		tylocalMtrPshr.Out.sStatTxt	:= tylocalMtrPshr.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalMtrPshr.Out.tyAlmData.udiCode	:= 0;
		tylocalMtrPshr.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalMtrPshr.Out.tyAlmData.bAlm			:= FALSE;
		tylocalMtrPshr.Out.sStatTxt	:= a_sStatText[tylocalMtrPshr.Out.eStat];
		
	END_IF
	
END_ACTION
