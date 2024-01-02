(** 2019-03-25 **)
ACTION Act_Alarm: 
	
	
	IF tylocalMachine.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalMachine.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	//Error
	IF EDGEPOS(tylocalMachine.Out.eStatus = Error) THEN
		
		
		tylocalMachine.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalMachine.Out.tyAlmData.eSeverity		:= AlmSeverityError;
		tylocalMachine.Out.tyAlmData.udiRunTime	:= tylocalMachine.Out.tyAlmData.udiRunTime + 1;
		tylocalMachine.Out.tyAlmData.bAlm			:= TRUE;
		tylocalMachine.Out.tyAlmData.udiModuleNum  := udiModuleNum;
		g_tyAlmProgNm.sMachineProgNm		    := tylocalAGV.In.sProgNm;
		
		tylocalMachine.Out.sStatTxt	:= tylocalMachine.Out.tyAlmData.sAlmMsg;
		
	ELSIF bRstErr AND (tyAlmData.udiCode <> 0) THEN
		
		tylocalMachine.Out.tyAlmData.udiCode	:= 0;
		tylocalMachine.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalMachine.Out.tyAlmData.bAlm			:= FALSE;
		tylocalMachine.Out.sStatTxt	:= a_sStatText[tylocalMachine.Out.eStat];
		
	END_IF
	
	
	
END_ACTION
