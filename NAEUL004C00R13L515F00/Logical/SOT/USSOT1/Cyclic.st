(** 2021-04-20 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_InputConfig;
		IF (tylocalUSSOT.In.bPrep = TRUE) AND (tylocalUSSOT.In.bEn = TRUE) AND (tylocalUSSOT.In.bDis = FALSE) THEN
			Act_Link;
			Act_Background;
			Act_Main;
		ELSE
			IF tylocalUSSOT.Out.eStat <> SOTActIdle THEN
				tylocalUSSOT.Out.eStatus	:= Done;
			ELSE
				tylocalUSSOT.Out.eStatus	:= Idle;
			END_IF
		END_IF
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
