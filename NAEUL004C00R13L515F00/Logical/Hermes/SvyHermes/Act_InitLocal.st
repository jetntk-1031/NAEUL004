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
	pa_usiMacAddr ACCESS ADR(a_usiMacAddr);
	p_tyDTStructure ACCESS ADR(tyDTStructure);
	p_dtCurrDT ACCESS ADR(dtCurrDT);
	p_sMcId ACCESS ADR(sMcId);
	p_sMagazineId ACCESS ADR(sMagazineId);
	p_iSlotId ACCESS ADR(iSlotId);
	p_eBoardTransfer1 ACCESS ADR(eBoardTransfer1);
	p_eBoardTransfer2 ACCESS ADR(eBoardTransfer2);
	p_eBoardTransfer3 ACCESS ADR(eBoardTransfer3);
	p_eBoardTransfer4 ACCESS ADR(eBoardTransfer4);
	p_sVersion ACCESS ADR(sVersion);
	p_sBarcode ACCESS ADR(sBarcode);
	p_sRecipeNm ACCESS ADR(sRecipeNm);
	p_udiSndBffrSize ACCESS ADR(udiSndBffrSize);
	p_udiRcvBffrSize ACCESS ADR(udiRcvBffrSize);
	p_udiAliveIdleTimeInSec ACCESS ADR(udiAliveIdleTimeInSec);
	p_tConnTimeOut ACCESS ADR(tConnTimeOut);
	p_diTransferInTO ACCESS ADR(diTransferInTO);
	p_bNewBrdAvlLastZone ACCESS ADR(bNewBrdAvl);
	p_bOpsRun ACCESS ADR(bOpsRun);
	p_udiFileKeepDay ACCESS ADR(udiFileKeepDay);
	p_sConfigFileName ACCESS ADR(sConfigFileName);
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	p_bSvyPrep ACCESS ADR(bSvyPrep);
	p_bSvyEn ACCESS ADR(bSvyEn);
	p_bQueryWorkOrderInfo ACCESS ADR(bQueryWorkOrderInfo);
	p_tyHermesConfiguration ACCESS ADR(tyHermesCurrConfiguration);
	p_bUSHermesStopTransport1 ACCESS ADR(bUSHermesStopTransportSnd1); //Lane 1
	p_bUSHermesStopTransport2 ACCESS ADR(bUSHermesStopTransportSnd2); //Lane 2
	p_bUSHermesStopTransport3 ACCESS ADR(bUSHermesStopTransportSnd3); //Lane 3
	p_bUSHermesStopTransport4 ACCESS ADR(bUSHermesStopTransportSnd4); //Lane 4
	p_tyUSBoardArrived1 ACCESS ADR(tyUSHermesBoardArrivedData1); //Lane 1
	p_tyUSBoardArrived2 ACCESS ADR(tyUSHermesBoardArrivedData2); //Lane 2
	p_tyUSBoardArrived3 ACCESS ADR(tyUSHermesBoardArrivedData3); //Lane 3
	p_tyUSBoardArrived4 ACCESS ADR(tyUSHermesBoardArrivedData4); //Lane 4
	p_bDSHermesTransportFinished1 ACCESS ADR(bDSHermesTransportFinishedSnd1); //Lane 1
	p_bDSHermesTransportFinished2 ACCESS ADR(bDSHermesTransportFinishedSnd2); //Lane 2
	p_bDSHermesTransportFinished3 ACCESS ADR(bDSHermesTransportFinishedSnd3); //Lane 3
	p_bDSHermesTransportFinished4 ACCESS ADR(bDSHermesTransportFinishedSnd4); //Lane 4
	p_tyDSBoardDeparted1 ACCESS ADR(tyDSHermesBoardDepartedData1); //Lane 1
	p_tyDSBoardDeparted2 ACCESS ADR(tyDSHermesBoardDepartedData2); //Lane 2
	p_tyDSBoardDeparted3 ACCESS ADR(tyDSHermesBoardDepartedData3); //Lane 3
	p_tyDSBoardDeparted4 ACCESS ADR(tyDSHermesBoardDepartedData4); //Lane 4
	p_sInfoMsg ACCESS ADR(sInfoMsg);
	p_sInfoMsg1 ACCESS ADR(sInfoMsg1);
	p_sInfoMsg2 ACCESS ADR(sInfoMsg2);
	p_sInfoMsg3 ACCESS ADR(sInfoMsg3);
	p_sInfoMsg4 ACCESS ADR(sInfoMsg4);
	p_bInternalUse ACCESS ADR(bInternalUse);
	p_sInternalRcv ACCESS ADR(sInternalRcv);
	p_bAcceptCondition ACCESS ADR(bAcceptCondition);
	p_bAllZonesEmpty ACCESS ADR(bAllZonesEmpty);
	p_bDeleteWorkOrder ACCESS ADR(bDeleteWorkOrder);
	p_bFirstMcIntheLine ACCESS ADR(bFirstMcIntheLine);
	p_sRetainFileName ACCESS ADR(sRetainFileName);
	p_udiRetainDataAddr ACCESS ADR(udiRetainDataAddr);
	p_udiRetainDataLen ACCESS ADR(udiRetainDataLen);
	p_sRetainFileName1 ACCESS ADR(sRetainFileName1);           //ADD
	p_sRetainFileName2 ACCESS ADR(sRetainFileName2);
	p_sRetainFileName3 ACCESS ADR(sRetainFileName3);
	p_udiLoaderRetainDataAddr0 ACCESS ADR(udiLoaderRetainDataAddr0);       
	p_udiLoaderRetainDataLen0 ACCESS ADR(udiLoaderRetainDataLen0);
	p_udiLoaderRetainDataAddr1 ACCESS ADR(udiLoaderRetainDataAddr1);
	p_udiLoaderRetainDataLen1 ACCESS ADR(udiLoaderRetainDataLen1);
	p_udiBypassRetainDataAddr0 ACCESS ADR(udiBypassRetainDataAddr0);
	p_udiBypassRetainDataLen0 ACCESS ADR(udiBypassRetainDataLen0);        //ADD
	
	p_tyUSBoardAvailableRcv ACCESS ADR(tyHermesBARcv);
	p_tyUSBoardForecastRcv ACCESS ADR(tyHermesBFRcv);
	p_bOpsConvWaitForTopUpBrd ACCESS ADR(bOpsConvWaitForTopUpBrd);
	p_bUITopUpBrdRdy ACCESS	ADR(bUITopUpBrdRdy);	//Mag Present Sensor
	p_bLinkDIPresentSen ACCESS ADR(bDIPresentSen);  //Potential for query 3 empty Magzine Work Order 
	p_bOpsConvStepAllwTopUpBrd ACCESS ADR(bOpsConvStepAllwTopUpBrd);
	p_bOpsConvTopUpBrdReq ACCESS ADR(bOpsConvTopUpBrdReq);
	p_bLinkStepStackMode ACCESS ADR(bLinkStepStackMode);
END_ACTION
