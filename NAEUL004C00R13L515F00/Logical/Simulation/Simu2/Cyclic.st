(** 2022-10-17 **)
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;
		
		Act_InitLocal;
		Act_InitGlobal;
		
	ELSIF bInitialDone = FALSE THEN
		IF p_bNtSettingsLoadDone = TRUE THEN
			bInitialDone	:= TRUE;
			
			Act_Initial;
		END_IF
		
	ELSE
	
		Act_RstErr;
		Act_LinkEn;
		Act_Link;
		Act_Background;
		Act_Alarm;
		
	END_IF
	
END_PROGRAM