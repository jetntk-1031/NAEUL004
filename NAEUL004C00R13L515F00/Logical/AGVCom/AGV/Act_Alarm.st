(** 2019-03-25 **)
ACTION Act_Alarm: 
		//Reset Error
	IF (tylocalAGV.Out.eStatus = Error) AND bRstErr THEN
		//		tylocalAGV.In.eAct	:= AIVMagActIdle;
		//		tylocalAGV.Out.eStat	:= AIVMagActIdle;
	END_IF
	
	IF tylocalAGV.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalAGV.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalAGV.Out.eStatus = Error) THEN
		
		tylocalAGV.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalAGV.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalAGV.Out.tyAlmData.udiRunTime		:= tylocalAGV.Out.tyAlmData.udiRunTime + 1;
		tylocalAGV.Out.tyAlmData.bAlm			:= TRUE;
		tylocalAGV.Out.tyAlmData.udiModuleNum  	:= udiModuleNum;
		g_tyAlmProgNm.sAGVProgNm				:= tylocalAGV.In.sProgNm;

		
		tylocalAGV.Out.sStatTxt	:= tylocalAGV.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tylocalAGV.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalAGV.Out.tyAlmData.udiCode	:= 0;
		tylocalAGV.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalAGV.Out.tyAlmData.bAlm			:= FALSE;
		tylocalAGV.Out.sStatTxt	:= a_sStatText[tylocalAGV.Out.eStat];
		
	END_IF
	
	
	//Warning	
	tylocalAGV.Out.tyAlmData1.udiCode			:= udiStatus1;
	tylocalAGV.Out.tyAlmData1.eSeverity			:= AlmSeverityWarning;
	tylocalAGV.Out.tyAlmData1.udiRunTime		:= tylocalAGV.Out.tyAlmData1.udiRunTime + 1;
	tylocalAGV.Out.tyAlmData1.bWarning			:= TRUE;
	tylocalAGV.Out.tyAlmData1.udiModuleNum  	:= udiModuleNum;
	g_tyAlmProgNm.sAGVProgNm					:= tylocalAGV.In.sProgNm;	

		
END_ACTION
