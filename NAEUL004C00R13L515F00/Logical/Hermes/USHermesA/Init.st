(** 2021-08-01 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USHermesAStat		:= ADR(eStat);
	p_USHermesAStatus	:= ADR(eMainStatus);
	p_USHermesAStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USHermesAAlmData	:= ADR(tyAlmData);
	p_USHermesAAlmData1	:= ADR(tyAlmData1);
	p_USHermesAAlmData2	:= ADR(tyAlmData2);
	p_USHermesAAlmData3	:= ADR(tyAlmData3);
	p_USHermesAAlmData4	:= ADR(tyAlmData4);
	p_USHermesAAlmData5	:= ADR(tyAlmData5);
	p_USHermesAInfoData	:= ADR(tyInfoData);
	p_USHermesAInfoData1	:= ADR(tyInfoData1);
	p_USHermesAInfoData2	:= ADR(tyInfoData2);
	
	//Output
	p_USHermesATableDataBrdAvl		:= ADR(a_tyXMLTableDataBrdAvl);
	p_USHermesATableDataBrdAvlTtlIdx	:= ADR(iXMLTableDataBrdAvlTtlIdx);
	p_USHermesAConnected				:= ADR(bConnected);
	p_USHermesAHandshakeDone			:= ADR(bHandshakeDone);
	p_USHermesAAccDataReq			:= ADR(bAccDataReq);
	p_USHermesABFAccDataReq			:= ADR(bBFAccDataReq);
	p_USHermesAOverWriteSlt			:= ADR(bOverWriteSlt);
	p_USHermesAOverWriteWidth		:= ADR(bOverWriteWidth);
	p_USHermesAReqRecipeNm			:= ADR(sReqRecipeNm);
	p_USHermesAReqWidthInUM			:= ADR(diReqWidthInUM);
	p_USHermesAReqMinSltValue		:= ADR(diReqMinSltValue);
	p_USHermesAReqMaxSltValue		:= ADR(diReqMaxSltValue);
	p_USHermesAReqPitch				:= ADR(diReqPitch);
	p_USHermesAUSRdy					:= ADR(bUSRdy);
	p_USHermesADSRdy					:= ADR(bDSRdy);
	p_USHermesAUSGdRdy				:= ADR(bUSGdRdy);
	p_USHermesADSGdRdy				:= ADR(bDSGdRdy);
	p_USHermesATransporting			:= ADR(bTransporting);
	p_USHermesAStopTransport			:= ADR(bStopTransport);
	p_USHermesABlkUS					:= ADR(bBlkUS);
	p_USHermesAInternalSnd			:= ADR(sInternalSnd);
	p_USHermesAAccDataMnl			:= ADR(bAccDataMnl);
	p_USHermesAStopTransportSnd		:= ADR(bStopTransportSnd); //bStopTransportSnd for SupervisoryHermes "BoardArrived"
	p_USHermesABoardArrivedData      := ADR(tyBoardArrivedInfo); //"BoardArrived" data for SupervisoryHermes 
	p_USHermesARcvBoardInfoOk        := ADR(bRcvBoardInfoOk); 
	p_USHermesARcvbBoardInfoIncompl  := ADR(bRcvBoardInfoIncompl); 
	p_USHermesABoardInfoData         := ADR(tySendBoardInfoAcc); //Pass "SendBoardInfo" data for DSHermes "BoardAvailable", for inserted PCB
	p_USHermesANextAvlPCBTimer       := ADR(tNextPCBTm); //Time available for Next PCB from B.F, use this to make decisionto get board from which upstream if there are multiple several upstream 
	p_USHermesAManuallInsertLastZone := ADR(bManuallInsertLastZone); //used to block board transfer to last zone to allow operator insert PCB back to last zone
	p_USHermesABoardAvailableRcv           := ADR (tyBoardAvailableRcv);   // Pass Receive data to Supervisory
	p_USHermesABoardForecastRcv            := ADR  (tyBoardForecastAcc);   // Pass Receive data to Supervisory
	
	//for AutoRcp
	p_USHermesABAAccepted :=  ADR(bBaReceivedInRdyState);
	p_USHermesABFAccepted :=  ADR(bBfReceivedInRdyState);
//	p_USHermesABfRcvInRdyState := ADR(bBfReceivedInRdyState);
//	p_USHermesABaRcvInRdyState := ADR(bBaReceivedInRdyState);
	//for Opcon
	p_USHermesATopBtmBarcode			:= ADR(sTopBtmBarcode);

	(* Always Change If Project Change *)
END_PROGRAM
