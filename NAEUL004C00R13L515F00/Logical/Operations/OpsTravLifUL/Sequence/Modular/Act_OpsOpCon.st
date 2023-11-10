ACTION Act_OpsOpCon:
	//@@@@@@@@@@@@@@@@@@@@@@@@@@@@ opcon @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	//intterupt condition
	p_bPass := p_tyPartReceiveRetCode.tyData.iReturnCode = 0; 
	IF eGotoOpsStep = eOpsStep THEN
		CASE eOpsStep OF 	//Opcon step
			TravLifULStepScanDS: //SCAN MODE
				sStepTxt	:= 'Scanning In Progress';
				IF p_bConvHvBrd AND p_bConvRgtSen THEN
					eTCPTopAct := TCPActFullWriteReadUntilValid;
					eTCPBtmAct := TCPActFullWriteReadUntilValid;
				END_IF
						
				IF (p_eTCPTopStatus = Done AND p_eTCPTopStat = TCPActFullWriteReadUntilValid) OR
					(p_eTCPBtmStatus = Done AND p_eTCPBtmStat = TCPActFullWriteReadUntilValid) THEN 
					IF p_sTopMsgRd = 'NOREAD$r$n' AND p_sBtmMsgRd = 'NOREAD$r$n'  THEN //2sec (config set from DLCode)
						eStatus		:= Error;
						udiStatus	:= 10006; // No Barcode Detected.
					ELSIF (p_sTopMsgRd = 'NOREAD$r$n' AND p_bBtmScannerEn = FALSE) OR (p_sBtmMsgRd = 'NOREAD$r$n' AND p_bTopScannerEn = FALSE) THEN
						eStatus		:= Error;
						udiStatus	:= 10006; // No Barcode Detected.
					ELSE // success scanned
						IF p_sTopMsgRd <> '' AND p_sTopMsgRd <> 'NOREAD$r$n' THEN
							//pass read data to opConXML.
							sBarcode := p_sTopMsgRd;
									
							eTCPTopAct := TCPActIdle_0;
							eTCPBtmAct := TCPActIdle_0;
							eGotoOpsStep := TravLifULStepWaitReturnCode;
						ELSIF p_sBtmMsgRd <> '' AND p_sBtmMsgRd <> 'NOREAD$r$n' THEN
							//pass read data to opConXML.
							sBarcode := p_sBtmMsgRd;
									
							eTCPTopAct := TCPActIdle_0;
							eTCPBtmAct := TCPActIdle_0;
							eGotoOpsStep := TravLifULStepWaitReturnCode;
						END_IF
					END_IF
				END_IF
				bPaused	:= p_bStop OR p_bStep;
		
			TravLifULStepHermesBCode:
				sStepTxt	:= 'Retrieve Barcode';
				bHermesBC := TRUE;
				IF p_sTopBtmBarcode[0] <> '' AND p_sTopBtmBarcode[0] <> 'NOREAD' THEN 
					sBarcode 		:= p_sTopBtmBarcode[0];
				
					eGotoOpsStep  	:= TravLifULStepWaitReturnCode;
					p_tyPartReceiveRetCode.tyAvl.bReturnCode := FALSE;
				ELSIF p_sTopBtmBarcode[1] <> '' AND p_sTopBtmBarcode[1] <> 'NOREAD' THEN
					sBarcode 		:= p_sTopBtmBarcode[1];
							
					eGotoOpsStep 	:= TravLifULStepWaitReturnCode;
					p_tyPartReceiveRetCode.tyAvl.bReturnCode := FALSE;
				ELSE //both empty bc read
					eStatus		:= Error;
					udiStatus	:= 10006; // No Barcode Detected.
				END_IF
				bPaused	:= p_bStop OR p_bStep;
			
			TravLifULStepWaitReturnCode:
				sStepTxt	:= 'Wait Return Code';
					
				fbReturnCodeTO (IN:=TRUE); //10s
				IF p_bScanEn OR bHermesBC THEN
					IF p_bPass AND p_tyPartReceiveRetCode.tyAvl.bReturnCode THEN //ret 0
						eGotoOpsStep := TravLifULStepTravLifMov;
						fbReturnCodeTO (IN:=FALSE);
						p_sTopBtmBarcode[0] := '';
						p_sTopBtmBarcode[1] := '';
					ELSIF p_tyPartReceiveRetCode.tyAvl.bReturnCode AND
						(p_tyPartReceiveRetCode.tyData.iReturnCode = -1 OR p_tyPartReceiveRetCode.tyData.iReturnCode = -2) THEN
						eStatus		:= Error;
						udiStatus	:= 10008;  //change to reference to partRcv sTraceTxt
					ELSIF fbReturnCodeTO.Q THEN
						eStatus		:= Error;
						udiStatus	:= 10007; //Return Code Feedback Timeout.  
					END_IF
				ELSE
					eGotoOpsStep := TravLifULStepTravLifMov;
				END_IF
						
				bPaused	:= p_bStop OR p_bStep;
			
			TravLifULStepMagChkReturnCode:
				sStepTxt	:= 'Magazine Verifing Standby Step';
				tyOpConMsgReq := OpConMsgTypeNA;
				fbReturnCodeTO (IN:=TRUE); //10s
	
				IF (p_tyOpConPlcGrabRcvCode.tyData.iReturnCode = 0) AND p_tyOpConPlcGrabRcvCode.tyAvl.bReturnCode THEN //ret 0
					eGotoOpsStep := TravLifULStepTravLifMov;
					bWaitMagChkRetCode := FALSE;
					fbReturnCodeTO (IN:=FALSE);
					p_tyOpConPlcGrabRcvCode.tyAvl.bReturnCode := FALSE;
				ELSIF p_tyOpConPlcGrabRcvCode.tyAvl.bReturnCode AND
					(p_tyOpConPlcGrabRcvCode.tyData.iReturnCode = -1 ) THEN
					eStatus		:= Error;
					udiStatus	:= 10010;  //change to reference to partRcv sTraceTxt
				ELSIF fbReturnCodeTO.Q THEN
					eStatus		:= Error;
					udiStatus	:= 10007; //Return Code Feedback Timeout.  
				END_IF
			
		END_CASE
	END_IF
	//Reset Msg
	IF bJamStarted AND p_bConvHvBrd THEN
		bJamStarted := FALSE;
		tyOpConMsgReq := OpConMsgTypePLCJam;
	ELSIF tyOpConMsgReq = OpConMsgTypePLCJamStarted OR tyOpConMsgReq = OpConMsgTypePLCJam THEN
		tyOpConMsgReq := OpConMsgTypeNA;
		fbIdleTm (IN:= FALSE);
	ELSIF tyOpConMsgReq = OpConMsgTypePLCGrab THEN
		tyOpConMsgReq := OpConMsgTypeNA;
	ELSIF tyOpConMsgReq = OpConMsgTypePartProcessed THEN
		tyOpConMsgReq := OpConMsgTypeNA;
	ELSIF tyOpConMsgReq =  OpConMsgTypePartReceived THEN
		tyOpConMsgReq := OpConMsgTypeNA;
	END_IF
	
	
	//MsgReq (Event dependant)
	p_bPLCGrabPic := p_MCUL1StepPLCGrab OR p_MCUL2StepPLCGrab OR p_MCUL3StepPLCGrab;
	//PART PROCESSED ITEMS : [0-4], [progname, pitch, mag.type, mag.pos, mag.layer]
	tyPartProcessedItems.tyData.sValue[0] 	:= p_sLinkProdRcpCurrRcp1Nm;
	diTemp									:= p_diLinkProdRcpCurrRcp1Pitch;
	tyPartProcessedItems.tyData.sValue[1] 	:= DINT_TO_STRING(diTemp);
	tyPartProcessedItems.tyData.sValue[2] 	:= p_sLinkMagRcpCurrRcpNm;

	IF eOpsStep = TravLifULStepInitConv OR p_bPLCGrabPic THEN
		tyOpConMsgReq := OpConMsgTypePLCGrab;
		asMagEntered[1] := USINT_TO_STRING(BOOL_TO_USINT(p_bMagPresentSen1));
		asMagEntered[2] := USINT_TO_STRING(BOOL_TO_USINT(p_bMagPresentSen2));
		asMagEntered[3] := USINT_TO_STRING(BOOL_TO_USINT(p_bMagPresentSen3));
		IF p_bPLCGrabPic THEN
			bWaitMagChkRetCode := TRUE;
		END_IF
	ELSIF eOpsStep = TravLifULStepExitBrd THEN
		IF p_eLocalDSCommMod = McSetCommModSMEMA AND (p_eLocalDSSMEMAStatus = Done AND p_eLocalDSSMEMAStat = SMEMAActRun)
			AND (p_eConvStatus = Done AND p_eConvStat = ConvActExitPshr) THEN
			tyOpConMsgReq := OpConMsgTypePartProcessed;	
			ELSIF (p_eLocalDSCommMod = McSetCommModHermes AND p_bLocalDSHermesStopTransport = FALSE)
			AND (p_eConvStatus = Done AND p_eConvStat = ConvActStopPshr) THEN
			tyOpConMsgReq := OpConMsgTypePartProcessed;	
		END_IF
	ELSIF eOpsStep = TravLifULStepUSComm  THEN
		IF p_eConvStat = ConvActEnt THEN
			fbIdleTm (IN:= TRUE);
			IF fbIdleTm.Q THEN
				fbIdleTm (IN:= FALSE);
				bJamStarted := TRUE;
				tyOpConMsgReq := OpConMsgTypePLCJamStarted;
			END_IF
		END_IF
	ELSIF eOpsStep = TravLifULStepDSSigWait AND eGotoOpsStep = TravLifULStepTravLifMov THEN //transition
		//Magazine position  (pos )
		tyMagCoordinate.usiMagPos 					:=  UDINT_TO_USINT (udiPosAllwGo);
	ELSIF eOpsStep = TravLifULStepTravLifMov AND eGotoOpsStep = TravLifULStepDSSigRechk THEN //transition
		//Magazine layer  ( slot)
		IF p_bTopToBtm THEN
			IF eTravLifPosGo = 4 THEN
				diMagBrdQty[1] 				:=((ABS(p_diMaxSlt-p_diBuffer1NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[1]);
			ELSIF eTravLifPosGo = 5 THEN
				diMagBrdQty[2] 				:=((ABS(p_diMaxSlt-p_diBuffer2NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[2]);
			ELSIF eTravLifPosGo = 6 THEN
				diMagBrdQty[3] 				:=((ABS(p_diMaxSlt-p_diBuffer3NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[3]);
			END_IF
		ELSE  //btm to top 
			IF eTravLifPosGo = 4 THEN
				diMagBrdQty[1] 				:=((ABS(p_diMinSlt-p_diBuffer1NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[1]);
			ELSIF eTravLifPosGo = 5 THEN
				diMagBrdQty[2] 				:=((ABS(p_diMinSlt-p_diBuffer2NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[2]);
			ELSIF eTravLifPosGo = 6 THEN
				diMagBrdQty[3] 				:=((ABS(p_diMinSlt-p_diBuffer3NxtLoadSlt))/p_diLinkProdRcpCurrRcp1Pitch )+1;
				tyMagCoordinate.usiMagSlot 	:=  DINT_TO_USINT (diMagBrdQty[3]);
			END_IF
		END_IF
		tyPartProcessedItems.tyData.sValue[3] 	:=  USINT_TO_STRING(tyMagCoordinate.usiMagPos);
		tyPartProcessedItems.tyData.sValue[4] 	:=  USINT_TO_STRING(tyMagCoordinate.usiMagSlot);
	ELSIF (eOpsStep =  TravLifULStepScanDS OR eOpsStep =  TravLifULStepHermesBCode) AND eGotoOpsStep = TravLifULStepWaitReturnCode THEN
		tyOpConMsgReq 	:= OpConMsgTypePartReceived;
	END_IF

	
	//Intterupting Event
	IF eGotoOpsStep <> eOpsStep THEN
		CASE eGotoOpsStep OF 
			TravLifULStepTravLifMov:
				IF  bWaitMagChkRetCode AND eOpsStep <> TravLifULStepMagChkReturnCode AND eOpsStep <> TravLifULStepWaitReturnCode THEN
					eGotoOpsStep := TravLifULStepMagChkReturnCode;
				ELSIF p_bScanEn AND eOpsStep <> TravLifULStepWaitReturnCode THEN
					IF p_bConvHvBrd THEN
						eGotoOpsStep := TravLifULStepScanDS;
					END_IF
				ELSIF  eOpsStep <> TravLifULStepWaitReturnCode AND p_eLocalUSCommMod = McSetCommModHermes THEN
					IF p_bConvHvBrd THEN
						eGotoOpsStep := TravLifULStepHermesBCode;
					END_IF
				END_IF
		END_CASE
	END_IF
END_ACTION
