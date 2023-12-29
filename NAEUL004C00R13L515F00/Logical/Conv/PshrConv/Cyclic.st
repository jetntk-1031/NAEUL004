(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
	ELSE
		Act_InputConfig;
		IF (tylocalPshrConv.In.bPrep = TRUE) AND (tylocalPshrConv.In.bEn = TRUE) AND (tylocalPshrConv.In.bDis = FALSE) THEN
			Act_Link;
			Act_Main;
		ELSE
			IF tylocalPshrConv.Out.eStat <> ConvActIdle THEN
				tylocalPshrConv.Out.eStatus	:= Done;
			ELSE
				tylocalPshrConv.Out.eStatus	:= Idle;
			END_IF	
		END_IF
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
