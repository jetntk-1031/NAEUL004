
ACTION Act_OpsInfo: 
	
	//Reset
	udiStatus1	:= 0;
	
IF p_bInfoEn = TRUE THEN
		
		//Magazine Not Present
		a_bMagAllwMagPresent[1]	:= p_bMagPresentSen1 OR p_bMagEntrySen1;
		a_bMagAllwMagPresent[2]	:= p_bMagPresentSen2 OR p_bMagEntrySen2;
		a_bMagAllwMagPresent[3]	:= p_bMagPresentSen3 OR p_bMagEntrySen3;
		
		FOR udi := 1 TO 3 DO
			IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE THEN
				EXIT;
			END_IF
		END_FOR
		
		IF udi = 4 THEN
			IF eOpsStep > MagConvULStepInitMagConv THEN
				udiStatus1	:= 10000;
			END_IF
		END_IF
		
		//Magazine Is Full
		a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
		a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
		a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
		
		FOR udi := 1 TO 3 DO
			IF pa_bMagDis[udi] = FALSE AND a_bMagAllwMagPresent[udi] = TRUE AND a_tyMagAllwBffrStat[udi].bBffrFull = TRUE THEN
				udiStatus1	:= 10001 + (udi - 1);
				EXIT;
			END_IF
		END_FOR
		
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

	IF fbVerifyWarningDelay.Q AND p_tyBufferStat2.bBffrFull = FALSE THEN
		IF  (p_bMagAWCloseLimit OR  p_bMagAWOpenLimit) AND p_tyBufferStat2.bBffrMty THEN
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
	

	//----------------------------Siemens MES -------------------------------------//
	IF (udiStatus1 = 0 OR udiStatus1 = 10008) AND (p_eCustomerReq = Siemens OR p_eCustomerReq = We_Fabricate) THEN
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

		ELSIF (eOpsStep = MagConvULStepMagFullDSComm OR eOpsStep = MagConvULStepMagExitMnl OR eOpsStep = MagConvULStepMagExitedWait )AND iMagMESAcptCond < 0  THEN
			udiStatus1 := 10016; //Wrong Magazine Position 2 
		END_IF

	END_IF
	

END_ACTION
