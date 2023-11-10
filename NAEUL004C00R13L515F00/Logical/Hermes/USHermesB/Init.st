(** 2021-08-01 **)
PROGRAM _INIT
	
	(* Always Change If Project Change *)
	
	//Pass Address To Global Address For External Use
	//Action, State & Status
	p_USHermesBStat		:= ADR(eStat);
	p_USHermesBStatus	:= ADR(eMainStatus);
	p_USHermesBStatTxt	:= ADR(sStatTxt);
	
	//Alarm
	p_USHermesBAlmData	:= ADR(tyAlmData);
	p_USHermesBAlmData1	:= ADR(tyAlmData1);
	p_USHermesBAlmData2	:= ADR(tyAlmData2);
	p_USHermesBAlmData3	:= ADR(tyAlmData3);
	p_USHermesBAlmData4	:= ADR(tyAlmData4);
	p_USHermesBAlmData5	:= ADR(tyAlmData5);
	p_USHermesBInfoData	:= ADR(tyInfoData);
	p_USHermesBInfoData1	:= ADR(tyInfoData1);
	p_USHermesBInfoData2	:= ADR(tyInfoData2);
	
	//Output
	p_USHermesBTableDataBrdAvl		:= ADR(a_tyXMLTableDataBrdAvl);
	p_USHermesBTableDataBrdAvlTtlIdx	:= ADR(iXMLTableDataBrdAvlTtlIdx);
	p_USHermesBConnected				:= ADR(bConnected);
	p_USHermesBHandshakeDone			:= ADR(bHandshakeDone);
	p_USHermesBAccDataReq			:= ADR(bAccDataReq);
	p_USHermesBBFAccDataReq			:= ADR(bBFAccDataReq);
	p_USHermesBOverWriteSlt			:= ADR(bOverWriteSlt);
	p_USHermesBOverWriteWidth		:= ADR(bOverWriteWidth);
	p_USHermesBReqRecipeNm			:= ADR(sReqRecipeNm);
	p_USHermesBReqWidthInUM			:= ADR(diReqWidthInUM);
	p_USHermesBReqMinSltValue		:= ADR(diReqMinSltValue);
	p_USHermesBReqMaxSltValue		:= ADR(diReqMaxSltValue);
	p_USHermesBReqPitch				:= ADR(diReqPitch);
	p_USHermesBUSRdy					:= ADR(bUSRdy);
	p_USHermesBDSRdy					:= ADR(bDSRdy);
	p_USHermesBUSGdRdy				:= ADR(bUSGdRdy);
	p_USHermesBDSGdRdy				:= ADR(bDSGdRdy);
	p_USHermesBTransporting			:= ADR(bTransporting);
	p_USHermesBStopTransport			:= ADR(bStopTransport);
	p_USHermesBBlkUS					:= ADR(bBlkUS);
	p_USHermesBInternalSnd			:= ADR(sInternalSnd);
	p_USHermesBAccDataMnl			:= ADR(bAccDataMnl);
	p_USHermesBStopTransportSnd		:= ADR(bStopTransportSnd); //bStopTransportSnd for SupervisoryHermes "BoardArrived"
	p_USHermesBBoardArrivedData      := ADR(tyBoardArrivedInfo); //"BoardArrived" data for SupervisoryHermes 
	p_USHermesBRcvBoardInfoOk        := ADR(bRcvBoardInfoOk); 
	p_USHermesBRcvbBoardInfoIncompl  := ADR(bRcvBoardInfoIncompl); 
	p_USHermesBBoardInfoData         := ADR(tySendBoardInfoAcc); //Pass "SendBoardInfo" data for DSHermes "BoardAvailable", for inserted PCB
	p_USHermesBNextAvlPCBTimer       := ADR(tNextPCBTm); //Time available for Next PCB from B.F, use this to make decisionto get board from which upstream if there are multiple several upstream 
	p_USHermesBManuallInsertLastZone := ADR(bManuallInsertLastZone); //used to block board transfer to last zone to allow operator insert PCB back to last zone
	p_USHermesBBoardAvailableRcv           := ADR (tyBoardAvailableRcv);   // Pass Receive data to Supervisory
	p_USHermesBBoardForecastRcv            := ADR  (tyBoardForecastAcc);   // Pass Receive data to Supervisory
	
	//for AutoRcp
	p_USHermesBBAAccepted :=  ADR(bBaReceivedInRdyState);
	p_USHermesBBFAccepted :=  ADR(bBfReceivedInRdyState);	
	
	(* Always Change If Project Change *)
END_PROGRAM
