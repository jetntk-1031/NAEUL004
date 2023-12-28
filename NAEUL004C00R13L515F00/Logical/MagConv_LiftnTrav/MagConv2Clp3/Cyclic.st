(** 2019-10-30 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE  THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
	ELSE
		Act_InputConfig;
		IF (p_bPrep = TRUE) AND (p_bEn = TRUE) AND (p_bDis = FALSE) THEN
			Act_Link;
			Act_Main;
		ELSE
			IF eStat <> MagConv2ClpActIdle THEN
				eStatus	:= Done;
			ELSE	
				eStatus	:= Idle;
			END_IF	
		END_IF	
		Act_OutputConfig;
		Act_Alarm;
	END_IF
	
END_PROGRAM
