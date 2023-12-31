(** 2019-03-22 **)
PROGRAM _CYCLIC
	
	IF bInitDone = FALSE THEN
		bInitDone	:= TRUE;
		
		Act_InitLocal;
		Act_InitGlobal;
		
	ELSIF bInitialDone = FALSE THEN
		
		//Special Case --> only after reading Current Recipe --> Excusively for Machine with Magazine Maximum Board Width Setting
		
		IF p_bNtSettingsLoadDone = TRUE AND p_eStartupStep = StartupStepUsrMgmt  THEN 
			bInitialDone	:= TRUE;
			
			Act_Initial;
		END_IF
		
	ELSE
		
		Act_RstErr;
		Act_Background;
		Act_Alarm;
		Act_AlarmInfo1;
		
	END_IF
	
END_PROGRAM
