(** 2019-03-25 **)
ACTION Act_Alarm: 
	IF tylocalLibVer.In.udiRstErr <> udiRstErrOld THEN
		bRstErr			:= TRUE;
		udiRstErrOld	:= tylocalLibVer.In.udiRstErr;
	ELSE
		bRstErr			:= FALSE;
	END_IF
	
	//Reset Error
	IF (tylocalLibVer.Out.eStatus = Error) AND bRstErr THEN
		tylocalLibVer.In.eAct	:= LibVerActIdle;
		tylocalLibVer.Out.eStat	:= LibVerActIdle;
		
	END_IF
	
	//Error
	IF EDGEPOS(tylocalLibVer.Out.eStatus = Error) THEN
		
		tylocalLibVer.Out.tyAlmData.udiCode		:= udiStatus;
		tylocalLibVer.Out.tyAlmData.udiRunTime	:= tylocalLibVer.Out.tyAlmData.udiRunTime + 1;
		g_tyAlmProgNm.sLibVerProgNm				:= tylocalLibVer.In.sProgNm;
		
		IF tylocalLibVer.Out.tyAlmData.udiCode = 10012 THEN
			tylocalLibVer.Out.tyAlmData.eSeverity	:= AlmSeverityWarning;
			tylocalLibVer.Out.tyAlmData.bWarning		:= TRUE;
			
			FOR di := 0 TO c_diLibNum DO
				IF a_bVerMismatch[di] = TRUE THEN
					g_tyAlmProgNm.sLiberWarnName    := a_tyInfoOut[di].sName;
					EXIT;
				END_IF
			END_FOR
			
		ELSE
			tylocalLibVer.Out.tyAlmData.eSeverity	:= AlmSeverityError;
			tylocalLibVer.Out.tyAlmData.bAlm		:= TRUE;
		
		END_IF
		
	ELSIF bRstErr AND (tylocalLibVer.Out.tyAlmData.udiCode <> 0) THEN
		
		tylocalLibVer.Out.tyAlmData.udiCode	:= 0;
		tylocalLibVer.Out.tyAlmData.eSeverity	:= AlmSeverityNA;
		tylocalLibVer.Out.tyAlmData.bAlm		:= FALSE;
		tylocalLibVer.Out.tyAlmData.bWarning	:= FALSE;
		
		tylocalLibVer.Out.sStatTxt	:= a_sStatText[tylocalLibVer.Out.eStat];
		
	END_IF
	
END_ACTION
