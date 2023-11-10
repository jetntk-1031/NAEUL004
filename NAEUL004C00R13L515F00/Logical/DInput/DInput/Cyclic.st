(** 2019-03-22 **)
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;
		
		Act_InitLocal;
		Act_InitGlobal;
		
	ELSIF bInitialDone = FALSE THEN
		bInitialDone	:= TRUE;
		
		Act_Initial;
		
	ELSE
		
		Act_RstErr;
		Act_Background;
		Act_Link;
		Act_Alarm1;
		Act_Alarm2;
		Act_Alarm3;
		Act_Alarm4;
		Act_Alarm5;
		Act_Alarm6;
		
	END_IF
	
END_PROGRAM
