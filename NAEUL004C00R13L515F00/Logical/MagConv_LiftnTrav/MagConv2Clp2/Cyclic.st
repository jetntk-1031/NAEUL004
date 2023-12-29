(** 2019-10-30 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
	ELSE
		Act_InputConfig;
		IF (tylocalMagConv2Clp.In.bPrep = TRUE) AND (tylocalMagConv2Clp.In.bEn = TRUE) AND (tylocalMagConv2Clp.In.bDis = FALSE) THEN
			Act_Link;
			Act_Main;
		ELSE
			IF tylocalMagConv2Clp.Out.eStat <> MagConv2ClpActIdle THEN
				tylocalMagConv2Clp.Out.eStatus	:= Done;
			ELSE	
				tylocalMagConv2Clp.Out.eStatus	:= Idle;
			END_IF	
		END_IF	
		Act_OutputConfig;
		Act_Alarm;
	END_IF
	
END_PROGRAM
