(** 2019-03-25 **)
ACTION Act_Alarm: 
	IF tylocalHWInfo.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalHWInfo.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalHWInfo.Out.eStatus = Error) AND bRstErr THEN
		tylocalHWInfo.In.eAct	:= HWInfoActIdle;
		tylocalHWInfo.Out.eStat	:= HWInfoActIdle;
	END_IF
	
	//Error
	IF EDGEPOS(tylocalHWInfo.Out.eStatus = Error) THEN
	
		tylocalHWInfo.Out.tyAlmData.udiCode			:= udiStatus;
		tylocalHWInfo.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalHWInfo.Out.tyAlmData.udiRunTime		:= tylocalHWInfo.Out.tyAlmData.udiRunTime + 1;
		tylocalHWInfo.Out.tyAlmData.bAlm			:= TRUE;
		tylocalHWInfo.Out.tyAlmData.udiModuleNum	:= udiModuleNum;
		g_tyAlmProgNm.sHWinfoProgNm					:= tylocalHWInfo.In.sProgNm;
		
		
	ELSIF bRstErr AND (tylocalHWInfo.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalHWInfo.Out.tyAlmData.udiCode		:= 0;
		tylocalHWInfo.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalHWInfo.Out.tyAlmData.bAlm		:= FALSE;
		
		tylocalHWInfo.Out.sStatTxt	:= a_sStatText[tylocalHWInfo.Out.eStat];
		
	END_IF
	
END_ACTION
