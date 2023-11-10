
ACTION Act_OptP0000Hermes: //Can receive at anytime, at any Page
	
	//SendBordInfo can be received at anytime, at any Page
	IF (p_bRcvBoardInfoIncompl AND tyCommon.tyInfo.tyHotspotClose.bRtCompl = TRUE) OR EDGENEG (p_bRcvBoardInfoOk) OR tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue = FALSE THEN //Reset	
		bQueryBoardInfo := FALSE;
		tyP0201OpsTravLifter.tyOps.tyBtnQueryBoardInfo.bValue := FALSE;
	END_IF
	
	//Reset QueryWorkOrderInfo when Close C0009 Info
	IF EDGEPOS (tyCommon.tyInfo.tyHotspotClose.bRtCompl = TRUE OR tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue = FALSE OR p_bRcvWorkOrderInfo1) THEN
		bQueryWorkOrderInfo := FALSE;
		tyP0201OpsTravLifter.tyOps.tyBtnQueryWorkOrderInfo.bValue := FALSE;
	END_IF
	
	//Configure update can happen at anytime, at any Page (Can modify to Reset this when User Press tyCommon.tyInfo.tyHotspotClose.bRtCompl)
	IF p_bRmtUpdateUIData = TRUE OR p_bSvyUpdateUIData = TRUE THEN
		
		//Update UI Upstream Configure 
		tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.diValue		:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].tSndAlive);
		tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.diValue			:= INT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].iLaneID);
		tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.diValue			:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].uiHostPort);
		tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.sValue		:= p_tyHermesConfiguration.a_tyUSParam[0].sHostAddress;
		tyP1023McSetHComm.tyUSHermesA.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureCheckAliveResponse;
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpTypeId;
		tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpParam;
		tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bValue			:= p_tyHermesConfiguration.a_tyUSParam[0].bOverwrite;
		tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureBoardForecast;//new
		tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureQueryBoardInfo;//new
			
		tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.diValue		:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].tSndAlive);
		tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.diValue			:= INT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].iLaneID);
		tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.diValue			:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].uiHostPort);
		tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.sValue		:= p_tyHermesConfiguration.a_tyUSParam[1].sHostAddress;
		tyP1023McSetHComm.tyUSHermesB.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyUSParam[1].bFeatureCheckAliveResponse;
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue			:= p_tyHermesConfiguration.a_tyUSParam[1].bCmpTypeId;
		tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bValue			:= p_tyHermesConfiguration.a_tyUSParam[1].bCmpParam;
		tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bValue			:= p_tyHermesConfiguration.a_tyUSParam[1].bOverwrite;
		tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.bValue		:= p_tyHermesConfiguration.a_tyUSParam[1].bFeatureBoardForecast;//new
		tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.bValue		:= p_tyHermesConfiguration.a_tyUSParam[1].bFeatureQueryBoardInfo;//new

		//Update UI Supervisory Configure
		tyP1022McSetVComm.tyVComSvy.tyNumSndAliveTm.diValue	    	:= TIME_TO_DINT(p_tyHermesConfiguration.tySvyParam.tSndAlive);
		tyP1022McSetVComm.tyVComSvy.tyNumSvySystemPort.diValue	    := UINT_TO_DINT(p_tyHermesConfiguration.tySvyParam.uiSvySvstemPort);
		tyP1022McSetVComm.tyVComSvy.tyBtnConfiguration.bValue		:= p_tyHermesConfiguration.tySvyParam.bFeatureConfiguration;
		tyP1022McSetVComm.tyVComSvy.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.tySvyParam.bFeatureCheckAliveResponse;
		tyP1022McSetVComm.tyVComSvy.tyBtnBoardTracking.bValue		:= p_tyHermesConfiguration.tySvyParam.bFeatureBoardTracking;
		tyP1022McSetVComm.tyVComSvy.tyBtnQueryWorkOrderInfo.bValue	:= p_tyHermesConfiguration.tySvyParam.bFeatureQueryWorkOrderInfo;
		tyP1022McSetVComm.tyVComSvy.tyBtnSendWorkOrderInfo.bValue   := p_tyHermesConfiguration.tySvyParam.bFeatureSendWorkOrderInfo;
		
		//Update UI Mc Name and Backup Mc Name of P1021
		tyP1021McSetGen.tyGen.tyStringMcNm.sValue			    	:= p_tyMcParamCurr.sMcNm; //String[30] doesnt tally with MachineId String[80] currently.
		tyP1021McSetGen.tyGenBkUp.tyStringMcNm	                    := tyP1021McSetGen.tyGen.tyStringMcNm;
		
		
		//Update Backup Param P1022
		tyP1022McSetVComm.tyVComSelBkUp	    := tyP1022McSetVComm.tyVComSel;
		tyP1022McSetVComm.tyVComSvyBkUp	    := tyP1022McSetVComm.tyVComSvy;
		tyP1022McSetVComm.tyLFBkUp		    := tyP1022McSetVComm.tyLF;
		
		//Update Backup Param P1023
		tyP1023McSetHComm.tyUSSelABkUp		:= tyP1023McSetHComm.tyUSSelA;
		tyP1023McSetHComm.tyUSSMEMAABkUp	:= tyP1023McSetHComm.tyUSSMEMAA;
		tyP1023McSetHComm.tyUSHermesABkUp	:= tyP1023McSetHComm.tyUSHermesA;
		
		tyP1023McSetHComm.tyUSSelBBkUp		:= tyP1023McSetHComm.tyUSSelB;
		tyP1023McSetHComm.tyUSSMEMABBkUp	:= tyP1023McSetHComm.tyUSSMEMAB;
		tyP1023McSetHComm.tyUSHermesBBkUp	:= tyP1023McSetHComm.tyUSHermesB;
		
	END_IF
	
END_ACTION
