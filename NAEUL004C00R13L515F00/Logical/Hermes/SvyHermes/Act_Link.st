(** 2021-08-01 **)
ACTION Act_Link:
	
	//Receive Alive Time
	p_tyParam.tRcvAlive	:= p_tyParam.tSndAlive * 2;
	
	//Board Depart
	bTransportFinish1 := p_bDSSMEMA1ConvStart AND EDGENEG(p_bPshrConvHvBrd);
	bTransportFinish2 := p_bDSSMEMA2ConvStart AND EDGENEG(p_bPshrConvHvBrd);
	bTransportFinish3 := p_bDSSMEMA3ConvStart AND EDGENEG(p_bPshrConvHvBrd);
	
	p_bDSHermesTransportFinished1:= bTransportFinish1 OR bTransportFinish2 OR bTransportFinish3;
	//Depart internal SMEMA
	IF EDGEPOS(p_bDSHermesTransportFinished1) THEN// p_bDSHermesTransportFinished1 OR p_bDSHermesTransportFinished2 OR p_bDSHermesTransportFinished3 ) THEN
		memset(ADR(p_bUSHermesARcvBoardInfo),0,SIZEOF(p_bUSHermesARcvBoardInfo));
		IF p_bLinkBrdAvlDataNewBrdAvl1stZ THEN //newly inserted 
			//p_tyDSBoardDeparted1.tyData.sBoardId;
			IF NOT(p_bUSHermesARcvBoardInfo) THEN //create new BA
				fHermesGenerateUUID(ADR(tyDsInternalBoardDeparted.tyData.sBoardId) , p_tyDTStructure , pa_usiMacAddr);
				tyDsInternalBoardDeparted.tyData.sBoardIdCreatedBy := p_sMcId;
				tyDsInternalBoardDeparted.tyData.eFailedBoard  := BOOL_TO_USINT(p_bOpsTravLifGdBrdChk)*HermesGoodBoard + BOOL_TO_USINT(NOT(p_bOpsTravLifGdBrdChk))*HermesFailedBoard ;
				tyDsInternalBoardDeparted.tyData.sProductTypeId := p_tyProdRcpCurrRcp1.sRcpNm;
				tyDsInternalBoardDeparted.tyData.sTopBarcode := ''; //from UI
				tyDsInternalBoardDeparted.tyData.sBottomBarcode := ''; //from UI
				tyDsInternalBoardDeparted.tyData.rWidth := DINT_TO_REAL(p_tyProdRcpCurrRcp1.diWidthInUM)/1000;//Rcp
				tyDsInternalBoardDeparted.tyData.rThickness				:= rThickness;
				tyDsInternalBoardDeparted.tyData.rConveyorSpeed			:= rConveyorSpeed;
				tyDsInternalBoardDeparted.tyData.rTopClearanceHeight	:= rTopClearanceHeight;
				tyDsInternalBoardDeparted.tyData.rBottomClearanceHeight	:= rBottomClearanceHeight;
				tyDsInternalBoardDeparted.tyData.rWeight := rWeight;
				tyDsInternalBoardDeparted.tyData.sWorkOrderId := '';
				tyDsInternalBoardDeparted.tyData.sBatchId	:= '';
			ELSE //Take from Send Board Info
				tyDsInternalBoardDeparted.tyData.sBoardId				:= p_tyUSHermesSendBoardInfoAcpt.tyData.sBoardId;
				tyDsInternalBoardDeparted.tyData.sBoardIdCreatedBy 		:= p_tyUSHermesSendBoardInfoAcpt.tyData.sBoardIdCreatedBy;
				tyDsInternalBoardDeparted.tyData.eFailedBoard 			:= p_tyUSHermesSendBoardInfoAcpt.tyData.eFailedBoard;
				tyDsInternalBoardDeparted.tyData.sProductTypeId 		:= p_tyUSHermesSendBoardInfoAcpt.tyData.sProductTypeId;
				tyDsInternalBoardDeparted.tyData.sTopBarcode 			:= p_tyUSHermesSendBoardInfoAcpt.tyData.sTopBarcode;
				tyDsInternalBoardDeparted.tyData.sBottomBarcode 		:= p_tyUSHermesSendBoardInfoAcpt.tyData.sBottomBarcode;
				tyDsInternalBoardDeparted.tyData.rWidth 				:= p_tyUSHermesSendBoardInfoAcpt.tyData.rWidth;//Rcp
				tyDsInternalBoardDeparted.tyData.rThickness				:= p_tyUSHermesSendBoardInfoAcpt.tyData.rThickness;
				tyDsInternalBoardDeparted.tyData.rTopClearanceHeight	:= p_tyUSHermesSendBoardInfoAcpt.tyData.rTopClearanceHeight;
				tyDsInternalBoardDeparted.tyData.rBottomClearanceHeight	:= p_tyUSHermesSendBoardInfoAcpt.tyData.rBottomClearanceHeight;
				tyDsInternalBoardDeparted.tyData.rWeight 				:= p_tyUSHermesSendBoardInfoAcpt.tyData.rWeight;
				tyDsInternalBoardDeparted.tyData.sWorkOrderId 			:= p_tyUSHermesSendBoardInfoAcpt.tyData.sWorkOrderId;
				tyDsInternalBoardDeparted.tyData.sBatchId				:= p_tyUSHermesSendBoardInfoAcpt.tyData.sBatchId;				
			END_IF
		ELSE //taken from USHemes 
			fbParseBrdAvlExternal.p_XMLTable := ADR(pa_tyLinkXMLTableDataBrdAvl1);
			fbParseBrdAvlExternal.iTotalIdxWrite := p_iLinkXMLTableDataBrdAvlTtlIdx1;
			fbParseBrdAvlExternal;
			tyDsInternalBoardDeparted := fbParseBrdAvlExternal.tyBoardAvailable;	
		END_IF
		//differiate 
		IF bTransportFinish1 THEN
			sMagazineId := '1';
			iSlotId := DINT_TO_INT(p_diBuffer1Slt);
			p_eBoardTransfer1 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
			p_tyDSBoardDeparted1 := tyDsInternalBoardDeparted;
		ELSIF bTransportFinish2 THEN
			sMagazineId := '2';
			iSlotId	 := DINT_TO_INT(p_diBuffer2Slt);
			p_eBoardTransfer1 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
			p_tyDSBoardDeparted1 := tyDsInternalBoardDeparted;
		ELSIF bTransportFinish3 THEN
			sMagazineId := '3';
			iSlotId := DINT_TO_INT(p_diBuffer3Slt);
			p_eBoardTransfer1 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
			p_tyDSBoardDeparted1 := tyDsInternalBoardDeparted;
		END_IF
		
	END_IF		
		
		
		
