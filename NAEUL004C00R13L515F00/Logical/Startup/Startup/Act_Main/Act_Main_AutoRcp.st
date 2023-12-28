(** 2019-05-04 **)
ACTION Act_Main_AutoRcp:
	
	CASE usiStep OF
		0:
			tylocalStartup.Out.eAutoRcpAct	:= AutoRcpActCreateDir;
	
			IF (g_tyAutoRcp.eStatus = Done) AND (g_tyAutoRcp.eStat = AutoRcpActCreateDir) THEN
				
				tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyAutoRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 1;
				
			END_IF
			
		1:
			tylocalStartup.Out.eAutoRcpAct	:= AutoRcpActReadRetain;
	
			IF (g_tyAutoRcp.eStatus = Done) AND (g_tyAutoRcp.eStat = AutoRcpActReadRetain) THEN
				tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				IF  g_tyNtParamOut.eAutoRcpPrecededBy  = PrecededBySelf THEN
					usiStep			:= 2;
				ELSIF g_tyNtParamOut.eAutoRcpPrecededBy  = PrecededByF1 THEN 
					usiStep			:= 0;
					tylocalStartup.Out.eStartupStep1	:= StartupStepUsrMgmt;
				END_IF
			ELSIF g_tyAutoRcp.eStatus = Error THEN
					tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				IF  g_tyNtParamOut.eAutoRcpPrecededBy  = PrecededBySelf THEN
					usiStep			:= 2;
				ELSIF g_tyNtParamOut.eAutoRcpPrecededBy  = PrecededByF1 THEN
					usiStep			:= 0;
					tylocalStartup.Out.eStartupStep1	:= StartupStepUsrMgmt;
				END_IF
			END_IF
	
		2:
			tylocalStartup.Out.eAutoRcpAct	:= AutoRcpActReadRetain2;
	
			IF (g_tyAutoRcp.eStatus = Done) AND (g_tyAutoRcp.eStat = AutoRcpActReadRetain2) THEN
				
				tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepUsrMgmt;
				
			ELSIF g_tyAutoRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eAutoRcpAct		:= AutoRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepUsrMgmt;
				
			END_IF			
			
	END_CASE
		
END_ACTION
