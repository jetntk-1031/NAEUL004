
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		bInitialDone	:= TRUE;	
		Act_Initial;
		
	ELSE
		Act_InputConfig;
		Act_Main;
		Act_OutputConfig;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM
