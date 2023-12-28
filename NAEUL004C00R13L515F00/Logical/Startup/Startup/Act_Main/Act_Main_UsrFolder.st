(** 2019-05-09 **)
ACTION Act_Main_UsrFolder:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActCreateUsrDir;
	
			IF (g_tyUsrFolder.eStatus = Done) AND (g_tyUsrFolder.eStat = UsrFolderActCreateUsrDir) THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyUsrFolder.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				tylocalStartup.Out.eStartupStep1	:= StartupStepParameter;
				
			END_IF
	
		1:
			tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActCreatePrivateDir;
	
			IF (g_tyUsrFolder.eStatus = Done) AND (g_tyUsrFolder.eStat = UsrFolderActCreatePrivateDir) THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyUsrFolder.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepParameter;
				
			END_IF
	
		2:
			tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActCreateLogDir;
	
			IF (g_tyUsrFolder.eStatus = Done) AND (g_tyUsrFolder.eStat = UsrFolderActCreateLogDir) THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 3;
				
			ELSIF g_tyUsrFolder.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepParameter;
				
			END_IF
	
		3:
			tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActCreateLCSDir;
	
			IF (g_tyUsrFolder.eStatus = Done) AND (g_tyUsrFolder.eStat = UsrFolderActCreateLCSDir) THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepParameter;
				
			ELSIF g_tyUsrFolder.eStatus = Error THEN
				
				tylocalStartup.Out.eUsrFolderAct	:= UsrFolderActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepParameter;
				
			END_IF
	
	END_CASE
	
END_ACTION
