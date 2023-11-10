(** 2021-08-01 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_bPrep ACCESS ADR(bPrep);
	p_bEn ACCESS ADR(bEn);
	p_bDis ACCESS ADR(bDis);
	p_tyParam ACCESS ADR(tyParam);
	p_sIPAddr ACCESS ADR(sIPAddr);
	p_tyDTStructure ACCESS ADR(tyDTStructure);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_bRdyRcv ACCESS ADR(bRdyRcv);
	p_bRdyTransport ACCESS ADR(bRdyTransport);
	p_bRcvCompl ACCESS ADR(bRcvCompl);
	p_bRcvIncompl ACCESS ADR(bRcvInCompl);
	p_bRcvNotStart ACCESS ADR(bRcvNotStart);
	p_bBAWidthEn ACCESS ADR(bBAWidthEn);
	p_bBASltEn ACCESS ADR(bBASltEn);
	p_bBFWidthEn ACCESS ADR(bBFWidthEn);
	p_bBFSltEn ACCESS ADR(bBFSltEn);
	p_sMcId ACCESS ADR(sMcId);
	p_sInterfaceId ACCESS ADR(sInterfaceId);
	p_sVersion ACCESS ADR(sVersion);
	p_eFailedBoard ACCESS ADR(eFailedBoard);
	p_sRecipeNm ACCESS ADR(sRecipeNm);
	p_diWidthInUM ACCESS ADR(diWidthInUM);
	p_diMinSltValue ACCESS ADR(diMinSltValue);
	p_diMaxSltValue ACCESS ADR(diMaxSltValue);
	p_diPitch ACCESS ADR(diPitch);
	p_diTtlSlt ACCESS ADR(diTtlSlt);
	p_diSltToSltInUM ACCESS ADR(diSltToSltInUM);
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
	p_bAccDataRdy ACCESS ADR(bAccDataRdy);
	p_bRmtPrep ACCESS ADR(bRmtPrep);
	p_bRmtEn ACCESS ADR(bRmtEn);
	p_bSvyPrep ACCESS ADR(bSvyPrep);
	p_bSvyEn ACCESS ADR(bSvyEn);
	pa_tyProdRcpList ACCESS ADR(a_tyProdRcpList);
	p_tyProdRcpCurrRcp ACCESS ADR(tyProdRcpCurrRcp);
	p_bMcParamMnlAccData ACCESS ADR(bMcParamMnlAccData);
	p_bOpsGConv1HvBrd ACCESS ADR(bOpsGConv1HvBrd);
	p_bManualInsertEndSen ACCESS ADR(bManualInsertEndSen);
	p_bManualInsertZoneHvBrd ACCESS ADR(bManualInsertZoneHvBrd);
	p_bUIAccData ACCESS ADR(bUIAccData);
    p_bQueryBoardInfo ACCESS ADR(bQueryBoardInfo);
	p_sTopBarcode ACCESS ADR(sTopBarcode);
	p_sBottomBarcode ACCESS ADR(sBottomBarcode);
	p_tyHermesConfiguration ACCESS ADR(tyHermesCurrConfiguration);
	p_bTransportFinished ACCESS ADR(bTransportFinished);	
	p_bInternalUse ACCESS ADR(bInternalUse);
	p_sInternalRcv ACCESS ADR(sInternalRcv);
	p_bAccNewRcpCond ACCESS ADR(bAccNewRcpCond);
	p_sInfoMsg ACCESS ADR(sInfoMsg);
	p_sInfoMsg1 ACCESS ADR(sInfoMsg1);
	p_sInfoMsg2 ACCESS ADR(sInfoMsg2);


	
END_ACTION
