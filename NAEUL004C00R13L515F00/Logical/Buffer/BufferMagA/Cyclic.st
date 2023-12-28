(** 2019-01-30 **)
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;
		Act_Initial;
		
	ELSE
		Act_InputConfig;
		IF (tylocalBufferMagA.In.bPrep = TRUE) AND (tylocalBufferMagA.In.bEn = TRUE) AND (tylocalBufferMagA.In.bDis = FALSE) THEN
			Act_Link;
			Act_Main;
		ELSE
			Act_Main_Disable;
		END_IF
		Act_OutputConfig;
	END_IF
	
END_PROGRAM
