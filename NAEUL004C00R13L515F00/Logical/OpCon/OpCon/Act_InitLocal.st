(** 2019-06-28 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_sIPAddr ACCESS ADR(sIPAddr);
	p_uiClntPort ACCESS ADR(uiClntPort); //def :0
	p_tyDTStructure ACCESS ADR(tyDTStructure);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_sVersion ACCESS ADR(sVersion);
	p_sRecipeNm ACCESS ADR(sRecipeNm);
	p_diWidthInUM ACCESS ADR(diWidthInUM);
	p_udiSndBffrSize ACCESS ADR(udiSndBffrSize);
	p_udiRcvBffrSize ACCESS ADR(udiRcvBffrSize);
	p_udiAliveIdleTimeInSec ACCESS ADR(udiAliveIdleTimeInSec);
	p_tConnTimeOut ACCESS ADR(tConnTimeOut);
	p_diTransferInTO ACCESS ADR(diTransferInTO);
	p_bOpsRun ACCESS ADR(bOpsRun);
	p_bInterruptSen ACCESS ADR(bInterruptSen);
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_sInfoMsg ACCESS ADR(sInfoMsg);
	p_bInternalUse ACCESS ADR(bInternalUse);
	p_sInternalRcv ACCESS ADR(sInternalRcv);
	pa_tyProdRcpList ACCESS ADR(a_tyProdRcpList);
	p_tyProdRcpCurrRcp ACCESS ADR(tyProdRcpCurrRcp);
	
	p_tyOpConLocation ACCESS ADR (tyOpConLocation);
	
	
END_ACTION
