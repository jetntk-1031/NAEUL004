(** 2019-05-04 **)
ACTION Act_Main_Hermes:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eHermesAct	:= HermesActCreateDir;
	
			IF (g_tyHermes.eStatus = Done) AND (g_tyHermes.eStat = HermesActCreateDir) THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyHermes.eStatus = Error THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		1:
			tylocalStartup.Out.eHermesAct	:= HermesActReadRetainLane1;
	
			IF (g_tyHermes.eStatus = Done) AND (g_tyHermes.eStat = HermesActReadRetainLane1) THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyHermes.eStatus = Error THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		2:
			tylocalStartup.Out.eHermesAct	:= HermesActReadConfig;
	
			IF (g_tyHermes.eStatus = Done) AND (g_tyHermes.eStat = HermesActReadConfig) THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			ELSIF g_tyHermes.eStatus = Error THEN
				
				tylocalStartup.Out.eHermesAct		:= HermesActIdle;
				usiStep			:= 10;
				
			END_IF
			
		10:
			tylocalStartup.Out.eUSHermesAAct	:= HermesActDeleteOldLog;
	
			IF (g_tyUSHermesA.eStatus = Done) AND (g_tyUSHermesA.eStat = HermesActDeleteOldLog) THEN
				
				tylocalStartup.Out.eUSHermesAAct	:= HermesActIdle;
				usiStep			:= 11;
				
			ELSIF g_tyUSHermesA.eStatus = Error THEN
				
				tylocalStartup.Out.eUSHermesAAct	:= HermesActIdle;
				usiStep			:= 11;
				
			END_IF
		11:
			tylocalStartup.Out.eUSHermesBAct	:= HermesActDeleteOldLog;
	
			IF (g_tyUSHermesB.eStatus = Done) AND (g_tyUSHermesB.eStat = HermesActDeleteOldLog) THEN
				
				tylocalStartup.Out.eUSHermesBAct	:= HermesActIdle;
				usiStep			:= 30;
				
			ELSIF g_tyUSHermesB.eStatus = Error THEN
				
				tylocalStartup.Out.eUSHermesBAct	:= HermesActIdle;
				usiStep			:= 30;
				
			END_IF

		
		30:
			tylocalStartup.Out.eRmtHermesAct	:= HermesActDeleteOldLog;
	
			IF (g_tyRmtHermes.esStatus = Done) AND (g_tyRmtHermes.esStat = HermesActDeleteOldLog) THEN
				
				tylocalStartup.Out.eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 40;
				
//				usiStep			:= 0;  //Changed
//				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI; //Changed
			ELSIF g_tyRmtHermes.esStatus = Error THEN
				
				tylocalStartup.Out.eRmtHermesAct	:= HermesActIdle;
				usiStep			:= 40;
				
//				usiStep			:= 0;  //Changed
//				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI; //Changed
			END_IF
			
				
		40:
			tylocalStartup.Out.eSvyHermesAct	:= HermesActDeleteOldLog;
	
			IF (g_tySvyHermes.eStatus = Done) AND (g_tySvyHermes.eStat = HermesActDeleteOldLog) THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 42;
				
			ELSIF g_tySvyHermes.eStatus = Error THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 42;
				
			END_IF
			
		42:
			tylocalStartup.Out.eSvyHermesAct	:= HermesActReadRetainSendWO1;
	
			IF (g_tySvyHermes.eStatus = Done) AND (g_tySvyHermes.eStat = HermesActReadRetainSendWO1) THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 43;
				
			ELSIF g_tySvyHermes.eStatus = Error THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 43;
			END_IF
		43:
			tylocalStartup.Out.eSvyHermesAct	:= HermesActReadRetainSendWO2;
	
			IF (g_tySvyHermes.eStatus = Done) AND (g_tySvyHermes.eStat = HermesActReadRetainSendWO2) THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 44;
		
			ELSIF g_tySvyHermes.eStatus = Error THEN
		
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 44;
			END_IF
		
		44:
			tylocalStartup.Out.eSvyHermesAct	:= HermesActReadRetainSendWO3;
	
			IF (g_tySvyHermes.eStatus = Done) AND (g_tySvyHermes.eStat = HermesActReadRetainSendWO3) THEN
				
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;	
			ELSIF g_tySvyHermes.eStatus = Error THEN
		
				tylocalStartup.Out.eSvyHermesAct	:= HermesActIdle;

				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepSetupUI;	
			END_IF	
	END_CASE
	
END_ACTION
