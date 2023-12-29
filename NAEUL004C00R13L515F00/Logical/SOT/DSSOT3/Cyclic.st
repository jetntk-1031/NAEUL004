(** 2021-04-20 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_InputConfig;
		IF (tylocalDSSOT.In.bPrep = TRUE) AND (tylocalDSSOT.In.bEn = TRUE) AND (tylocalDSSOT.In.bDis = FALSE) THEN
			Act_Link;
			Act_Background;
			Act_Main;
		ELSE
			IF tylocalDSSOT.Out.eStat <> SOTActIdle THEN
				tylocalDSSOT.Out.eStatus	:= Done;
			ELSE
				tylocalDSSOT.Out.eStatus	:= Idle;
			END_IF
		END_IF
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
