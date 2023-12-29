
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;	
		Act_InitLocal;
	
	ELSIF bInitialDone = FALSE THEN
		IF g_tyStartUp.bNtSettingsLoadDone THEN
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_InputConfig;
		
		IF (tylocalLFFollower.In.bPrep = TRUE) AND (tylocalLFFollower.In.bEn = TRUE) AND (tylocalLFFollower.In.bDis = FALSE) THEN
			Act_Background;
			
		ELSE
			Act_Main_Disable;	
		END_IF
		
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
