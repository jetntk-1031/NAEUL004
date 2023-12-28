(** 2019-03-28 **)
ACTION Act_Main_SetupUI:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eUIAct	:= UIActInitial;
		
			IF (g_tyUIOut.eStatus = Done) AND (g_tyUIOut.eStat = UIActInitial) THEN
				
				tylocalStartup.Out.eUIAct			:= UIActIdle;
				tylocalStartup.Out.eStartupStep1	:= StartupStepDone;
				tylocalStartup.Out.bUISettingsLoadDone := TRUE;
			ELSIF g_tyUIOut.eStatus = Error THEN
				
				tylocalStartup.Out.eUIAct			:= UIActIdle;
				tylocalStartup.Out.eStartupStep1	:= StartupStepDone;
				tylocalStartup.Out.bUISettingsLoadDone := TRUE;
			END_IF
		
	END_CASE
	
END_ACTION
