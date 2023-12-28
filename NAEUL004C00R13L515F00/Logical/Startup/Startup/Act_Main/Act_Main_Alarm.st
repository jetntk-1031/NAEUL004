(** 2019-03-28 **)
ACTION Act_Main_Alarm:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eAlarmAct	:= AlarmActCreateDir;
	
			IF (g_tyAlm.eStatus = Done) AND (g_tyAlm.eStat = AlarmActCreateDir) THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyAlm.eStatus = Error THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepHermes;
				
			END_IF
			
		1:
			tylocalStartup.Out.eAlarmAct	:= AlarmActDeleteOldLog;
	
			IF (g_tyAlm.eStatus = Done) AND (g_tyAlm.eStat = AlarmActDeleteOldLog) THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyAlm.eStatus = Error THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepHermes;
				
			END_IF
		
		2:
			tylocalStartup.Out.eAlarmAct	:= AlarmActReadHistory;
			
			IF (g_tyAlm.eStatus = Done) AND (g_tyAlm.eStat = AlarmActReadHistory) THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 3;
				
			ELSIF g_tyAlm.eStatus = Error THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepHermes;
				
			END_IF
			
		3:
			tylocalStartup.Out.eAlarmAct	:= AlarmActBGStartLog;
			
			IF (g_tyAlm.eStatus = Done) AND (g_tyAlm.eStat = AlarmActBGStartLog) THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepHermes;
				
			ELSIF g_tyAlm.eStatus = Error THEN
				
				tylocalStartup.Out.eAlarmAct		:= AlarmActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepHermes;
				
			END_IF
			
	END_CASE
	
END_ACTION
