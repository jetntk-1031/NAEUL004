(** 2019-03-22 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		bInitialDone	:= TRUE;
		Act_Initial;
		
	ELSE
		Act_Background;
		Act_Alarm;
	END_IF
	
END_PROGRAM