//		IF EDGEPOS(p_bDSHermesTransportFinished1) THEN
//			sMagazineId := '1';
//			iSlotId := DINT_TO_INT(p_diBuffer1Slt);
//			p_eBoardTransfer1 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
//			p_tyDSBoardDeparted1 := tyDsInternalBoardDeparted;
//			
//		ELSIF EDGEPOS(p_bDSHermesTransportFinished2) THEN
//			sMagazineId := '2';
//			iSlotId	 := DINT_TO_INT(p_diBuffer2Slt);
//			p_eBoardTransfer2 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
//			p_tyDSBoardDeparted2 := tyDsInternalBoardDeparted;
//		ELSIF EDGEPOS(p_bDSHermesTransportFinished3) THEN
//			sMagazineId := '3';
//			iSlotId := DINT_TO_INT(p_diBuffer3Slt);
//			p_eBoardTransfer3 := BOOL_TO_USINT(p_bLinkBrdAvlDataNewBrdAvl1stZ)*HermesInserted + BOOL_TO_USINT(NOT(p_bLinkBrdAvlDataNewBrdAvl1stZ))*HermesTransferred;  
//			p_tyDSBoardDeparted3 := tyDsInternalBoardDeparted;
//		END_IF
		
		

	
	
	
	//Info Message
	p_sInfoMsg		:= 'Hermes Configuration Received From Supervisory System';
	
	//Info Message 1
	p_sInfoMsg1     := 'Work Order Info Received From Supervisory System';
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , '$r$n');
	p_sInfoMsg1		:= CONCAT(p_sInfoMsg1 , 'PCB Work Order Info Will Be Overwritten');
	
	//Info Message 2
