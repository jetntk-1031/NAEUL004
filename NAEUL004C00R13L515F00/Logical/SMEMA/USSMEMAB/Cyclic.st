
PROGRAM _CYCLIC

	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_InputConfig;
		
		IF (tylocalUSSMEMA.In.bPrep = TRUE) AND (tylocalUSSMEMA.In.bEn = TRUE) AND (tylocalUSSMEMA.In.bDis = FALSE) THEN
			Act_Main;
		ELSE
			IF tylocalUSSMEMA.Out.eStat <> SMEMAActIdle THEN
				tylocalUSSMEMA.Out.eStatus	:= Done;
			ELSE
				tylocalUSSMEMA.Out.eStatus	:= Idle;
			END_IF
		END_IF
		
		Act_OutputConfig;
		
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
