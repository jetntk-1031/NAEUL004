(** 2019-03-22 **)
PROGRAM _CYCLIC
	
	IF bInitialDone = FALSE THEN
		//Special Case --> only after reading Current Recipe --> Excusively for Machine with Magazine Maximum Board Width Setting
		IF g_tyStartUp.bNtSettingsLoadDone = TRUE AND Step = g_tyStartUp.eStartupStep1 =StartupStepUsrMgmt  THEN 
			bInitialDone	:= TRUE;
			Act_Initial;
		END_IF
		
	ELSE

		Act_Background;
		Act_Alarm;
		Act_AlarmInfo1;
		
	END_IF
	
END_PROGRAM
