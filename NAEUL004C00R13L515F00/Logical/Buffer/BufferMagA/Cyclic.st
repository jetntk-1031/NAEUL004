(** 2019-01-30 **)
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;
		
		Act_InitLocal;
		Act_InitGlobal;
		Act_Initial;
		
	ELSE
		
		Act_Action;
		Act_LinkEn;
		
		IF (p_bPrep = TRUE) AND (p_bEn = TRUE) AND (p_bDis = FALSE) THEN
			Act_Link;
			Act_Main;
			Act_Background;
		ELSE
			Act_Main_Disable;
		END_IF
		
	END_IF
	
END_PROGRAM
