(** 2019-06-07 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	
	p_sClntIP ACCESS ADR(sClntIP); //plc ip
	p_sSvrIP ACCESS ADR(sSvrIP); //scanner ip
	p_uiClntPort ACCESS ADR(uiClntPort); //def :0
	p_uiSvrPort ACCESS ADR(uiSvrPort); //scanner port
	p_bRun ACCESS ADR(bRun); ;
	p_udiSndBffrSize ACCESS ADR(udiSndBffrSize);
	p_udiRcvBffrSize ACCESS ADR(udiRcvBffrSize);
	p_udiAliveIdleTmInSec ACCESS ADR(udiAliveIdleTmInSec);
	p_tConnectTO ACCESS ADR(tConnectTO);
	p_sMsgWr ACCESS ADR(sMsgWr);
	p_diStartCode1 ACCESS ADR(diStartCode1);
	p_diStartCode2 ACCESS ADR(diStartCode2);
	p_diEndCode1 ACCESS ADR(diEndCode1);
	p_diEndCode2 ACCESS ADR(diEndCode2);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
