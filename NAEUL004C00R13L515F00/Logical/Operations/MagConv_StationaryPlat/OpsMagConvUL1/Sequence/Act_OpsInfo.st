
ACTION Act_OpsInfo: 
	
	//Reset
	udiStatus1	:= 0;
//	udiStatus2	:= 0;
	IF p_bInfoEn = TRUE THEN
			
			//Magazine Not Present
			a_bMagAllwMagPresent[1]	:= p_bBufferMagRemoved1 = FALSE;
			a_bMagAllwMagPresent[2]	:= p_bBufferMagRemoved2 = FALSE;
			a_bMagAllwMagPresent[3]	:= p_bBufferMagRemoved3 = FALSE;
			
			FOR udi := 1 TO 3 DO
				IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE THEN
					EXIT;
				END_IF
			END_FOR
			
			IF udi = 4 THEN
				IF eOpsStep > MagConvULStepInitMagConv OR eOpsStep = MagConvULStepMagUSComm THEN
					udiStatus1	:= 10000;
				END_IF
			END_IF
			
			//Magazine Is Full
			a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
			a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
			a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
			
			FOR udi := 1 TO 3 DO
				IF pa_bMagDis[udi] = FALSE AND pa_bMagRej[udi] = TRUE THEN
					EXIT;
				END_IF
			END_FOR
			FOR udi1 := 1 TO 3 DO
				IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE AND a_tyMagAllwBffrStat[udi1].bBffrFull = TRUE THEN
					IF p_eCustomerReq = NA  OR (udi < 4 AND p_eCustomerReq = Bosch_China) THEN //Reject Mode Still
						udiStatus1	:= 10001 + (udi1 - 1);
						bTLMuteBuzzer := FALSE;
						EXIT;
					ELSIF (p_eCustomerReq = Bosch_China )  THEN
						bTLMuteBuzzer := TRUE;
						udiStatus1	:= 10001 + (udi1 - 1);
						FOR udi2 := 1 TO 3 DO
							IF udi2 <> udi1 THEN
								 IF pa_bMagDis[udi2] = FALSE AND a_bMagAllwMagPresent[udi2] = TRUE AND a_tyMagAllwBffrStat[udi2].bBffrFull = TRUE  THEN
									udiStatus1	:= 10001 + (udi2 - 1);
									EXIT;
								END_IF
							END_IF
						END_FOR 						
					END_IF 		
				END_IF
			END_FOR
			//when Magazine require to check this condition
			IF udiStatus1 <= 10004 AND udiStatus1<> 10000 THEN 
				bMagFullInfo := TRUE;
			ELSE
				bMagFullInfo := FALSE;
			END_IF
			//Insert Good / Bad Magazine
			IF p_bConvInitDone = TRUE AND p_bConvHvBrd = TRUE THEN
				
				FOR udi := 1 TO 3 DO
					IF pa_bMagDis[udi] = FALSE AND pa_bMagRej[udi] = TRUE THEN
						EXIT;
					END_IF
				END_FOR
				
				IF udi < 4 THEN
					//Reject Mode
					IF p_bConvGdBrd = TRUE THEN
						//Good Board Exist
						FOR udi1 := 1 TO 3 DO
							IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE AND pa_bMagRej[udi1] = FALSE THEN
								EXIT;
							END_IF
						END_FOR
						
						IF udi1 = 4 THEN
							udiStatus1	:= 10004;
						END_IF
						
					ELSE
						//Bad Board Exist
						FOR udi1 := 1 TO 3 DO
							IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE AND pa_bMagRej[udi1] = TRUE THEN
								EXIT;
							END_IF
						END_FOR
						
						IF udi1 = 4 THEN
							udiStatus1	:= 10005;
						END_IF
						
					END_IF
					
				ELSE
					//Non-Reject Mode
					FOR udi1 := 1 TO 3 DO
						IF pa_bMagDis[udi1] = FALSE AND a_bMagAllwMagPresent[udi1] = TRUE THEN
							EXIT;
						END_IF
					END_FOR
					
					IF udi1 = 4 THEN
						udiStatus1	:= 10004;
					END_IF
					
				END_IF
				
			END_IF
	END_IF		

		//Magazine Verification Warning
	
	IF fbMagRemovedTm.Q OR bNewMagVerified THEN
		bNewMagVerifyStarted := FALSE;
	END_IF
			
	fbVerifyWarningDelay(IN:= bNewMagVerifyStarted AND bNewMagVerified = FALSE AND bStepMagVerification = FALSE);

	IF fbVerifyWarningDelay.Q AND p_tyBufferStat1.bBffrFull = FALSE THEN
		IF   (p_bMagAWCloseLimit OR  p_bMagAWOpenLimit) AND p_tyBufferStat1.bBffrMty THEN
			bLimitSenActivated := TRUE;
			udiStatus1	:= 10010;
		ELSIF bLimitSenActivated THEN
			udiStatus1	:= 10010;
		ELSIF bManualUnloadMag = FALSE THEN		
			CASE p_bLinkMagRcpCurrRcpMagModel OF
			0: //CAB706.2			
				IF bWrongHeight THEN
					udiStatus1	:= 10007;
				ELSIF p_bDIMagConvHeightSen = FALSE THEN
					bWrongHeight := TRUE;
							
				ELSIF bWrongWidth THEN
					udiStatus1	:= 10006;
				ELSIF p_bDIMagConvSelUnclampRS 
					OR p_bDIMagConvCAB717Sen 
					OR p_bDIMagConvSmallSen = FALSE
					THEN
					bWrongWidth := TRUE;
				
				END_IF
					
			1: //CAB716.2
				IF bWrongHeight THEN
					udiStatus1	:= 10007;
				ELSIF p_bDIMagConvHeightSen = TRUE THEN
					bWrongHeight := TRUE;
			
				ELSIF bWrongWidth THEN
					udiStatus1	:= 10006;
				ELSIF p_bDIMagConvSelUnclampRS 
					OR p_bDIMagConvCAB717Sen 
					OR p_bDIMagConvSmallSen = FALSE
					THEN
					bWrongWidth := TRUE;
			
				END_IF
					
			2: //CAB717.2
				IF bWrongHeight THEN
					udiStatus1	:= 10007;
				ELSIF p_bDIMagConvHeightSen THEN
					bWrongHeight := TRUE;
				
				ELSIF bWrongWidth THEN
					udiStatus1	:= 10006;
				ELSIF p_bDIMagConvSelUnclampRS = FALSE
					OR p_bDIMagConvCAB717Sen = FALSE 
					OR p_bDIMagConvLargeSen
					THEN
					bWrongWidth := TRUE;
				
				END_IF
					
			END_CASE
		ELSIF bManualUnloadMag THEN
			udiStatus1	:= 10008;
		END_IF
	ELSIF udiStatus1 <> 10006 
		AND udiStatus1 <> 10007 
		AND p_tyBufferStat1.bBffrFull = FALSE  
		AND bStepMagExitedWait 
		AND p_bLocalMagEntrySen
		THEN 
		udiStatus1	:= 10008;
		bManualUnloadMag := TRUE;

	ELSE
		bLimitSenActivated := FALSE;
		bWrongHeight := FALSE;
		bWrongWidth	:= FALSE;
	END_IF
	
		

	bIncorrectMagazineModel := udiStatus1 = 10006 OR udiStatus1 = 10007;
	
	//@@@@@@@@@@@@@@@@@@@@ opCon @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
	IF udiStatus1 = 10000 THEN
		fbIdleTm (IN:= TRUE);
		IF fbIdleTm.Q THEN
			fbIdleTm (IN:= FALSE);
			bPartMissingStarted := TRUE;
			tyOpConMsgReq := OpConMsgTypePartMissingStarted;
		END_IF
	ELSIF bPartMissingStarted AND (p_bMagPresentSen1 OR p_bMagPresentSen2 OR p_bMagPresentSen3) THEN
		bPartMissingStarted := FALSE;
		tyOpConMsgReq := OpConMsgTypePartMissing;
	ELSE
		fbIdleTm (IN:= FALSE);
	END_IF
	
	
	//----------------------------Siemens MES -------------------------------------//
	IF (udiStatus1 = 0 OR udiStatus1 = 10008) AND (p_eCustomerReq = Siemens OR p_eCustomerReq = We_Fabricate ) THEN
		IF eOpsStep = MagConvULStepMagEntMESStdByChk  THEN 
			IF NOT(fbReadRFIDTO.Q) THEN //Reading RFID
				udiStatus1 := 10012;
			ELSE   //Reading RFID Time Out,Press Release Then Exit
				udiStatus1 := 10013;
			END_IF
		ELSIF eOpsStep = MagConvULStepMagExtMESStdByChk   THEN//	
			IF NOT(fbWriteRFIDTO.Q) THEN
				udiStatus1 := 10014;
			ELSE
				udiStatus1 := 10015;
			END_IF

		ELSIF (eOpsStep = MagConvULStepMagFullDSComm OR eOpsStep = MagConvULStepMagExitMnl OR eOpsStep = MagConvULStepMagExitedWait) AND iMagMESAcptCond < 0  THEN
			udiStatus1 := 10016; //Wrong Magazine Position 1 
		END_IF
	END_IF
END_ACTION
