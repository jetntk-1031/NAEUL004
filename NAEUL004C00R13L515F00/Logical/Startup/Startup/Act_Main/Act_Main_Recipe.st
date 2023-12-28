(** 2019-05-04 **)
ACTION Act_Main_Recipe:
	
	CASE usiStep OF
		0:
			tylocalStartup.Out.eProdRcpAct	:= ProdRcpActCreateDir;
	
			IF (g_tyProdRcp.eStatus = Done) AND (g_tyProdRcp.eStat = ProdRcpActCreateDir) THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyProdRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
			
		1:
			tylocalStartup.Out.eProdRcpAct	:= ProdRcpActGetList;
	
			IF (g_tyProdRcp.eStatus = Done) AND (g_tyProdRcp.eStat = ProdRcpActGetList) THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyProdRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
		
		2:
			tylocalStartup.Out.eProdRcpAct	:= ProdRcpActReadCurrRcp;
	
			IF (g_tyProdRcp.eStatus = Done) AND (g_tyProdRcp.eStat = ProdRcpActReadCurrRcp) THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			ELSIF g_tyMpProdRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eProdRcpAct		:= ProdRcpActIdle;
				usiStep			:= 10;
				
			END_IF
		
		10:
			tylocalStartup.Out.eMpProdRcpAct	:= MpProdRcpActCreateDir;
	
			IF (g_tyMpProdRcp.eStatus = Done) AND (g_tyMpProdRcp.eStat = MpProdRcpActCreateDir) THEN
				
				tylocalStartup.Out.eMpProdRcpAct	:= MpProdRcpActIdle;
				usiStep			:= 20;
				
			ELSIF g_tyMpProdRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eMpProdRcpAct	:= MpProdRcpActIdle;
				usiStep			:= 20;
				
			END_IF
			
		20:
			tylocalStartup.Out.eMagRcpAct	:= MagRcpActCreateDir;
	
			IF (g_tyMagRcp.eStatus = Done) AND (g_tyMagRcp.eStat = MagRcpActCreateDir) THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 21;
				
			ELSIF g_tyMagRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAutoRcp; //StartupStepUsrMgmt;
				
			END_IF
			
		21:
			tylocalStartup.Out.eMagRcpAct	:= MagRcpActGetList;
			
			IF (g_tyMagRcp.eStatus = Done) AND (g_tyMagRcp.eStat = MagRcpActGetList) THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 22;
				
			ELSIF g_tyMagRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAutoRcp;
				
			END_IF
			
		22:
			tylocalStartup.Out.eMagRcpAct	:= MagRcpActReadCurrRcp;
			
			IF (g_tyMagRcp.eStatus = Done) AND (g_tyMagRcp.eStat = MagRcpActReadCurrRcp) THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAutoRcp;
				
			ELSIF g_tyMagRcp.eStatus = Error THEN
				
				tylocalStartup.Out.eMagRcpAct		:= MagRcpActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepAutoRcp;
				
			END_IF
			
	END_CASE
		
END_ACTION
