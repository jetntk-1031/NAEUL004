(** 2019-06-28 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_bManual ACCESS ADR(bManual);
	p_sIPAddr ACCESS ADR(sIPAddr);
	p_tyDTStructure ACCESS ADR(tyDTStructure);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_udiSndBffrSize ACCESS ADR(udiSndBffrSize);
	p_udiRcvBffrSize ACCESS ADR(udiRcvBffrSize);
	p_udiAliveIdleTimeInSec ACCESS ADR(udiAliveIdleTimeInSec);
	p_tConnTimeOut ACCESS ADR(tConnTimeOut);
	p_bOpsRun ACCESS ADR(bOpsRun);
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_sMsgSnd ACCESS ADR(sMsgSnd);
	p_sSvrIP ACCESS ADR(sSvrIP);
	p_uiSvrPort ACCESS ADR(uiSvrPort);
	p_uiClientPort ACCESS ADR(uiClientPort);
	
	p_eTCPModel ACCESS ADR (eTCPModel);
	p_bFltrIP ACCESS ADR(bFltrIP);
	p_bFltrPort ACCESS ADR(bFltrPort);
	p_sAllwClntIP ACCESS ADR(sAllwClntIP);
	p_uiAllwClntPort ACCESS ADR(uiAllwClntPort);
	p_bReconnect ACCESS ADR(bReconnect);

	p_usiProjMag ACCESS ADR(usiProjMag);
	p_bUSB ACCESS ADR(bUSB);
	p_bUSB2 ACCESS ADR(bUSB2);
	p_bDBA ACCESS ADR(bDBA);
	p_bDBA2 ACCESS ADR(bDBA2);

	//Machine status
	p_tyDTMagToAGV ACCESS ADR(tyDTMagToAGV);
//	p_tyDTMagToAGV1 ACCESS ADR(tyDTMagToAGV1);
//	p_tyDTMagToAGV2 ACCESS ADR(tyDTMagToAGV2);
//	p_tyDTMagToAGV3 ACCESS ADR(tyDTMagToAGV3);

END_ACTION
