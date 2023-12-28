(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE

		IF (tylocalOvenInfoA.In.bPrep = TRUE) AND (tylocalOvenInfoA.In.bEn = TRUE) AND (tylocalOvenInfoA.In.bDis = FALSE) THEN
			Act_InputConfig;
			Act_Link;
			Act_Main;
			Act_OutputConfig;
		ELSE
			Act_Main_Disable;
			
			IF tylocalOvenInfoA.Out.eStat <> OvenInfoActIdle THEN
				tylocalOvenInfoA.Out.eStatus	:= Done;
			ELSE
				tylocalOvenInfoA.Out.eStatus	:= Idle;
			END_IF
		END_IF
		
	END_IF
	
END_PROGRAM
