(** 2020-10-05 **)
ACTION Act_Main_GetHWInfo:

	CASE usiStep OF
		0:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetIPAddr;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetIPAddr) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 1;
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
			
		1:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetMacAddr;
			
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetMacAddr) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 2;
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
		
		2:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetSubnetMask;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetSubnetMask) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;

				IF DiagCpuIsSimulated() = TRUE THEN
					usiStep			:= 0;
					tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				ELSE
					usiStep			:= 3;
				END_IF								
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
			
		3:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetEthConfigMode;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetEthConfigMode) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				
				bGetConfigDone	:= TRUE;
				
				IF (p_tyMcParamCurr.eNetworkMod = UDINT_TO_DINT(p_udiHWInfoEthMode))  THEN
					IF p_udiHWInfoEthMode = DINT_TO_UDINT(IPFromDHCPServer) THEN
						usiStep			:= 0;
						tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
					ELSE
						IF (p_tyMcParamCurr.sIPAddr <> p_sHWInfoIPAddr) OR (p_tyMcParamCurr.sSubnetMask <> p_sHWInfoSubnetMask) THEN
							IF g_tyUIOut.bIPTempAddrFillDone AND g_tyUIOut.bIPMismatchOverWriteConfig THEN
								IF (p_tyMcParamCurr.sIPAddr <> p_sHWInfoIPAddr) THEN
									usiStep			:= 5;  //mismatch ip
								ELSE
									usiStep			:= 6;  //mismatch subnet
								END_IF
							END_IF		
						ELSE
							usiStep			:= 0;
							tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
						END_IF
					END_IF
		
				ELSE
					IF g_tyUIOut.bIPTempAddrFillDone AND g_tyUIOut.bIPMismatchOverWriteConfig THEN
						usiStep			:= 4;				
					END_IF							
				END_IF						
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
			
		4:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetEthConfigMode;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetEthConfigMode) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				
				IF (p_tyMcParamCurr.eNetworkMod = IPFromDHCPServer) THEN
					usiStep			:= 7;
					bMismatchSetConfigDone	:= TRUE;
				ELSE
					usiStep			:= 5;
				END_IF
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
				
			
		5:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetIPAddr;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetIPAddr) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				
				IF (p_tyMcParamCurr.sSubnetMask <> p_sHWInfoSubnetMask) THEN
					usiStep			:= 6;
				ELSE
					usiStep			:= 7;					
					bMismatchSetConfigDone	:= TRUE;
				END_IF
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
		
		6:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetSubnetMask;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetSubnetMask) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;	
				usiStep			:= 7;
				
				bMismatchSetConfigDone	:= TRUE;
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF			
		
		7:			
			IF g_tyUIOut.bIPConfigChgDone THEN
				IF g_tyUIOut.bOverwriteEthMode THEN
					usiStep			:= 8; //Overwrite Network Mode
				ELSIF g_tyUIOut.bOverwriteIP THEN
					usiStep			:= 9; //Overwrite IP
				ELSIF g_tyUIOut.bOverwriteSubnet THEN
					usiStep			:= 10; //Overwrite Subnet
				ELSE
					usiStep			:= 12; //Load Machine Setting
				END_IF
			END_IF
			
		8:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetEthConfigMode;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetEthConfigMode) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				
				IF g_tyUIOut.bOverwriteIP THEN
					usiStep			:= 9;
				ELSIF g_tyUIOut.bOverwriteSubnet THEN
					usiStep			:= 10;
				ELSE
					usiStep			:= 11;
				END_IF
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
		
		
		9:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetIPAddr;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetIPAddr) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				
				IF g_tyUIOut.bOverwriteSubnet THEN
					usiStep			:= 10;
				ELSE
					usiStep			:= 11;
				END_IF
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
		
		10:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActSetSubnetMask;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActSetSubnetMask) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;	
				usiStep			:= 11;
								
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
		
		11: 
				
			eMcParamAct	:= McParamActWrite;
		
			IF (p_eMcParamStatus = Done) AND (p_eMcParamStat = McParamActWrite) THEN
			
				eMcParamAct		:= McParamActIdle;
				
				usiStep			:= 12;
			
			ELSIF p_eMcParamStatus = Error THEN
			
				eMcParamAct		:= McParamActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
			
			END_IF
		
		12:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetIPAddr;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetIPAddr) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 13;
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
			
		13:
			tylocalStartup.Out.eHWInfoAct	:= HWInfoActGetSubnetMask;
	
			IF (g_tyHWInfo.eStatus = Done) AND (g_tyHWInfo.eStat = HWInfoActGetSubnetMask) THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			ELSIF g_tyHWInfo.eStatus = Error THEN
				
				tylocalStartup.Out.eHWInfoAct		:= HWInfoActIdle;
				usiStep			:= 0;
				tylocalStartup.Out.eStartupStep1	:= StartupStepLibVer;
				
			END_IF
					
			
	END_CASE
	
				
END_ACTION

