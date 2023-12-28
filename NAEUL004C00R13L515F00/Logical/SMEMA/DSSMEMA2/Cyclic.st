(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_InputConfig;
		
		IF (tylocalDSSMEMA.In.bPrep = TRUE) AND (tylocalDSSMEMA.In.bEn = TRUE) AND (tylocalDSSMEMA.In.bDis = FALSE) THEN
			Act_Main;
		ELSE
			IF tylocalDSSMEMA.Out.eStat <> SMEMAActIdle THEN
				tylocalDSSMEMA.Out.eStatus	:= Done;
			ELSE
				tylocalDSSMEMA.Out.eStatus	:= Idle;
			END_IF
		END_IF
		
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
