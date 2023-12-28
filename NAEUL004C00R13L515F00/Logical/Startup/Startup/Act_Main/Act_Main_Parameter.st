(** 2019-03-28 **)
ACTION Act_Main_Parameter:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eNtParamAct	:= NtParamActCreateDir;
	
			IF (g_tyNtParamOut.eStatus = Done) AND (g_tyNtParamOut.eStat = NtParamActCreateDir) THEN
				
				tylocalStartup.Out.eNtParamAct			:= NtParamActIdle;
				usiStep				:= 1;
				
			ELSIF g_tyNtParamOut.eStatus = Error THEN
				
				bNtSettingsLoadDone	:= TRUE;
				tylocalStartup.Out.eNtParamAct			:= NtParamActIdle;
				usiStep				:= 2;
				
			END_IF
			
		1:
			tylocalStartup.Out.eNtParamAct	:= NtParamActRead;
	
			IF (g_tyNtParamOut.eStatus = Done) AND (g_tyNtParamOut.eStat = NtParamActRead) THEN
				
				bNtSettingsLoadDone	:= TRUE;
				tylocalStartup.Out.eNtParamAct			:= NtParamActIdle;
				usiStep				:= 2;
				
			ELSIF g_tyNtParamOut.eStatus = Error THEN
				
				bNtSettingsLoadDone	:= TRUE;
				tylocalStartup.Out.eNtParamAct			:= NtParamActIdle;
				usiStep				:= 2;
				
			END_IF
		
		2:
			tylocalStartup.Out.eMcParamAct	:= McParamActCreateDir;
	
			IF (g_tyMcParamOut.eStatus = Done) AND (g_tyMcParamOut.eStat = McParamActCreateDir) THEN
				
				tylocalStartup.Out.eMcParamAct		:= McParamActIdle;
				usiStep			:= 3;
				
			ELSIF g_tyMcParamOut.eStatus = Error THEN
				
				tylocalStartup.Out.eMcParamAct		:= McParamActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepGetHWInfo;
				
			END_IF
			
		3:
			tylocalStartup.Out.eMcParamAct	:= McParamActRead;
			
			IF (g_tyMcParamOut.eStatus = Done) AND (g_tyMcParamOut.eStat = McParamActRead) THEN
				
				tylocalStartup.Out.eMcParamAct		:= McParamActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepGetHWInfo;
				
			ELSIF g_tyMcParamOut.eStatus = Error THEN
				
				tylocalStartup.Out.eMcParamAct		:= McParamActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepGetHWInfo;
				
			END_IF
			
	END_CASE
				
END_ACTION
