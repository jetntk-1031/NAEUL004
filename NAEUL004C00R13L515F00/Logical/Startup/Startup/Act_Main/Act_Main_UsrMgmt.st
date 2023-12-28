(** 2019-03-28 **)
ACTION Act_Main_UsrMgmt:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eUsrMgmtAct	:= UsrMgmtActCreateDir;
	
			IF (g_tyUsrMgmt.eStatus = Done) AND (g_tyUsrMgmt.eStat = UsrMgmtActCreateDir) THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyUsrMgmt.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				tylocalStartup.Out.eStartupStep1	:= StartupStepBffr;
				
			END_IF
			
		1:
			tylocalStartup.Out.eUsrMgmtAct	:= UsrMgmtActReadData;
	
			IF (g_tyUsrMgmt.eStatus = Done) AND (g_tyUsrMgmt.eStat = UsrMgmtActReadData) THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyUsrMgmt.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepBffr;
				
			END_IF
			
		2:
			tylocalStartup.Out.eUsrMgmtAct	:= UsrMgmtActLogout;
	
			IF (g_tyUsrMgmt.eStatus = Done) AND (g_tyUsrMgmt.eStat = UsrMgmtActLogout) THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepBffr;
				
			ELSIF g_tyUsrMgmt.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrMgmtAct		:= UsrMgmtActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepBffr;
				
			END_IF
			
	END_CASE
	
END_ACTION
