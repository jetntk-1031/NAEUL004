(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		IF (tylocalOvenInfoB.In.bPrep = TRUE) AND (tylocalOvenInfoB.In.bEn = TRUE) AND (tylocalOvenInfoB.In.bDis = FALSE) THEN
			Act_InputConfig;
			Act_Link;
			Act_Main;
			Act_OutputConfig;
		ELSE
			Act_Main_Disable;
			
			IF tylocalOvenInfoB.Out.eStat <> OvenInfoActIdle THEN
				tylocalOvenInfoB.Out.eStatus	:= Done;
			ELSE
				tylocalOvenInfoB.Out.eStatus	:= Idle;
			END_IF
		END_IF
		
	END_IF
	
END_PROGRAM
