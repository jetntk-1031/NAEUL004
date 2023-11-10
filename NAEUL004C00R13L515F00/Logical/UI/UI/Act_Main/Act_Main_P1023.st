
ACTION Act_Main_P1023:
	
	//Machine Setting - Horizontal Communicationm Control
	//Display
	tyP1023McSetHComm.tyUSSelA.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
	tyP1023McSetHComm.tyUSSelB.tyBtnHermes.uiRtStat.0	:= NOT p_tyNtParamCurr.bHermesPrep;
	
	IF p_tyNtParamCurr.bIPCSMEMA9851ExtdPrep = TRUE THEN
		tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 2;
		tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 2;
	ELSE
		tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 1;
		tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.usiValueMaxIdx	:= 1;
	END_IF
	
	tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.diValueMin	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMin;
	tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.diValueMax	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMax;
	tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.diValueMin	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMin;
	tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.diValueMax	:= p_tyNtParamCurr.tyUIHermesSndAliveTm.diMax;
	
	tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.diValueMin		:= p_tyNtParamCurr.tyUIHermesLnID.diMin;
	tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.diValueMax		:= p_tyNtParamCurr.tyUIHermesLnID.diMax;
	tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.diValueMin		:= p_tyNtParamCurr.tyUIHermesLnID.diMin;
	tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.diValueMax		:= p_tyNtParamCurr.tyUIHermesLnID.diMax;
	
	//Parameter - Upstream A
	CASE p_tyMcParamCurr.eUSCommA OF
		McSetCommModSMEMA:
			tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue	:= TRUE;
			tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtLk		:= TRUE;
			tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue	:= FALSE;
			tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtLk	:= FALSE;
		McSetCommModHermes:
			tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bValue	:= FALSE;
			tyP1023McSetHComm.tyUSSelA.tyBtnSMEMA.bRtLk		:= FALSE;
			tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bValue	:= TRUE;
			tyP1023McSetHComm.tyUSSelA.tyBtnHermes.bRtLk	:= TRUE;
	END_CASE
	
	tyP1023McSetHComm.tyUSSMEMAA.tyDrpDnSMEMAMod.usiValueIdx		:= UDINT_TO_USINT(p_tyMcParamCurr.tyUSCommASMEMA.eSelection);
	tyP1023McSetHComm.tyUSSMEMAA.tyBtnGdSig.bValue					:= p_tyMcParamCurr.tyUSCommASMEMA.bStatSigSetGd;
	
	tyP1023McSetHComm.tyUSHermesA.tyNumSndAliveTm.diValue			:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].tSndAlive);
	tyP1023McSetHComm.tyUSHermesA.tyNumLaneID.diValue				:= INT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].iLaneID);
	tyP1023McSetHComm.tyUSHermesA.tyNumHostPort.diValue				:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[0].uiHostPort);
	tyP1023McSetHComm.tyUSHermesA.tyStringHostAddr.sValue			:= p_tyHermesConfiguration.a_tyUSParam[0].sHostAddress;
	tyP1023McSetHComm.tyUSHermesA.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureCheckAliveResponse;
	tyP1023McSetHComm.tyUSHermesA.tyBtnCmpTypeId.bValue				:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpTypeId;
	tyP1023McSetHComm.tyUSHermesA.tyBtnCmpParam.bValue				:= p_tyHermesConfiguration.a_tyUSParam[0].bCmpParam;
	tyP1023McSetHComm.tyUSHermesA.tyBtnOverWrite.bValue				:= p_tyHermesConfiguration.a_tyUSParam[0].bOverwrite;
	tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureBoardForecast;//new for Hermes 1.3
	tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureQueryBoardInfo;//new for Hermes 1.3
	
	//Parameter - Upstream B
	CASE p_tyMcParamCurr.eUSCommB OF
		McSetCommModSMEMA:
			tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue	:= TRUE;
			tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtLk		:= TRUE;
			tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue	:= FALSE;
			tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtLk	:= FALSE;
		McSetCommModHermes:
			tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bValue	:= FALSE;
			tyP1023McSetHComm.tyUSSelB.tyBtnSMEMA.bRtLk		:= FALSE;
			tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bValue	:= TRUE;
			tyP1023McSetHComm.tyUSSelB.tyBtnHermes.bRtLk	:= TRUE;
	END_CASE
	
	tyP1023McSetHComm.tyUSSMEMAB.tyDrpDnSMEMAMod.usiValueIdx		:= UDINT_TO_USINT(p_tyMcParamCurr.tyUSCommBSMEMA.eSelection);
	tyP1023McSetHComm.tyUSSMEMAB.tyBtnGdSig.bValue					:= p_tyMcParamCurr.tyUSCommBSMEMA.bStatSigSetGd;
	
	tyP1023McSetHComm.tyUSHermesB.tyNumSndAliveTm.diValue			:= TIME_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].tSndAlive);
	tyP1023McSetHComm.tyUSHermesB.tyNumLaneID.diValue				:= INT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].iLaneID);
	tyP1023McSetHComm.tyUSHermesB.tyNumHostPort.diValue				:= UINT_TO_DINT(p_tyHermesConfiguration.a_tyUSParam[1].uiHostPort);
	tyP1023McSetHComm.tyUSHermesB.tyStringHostAddr.sValue			:= p_tyHermesConfiguration.a_tyUSParam[1].sHostAddress;
	tyP1023McSetHComm.tyUSHermesB.tyBtnCheckAliveResponse.bValue	:= p_tyHermesConfiguration.a_tyUSParam[1].bFeatureCheckAliveResponse;
	tyP1023McSetHComm.tyUSHermesB.tyBtnCmpTypeId.bValue				:= p_tyHermesConfiguration.a_tyUSParam[1].bCmpTypeId;
	tyP1023McSetHComm.tyUSHermesB.tyBtnCmpParam.bValue				:= p_tyHermesConfiguration.a_tyUSParam[1].bCmpParam;
	tyP1023McSetHComm.tyUSHermesB.tyBtnOverWrite.bValue				:= p_tyHermesConfiguration.a_tyUSParam[1].bOverwrite;
	tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureBoardForecast;//new for Hermes 1.3
	tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.bValue		:= p_tyHermesConfiguration.a_tyUSParam[0].bFeatureQueryBoardInfo;//new for Hermes 1.3

	tyP1023McSetHComm.tyUSHermesA.tyBtnBoardForecast.uiRtStat := NOT(p_tyNtParamCurr.bHermesSvyPrep);
	tyP1023McSetHComm.tyUSHermesA.tyBtnQueryBoardInfo.uiRtStat := NOT(p_tyNtParamCurr.bHermesSvyPrep);
	tyP1023McSetHComm.tyUSHermesB.tyBtnBoardForecast.uiRtStat := NOT(p_tyNtParamCurr.bHermesSvyPrep);
	tyP1023McSetHComm.tyUSHermesB.tyBtnQueryBoardInfo.uiRtStat := NOT(p_tyNtParamCurr.bHermesSvyPrep);
END_ACTION
