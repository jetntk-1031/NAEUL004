(** 2021-08-08 **)
ACTION Act_Link:
	
	IF tyMcParamCurr.eAGVComProtocol = McSetAGVCommOPCUA 
		OR tyMcParamCurr.eAGVComProtocol = McSetAGVCommHardIO 
		OR tyMcParamCurr.eAGVComProtocol = McSetAGVTCPEnableTCP 
		THEN
		IF tyMcParamCurr.eMagExMode = McSetMagXcAutoManMode 
			OR tyMcParamCurr.eMagExMode = McSetMagXcAutoMode
			THEN
			tyMcParamCurr.bAGVComEn := TRUE;
		ELSE
			tyMcParamCurr.bAGVComEn := FALSE;
		END_IF
	ELSIF tyMcParamCurr.eAGVComProtocol = McSetAGVCommDisabled OR tyMcParamCurr.eAGVComProtocol = McSetAGVTCPDisableTCP THEN 
		tyMcParamCurr.bAGVComEn := FALSE;
	END_IF
	

	//new for Hermes 1.3
		//Changed
	IF g_tyRmtHermes.bWriteConfig OR g_tySvyHermes.bWriteConfig THEN 
		tylocalMcParam.In.tyMcParmWr.sMcNm := g_tySvyHermes.tyHermesConfigurationWr.tySvyParam.sMachineId;//p_tyHermesConfigurationWr.tySvyParam.sMachineId;
	END_IF
	

	
	
	//Control AutoRcp 
	IF NOT(g_tyNtParamCurr.bAutoRcpPrep) THEN
		tyMcParamCurr.bAutoRcpDisable := TRUE;
	ELSE
		//auto rcp prep 
		CASE g_tyNtParamCurr.eAutoRcpPrecededBy OF
			PrecededBySelf: 
				IF tyMcParamCurr.eUSCommA <> McSetCommModHermes AND ( NOT(g_tyNtParamCurr.bProjLaneBPrep) OR (g_tyNtParamCurr.bProjLaneBPrep AND tyMcParamCurr.eUSCommB <> McSetCommModHermes)) THEN
					tyMcParamCurr.bAutoRcpDisable := TRUE;
				ELSE
					tyMcParamCurr.bAutoRcpDisable := FALSE;
				END_IF	
			PrecededByF1:
				tyMcParamCurr.bAutoRcpDisable := FALSE; //for LCS
			ELSE
				tyMcParamCurr.bAutoRcpDisable := FALSE; 
		END_CASE
	END_IF
	
	
	
	//Disable MES on SMEMA mode
	IF g_tyNtParamCurr.eCustomerReq = Siemens AND tyMcParamCurr.eUSCommA <> McSetCommModHermes  AND ( NOT(g_tyNtParamCurr.bProjLaneBPrep) OR (g_tyNtParamCurr.bProjLaneBPrep AND tyMcParamCurr.eUSCommB <> McSetCommModHermes)) THEN 
		tyMcParamCurr.bMESEn := TRUE;
		tyMcParamCurr.bHermesSvyEn := FALSE;
	END_IF

	
	
	IF g_tyStartUp.bRun = FALSE THEN
		
		CASE usiChkIpAddrStep OF
		
			0:
				//Connect HMI OPCUA Server
				fbConnectOPCUA.tyOPCUAParam.sIPAddr	:= tyMcParamCurr.sHMIIPAddr;
				fbConnectOPCUA(bEn := TRUE);
		
				IF fbConnectOPCUA.udiStatus = 0 THEN
					dwConnectionHdl	:= fbConnectOPCUA.dwConnectionHdl;
					fbConnectOPCUA(bEn := FALSE);
				
					bConnected := TRUE;
				
					usiChkIpAddrStep	:= 1;
				ELSIF fbConnectOPCUA.udiStatus < 65534 THEN
					fbConnectOPCUA(bEn := FALSE);
					
					bConnected := FALSE;
					usiChkIpAddrStep := 0;
				END_IF
		
			1: 
				//Node Handle List Read
				fbReadGetNodeHdlList.dwConnectionHdl := dwConnectionHdl;
				fbReadGetNodeHdlList(bEn := TRUE);
			
				IF fbReadGetNodeHdlList.udiStatus = 0 THEN
					tyReadHdls.a_dwHdls := fbReadGetNodeHdlList.a_dwNodeHdlList;
					fbReadGetNodeHdlList(bEn := FALSE);
							
					usiChkIpAddrStep := 2;
				ELSIF fbReadGetNodeHdlList.udiStatus < 65534 THEN
					fbReadGetNodeHdlList(bEn := FALSE);
				
					usiChkIpAddrStep := 9;
				END_IF
		
			2:
				//Read List
				fbReadList.dwConnectionHdl := dwConnectionHdl;
				fbReadList.a_dwNodeHdlList := tyReadHdls.a_dwHdls;
				
				fbReadList.a_sClientTagNm[0] := '::McParam:sVNCIPAddr';
				fbReadList.a_sClientTagNm[1] := '::McParam:sHMIIPAddr';
				fbReadList(bEn := TRUE);
			
				IF fbReadList.udiStatus = 0 THEN
					fbReadList(bEn := FALSE);
				
					IF g_tyHWInfo.sIPAddr <> sVNCIPAddr OR g_tyUIOut.bUpdtHMIIPAddr  THEN
					
						usiChkIpAddrStep := 3;
					END_IF	
				
				ELSIF fbReadList.udiStatus < 65534 THEN
					fbReadList(bEn := FALSE);
				
					usiChkIpAddrStep := 9;
				END_IF
		
			3:
				//Node Handle List Write
				eStatus := Busy;
			
				fbWriteGetNodeHdlList.dwConnectionHdl := dwConnectionHdl;
				fbWriteGetNodeHdlList(bEn := TRUE);
			
				IF fbWriteGetNodeHdlList.udiStatus = 0 THEN
					tyWriteHdls.a_dwHdls := fbWriteGetNodeHdlList.a_dwNodeHdlList;
					fbWriteGetNodeHdlList(bEn := FALSE);
								
					usiChkIpAddrStep := 4;
				ELSIF fbWriteGetNodeHdlList.udiStatus < 65534 THEN
					fbWriteGetNodeHdlList(bEn := FALSE);
				
					usiChkIpAddrStep := 9;
				END_IF
		
			4:
				//Write List
				fbWriteList.dwConnectionHdl := dwConnectionHdl;
			
				fbWriteList.a_dwNodeHdlList := tyWriteHdls.a_dwHdls;
			
				sVNCIPAddr	:= g_tyHWInfo.sIPAddr;
			
				IF LEN(g_tyUIOut.sSetHMIIPAddr) > 0 THEN
					sHMIIPAddr	:= g_tyUIOut.sSetHMIIPAddr;
				ELSE
					sHMIIPAddr	:= tyMcParamCurr.sHMIIPAddr;
				END_IF
							
				fbWriteList.a_sClientTagNm[0] := '::McParam:sVNCIPAddr';
				fbWriteList.a_sClientTagNm[1] := '::McParam:sHMIIPAddr';
				fbWriteList(bEn := TRUE);
			
				IF fbWriteList.udiStatus = 0 THEN
					fbWriteList(bEn := FALSE);
				
					usiChkIpAddrStep := 5;
				ELSIF fbWriteList.udiStatus < 65534 THEN
					fbWriteList(bEn := FALSE);
				
					usiChkIpAddrStep := 9;
				END_IF
		
			5:
				//Method Get Handle (Save Configuration)
				fbSaveCfgMethodGetHdl.dwConnectionHdl := dwConnectionHdl;
				fbSaveCfgMethodGetHdl(bEn := TRUE);
			
				IF fbSaveCfgMethodGetHdl.udiStatus = 0 THEN
					dwMethodHdl	:= fbSaveCfgMethodGetHdl.dwMethodHdl;
					fbSaveCfgMethodGetHdl(bEn := FALSE);
								
					usiChkIpAddrStep := 6;
				ELSIF fbSaveCfgMethodGetHdl.udiStatus < 65534 THEN
					fbSaveCfgMethodGetHdl(bEn := FALSE);
										
					usiChkIpAddrStep := 9;
				END_IF
		
			6:
				//Method Call (Save Configuration)
				fbSaveCfgMethodCall.dwConnectionHdl		:= dwConnectionHdl;
				fbSaveCfgMethodCall.dwMethodHdl			:= dwMethodHdl;
						
				fbSaveCfgMethodCall(bEn	:= TRUE);
						
				IF fbSaveCfgMethodCall.udiStatus = 0 THEN
					fbSaveCfgMethodCall	(bEn := FALSE);
								
					usiChkIpAddrStep	:= 7;
				ELSIF fbSaveCfgMethodCall.udiStatus	< 65534 THEN
					fbSaveCfgMethodCall(bEn := FALSE);
									
					usiChkIpAddrStep	:= 9; 
				END_IF
		
			7:
				//Method Get Handle (Load Configuration)
				fbLoadCfgMethodGetHdl.dwConnectionHdl		:= dwConnectionHdl;
				fbLoadCfgMethodGetHdl(bEn := TRUE);
						
				IF fbLoadCfgMethodGetHdl.udiStatus = 0 THEN
					dwMethodHdl	:= fbLoadCfgMethodGetHdl.dwMethodHdl;
					fbLoadCfgMethodGetHdl(bEn := FALSE);
								
					usiChkIpAddrStep := 8;
				ELSIF fbLoadCfgMethodGetHdl.udiStatus < 65534 THEN
					fbLoadCfgMethodGetHdl(bEn := FALSE);
					dwMethodHdl	:= 0;
				
					usiChkIpAddrStep := 9;
				END_IF
		
			8:
				//Method Call (Load Configuration)
				fbLoadCfgMethodCall.dwConnectionHdl			:= dwConnectionHdl;
				fbLoadCfgMethodCall.dwMethodHdl				:= dwMethodHdl;
				fbLoadCfgMethodCall(bEn := TRUE);
							
				IF fbLoadCfgMethodCall.udiStatus = 0 THEN
					fbLoadCfgMethodCall(bEn := FALSE);
								
					usiChkIpAddrStep	:= 9;
				ELSIF fbLoadCfgMethodCall.udiStatus < 65534 THEN
					fbLoadCfgMethodCall(bEn := FALSE);

					usiChkIpAddrStep := 9;
				END_IF
		
			9:
				//Disconnect
				fbDisconnectOPCUA.dwConnectionHdl		:= dwConnectionHdl;
				fbDisconnectOPCUA(bEn := TRUE);
		
				IF fbDisconnectOPCUA.udiStatus = 0 THEN
					fbDisconnectOPCUA(bEn := FALSE);
					dwConnectionHdl	:= 0;
					dwMethodHdl		:= 0;
					eStatus := Done;
				
					usiChkIpAddrStep	:=0;
				
				ELSIF fbDisconnectOPCUA.udiStatus < 65534 THEN
					fbDisconnectOPCUA(bEn := FALSE);
					dwConnectionHdl := 0;
					bConnected := FALSE;
					udiStatus			:= 10013; //Failed to Call Load Configuration Method

					usiChkIpAddrStep := 0;
				END_IF

		END_CASE
	
		IF bConnected = FALSE THEN
			udiStatus := 10010;
		
			//eStatus := Error;
			IF dwConnectionHdl = 0 THEN
			
				IF LEN(sHMIIPAddr) > 0 THEN
					tyMcParamCurr.sHMIIPAddr := sHMIIPAddr;
				ELSIF LEN(g_tyUIOut.sSetHMIIPAddr) > 0 THEN
					tyMcParamCurr.sHMIIPAddr := g_tyUIOut.sSetHMIIPAddr;
				END_IF
						
			ELSE
				dwConnectionHdl := 0;
			END_IF
		
		ELSIF bConnected = TRUE AND udiStatus = 10010 THEN
			bRstErr := TRUE;
		END_IF
	END_IF
END_ACTION