//	p_sInfoMsg2     := 'Work Order Info Not Found From Supervisory System';
	p_sInfoMsg2     := 'Work Order Or Data Info Invalid From Supervisory System';
	p_sInfoMsg2		:= CONCAT(p_sInfoMsg2 , '$r$n');
	p_sInfoMsg2  	:= CONCAT(p_sInfoMsg2 , 'Please Try Again');
	
	//Info Message 3
	p_sInfoMsg3     := 'Query Work Order Not Possible';
	p_sInfoMsg3		:= CONCAT(p_sInfoMsg3 , '$r$n');
	p_sInfoMsg3  	:= CONCAT(p_sInfoMsg3 , 'Please Empty the Machines');
	p_sInfoMsg3		:= CONCAT(p_sInfoMsg3 , '$r$n');
	p_sInfoMsg3  	:= CONCAT(p_sInfoMsg3 , 'and Try Again');
	
	//Info Message 4
	p_sInfoMsg4     := 'Work Order Info Received From Supervisory System';
	p_sInfoMsg4		:= CONCAT(p_sInfoMsg4 , '$r$n');
	p_sInfoMsg4  	:= CONCAT(p_sInfoMsg4 , 'PCB Work Order Info Will Be Queue for next Batch');

	
	//Accept WorkOrderId from Supervisory System, adjust accordingly 
	//(Loader Machine: Magazine area empty, Lifter area empty)
	//(Destacker Machine: load pcb stack area empty and conveyor empty)
	//Unloader do not accep WO
	p_bAcceptCondition := FALSE;//p_bAllZonesEmpty (*AND p_bUITopUpBrdRdy =FALSE*);
	
	IF 	p_tyUSBoardAvailableRcv.tyData.sWorkOrderId = '' OR p_tyUSBoardAvailableRcv.tyData.sWorkOrderId <> tySendBypassWorkOrderInfoAcc.tyData.sWorkOrderId OR p_tyUSBoardAvailableRcv.tyData.sBatchId = '' OR  p_tyUSBoardAvailableRcv.tyData.sBatchId <> tySendBypassWorkOrderInfoAcc.tyData.sBatchId OR 
		p_tyUSBoardAvailableRcv.tyData.rWidth = 0 OR p_tyUSBoardAvailableRcv.tyData.rWidth <> tySendBypassWorkOrderInfoAcc.tyData.rWidth THEN
		IF p_tyUSBoardAvailableRcv.tyData.sTopBarcode <> '' OR p_tyUSBoardAvailableRcv.tyData.sBottomBarcode <> '' THEN 
			sUSBarcode := p_tyUSBoardAvailableRcv.tyData.sTopBarcode; 
			bNewIncomingBoard := TRUE;
		ELSIF p_tyUSBoardAvailableRcv.tyAvl.bTopBarcode = FALSE OR p_tyUSBoardAvailableRcv.tyAvl.bBottomBarcode THEN
			sUSBarcode := p_tyUSBoardAvailableRcv.tyData.sBottomBarcode; 
			bNewIncomingBoard := TRUE;
		ELSE
			bNewIncomingBoard := FALSE;	
		END_IF	
	ELSIF p_tyUSBoardForecastRcv.tyAvl.bWorkOrderId OR p_tyUSBoardForecastRcv.tyAvl.bBatchId OR p_tyUSBoardForecastRcv.tyAvl.bWeight THEN
		
		IF p_tyUSBoardForecastRcv.tyData.sWorkOrderId = '' OR p_tyUSBoardForecastRcv.tyData.sWorkOrderId <> tySendBypassWorkOrderInfoAcc.tyData.sWorkOrderId OR p_tyUSBoardForecastRcv.tyData.sBatchId = '' OR  p_tyUSBoardForecastRcv.tyData.sBatchId <> tySendBypassWorkOrderInfoAcc.tyData.sBatchId OR 
			p_tyUSBoardForecastRcv.tyData.rWidth = 0 OR p_tyUSBoardForecastRcv.tyData.rWidth <> tySendBypassWorkOrderInfoAcc.tyData.rWidth THEN	
			
			IF p_tyUSBoardForecastRcv.tyData.sTopBarcode <> '' OR p_tyUSBoardForecastRcv.tyData.sBottomBarcode <> '' THEN 
				
			sUSBarcode := p_tyUSBoardForecastRcv.tyData.sTopBarcode; 
			bNewIncomingBoard := TRUE;
			ELSIF p_tyUSBoardForecastRcv.tyAvl.bTopBarcode = FALSE OR p_tyUSBoardForecastRcv.tyAvl.bBottomBarcode THEN
			sUSBarcode := p_tyUSBoardForecastRcv.tyData.sBottomBarcode; 
			bNewIncomingBoard := TRUE;
			ELSE
				bNewIncomingBoard := FALSE;	
			END_IF
		ELSE
			bNewIncomingBoard := FALSE;	
		END_IF
	ELSE
		bNewIncomingBoard := FALSE;	
	END_IF
	
	
	IF EDGENEG (p_bQueryWorkOrderInfo)  THEN 
		IF p_bOpsConvWaitForTopUpBrd THEN
			bManualQueryWO := TRUE;
		ELSIF p_bOpsConvWaitForTopUpBrd = FALSE THEN
			bManualQueryWO := FALSE;
		END_IF
	END_IF
	
	IF p_bOpsConvWaitForTopUpBrd = FALSE THEN 
		bManualQueryWO := FALSE; 
	END_IF
	
	IF diReqLoaderWidthInUM = 0 THEN                           //Load Data during bootup
		diReqLoaderWidthInUM := REAL_TO_DINT(tySendWorkOrderInfoAcc.tyData.rWidth * 1000);
	END_IF
		
	IF EDGENEG (p_bLinkStartupRun) THEN 
		sWorkOrderId := tySendWorkOrderInfoNewAcc.tyData.sWorkOrderId;
	END_IF
	
	//	phase 2
//	bChangeOverLifter := lifterEmpty + no UBA + waitTimeOut; 
//	bChangeOverLoader := lifterEmpty + UBA + waitTimeOut; 
//	IF  p_bAcceptConditionLifter  THEN 
//		tySendWorkOrderInfoAccPublish := tySendWorkOrderInfoAcc;
//	ELSIF  p_bAcceptConditionLoader  THEN 
//		tySendWorkOrderInfoAccPublish := tySendWorkOrderInfoAcc;
//	END_IF
END_ACTION
