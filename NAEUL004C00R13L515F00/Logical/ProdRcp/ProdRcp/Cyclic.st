(** 2019-03-29 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		F g_tyStartUp.bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;
			
			Act_Initial;
		END_IF
		
	ELSE
		

		Act_InputConfig;
		Act_Main;
		Act_OutputConfig;
		Act_Alarm;	
			
		
	END_IF
	
END_PROGRAM
