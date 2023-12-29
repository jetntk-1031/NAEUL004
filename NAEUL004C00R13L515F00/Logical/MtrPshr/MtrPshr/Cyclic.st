(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;			
			Act_Initial;
		END_IF
	ELSE
		Act_InputConfig;
		IF (tylocalMtrPshr.In.bPrep = TRUE) AND (tylocalMtrPshr.In.bEn = TRUE) AND (tylocalMtrPshr.In.bDis = FALSE) THEN
			Act_Link;
			Act_Main;
			Act_Background;
		ELSE
			IF tylocalMtrPshr.Out.eStat <> MtrPshrActIdle THEN
				tylocalMtrPshr.Out.eStatus	:= Done;
			ELSE
				tylocalMtrPshr.Out.eStatus	:= Idle;
			END_IF	
		END_IF
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
