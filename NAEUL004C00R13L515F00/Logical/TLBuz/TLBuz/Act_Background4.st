ACTION Act_Background4: 
		
	IF EDGEPOS(p_bManual) THEN
	
		fbBlink(bEn := FALSE);
		fbWarning(bEn := FALSE);
		
		bTLRed		:= FALSE;
		bTLAmber	:= TRUE;
		bTLWhite	:= TRUE;
		bTLGreen	:= FALSE;
		bBuzBeep	:= FALSE;
		
	ELSIF p_bManual THEN

		
		IF p_bErr = TRUE THEN
				
			fbBlink.tOnTm	:= p_tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= p_tTLErrBlinkTm; //Error T#500ms (from NtParam)
				
			fbWarning.tOnTm					:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= p_tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= p_usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= p_bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= p_usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			bTLRed		:= fbBlink.bOut;
			bBuzBeep	:= (fbWarning.bOut) AND (p_bMuteBuz = FALSE);
				
			bManualErrOn := TRUE;
			p_bBuzAlertEn := FALSE;
				
		ELSIF bManualErrOn THEN
				
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);
			
			bTLRed		:= FALSE;
			bBuzBeep	:= FALSE;
			
			bManualErrOn := FALSE;
			p_bBuzAlertEn := FALSE;
				
		END_IF
	ELSIF p_bManual = FALSE THEN
		
		bManualErrOn := FALSE;
		IF p_bStartup THEN
			bTLGreen := FALSE;
			bTLWhite := FALSE;
			bTLGreenFlashEn := TRUE;
			bTLWhiteFlashEn := TRUE;
			bBuzBeep := FALSE;
			p_bBuzAlertEn := FALSE;
			
		ELSIF p_bOps THEN
			bTLGreen := TRUE;
			bTLWhite := FALSE;
			bTLGreenFlashEn := FALSE;
			bTLWhiteFlashEn := FALSE;
			bBuzBeep := FALSE;
			p_bBuzAlertEn := FALSE;
			
		ELSIF p_bSeqStop THEN
			bTLGreen := FALSE;
			bTLWhite := FALSE;
			bTLGreenFlashEn := TRUE;
			bTLWhiteFlashEn := FALSE;
			bBuzBeep := FALSE;
			p_bBuzAlertEn := FALSE;
			
		ELSIF p_bStandby THEN
			bTLGreen := FALSE;
			bTLWhite := FALSE;
			bTLGreenFlashEn := FALSE;
			bTLWhiteFlashEn := TRUE;
			bBuzBeep := FALSE;
			p_bBuzAlertEn := FALSE;
			
		ELSIF p_bSimulation THEN
			bTLGreen := TRUE;
			bTLWhite := FALSE;
			bTLGreenFlashEn := FALSE;
			bTLWhiteFlashEn := TRUE;
			bBuzBeep := FALSE;
			p_bBuzAlertEn := FALSE;
			
		END_IF
		
		bFullMag :=(p_tyBuffer1BffrStat.bBffrFull OR p_tyBuffer2BffrStat.bBffrFull OR p_tyBuffer3BffrStat.bBffrFull);
		IF p_bMcParamAGVComEn THEN

			IF bFullMag THEN
//				bTLGreen := FALSE;
				bTLWhite := FALSE;
				bTLGreenFlashEn := FALSE;
				bTLWhiteFlashEn := TRUE;
				bBuzBeep := FALSE;
				p_bBuzAlertEn := FALSE;
			END_IF

		END_IF
		
		IF p_bWarning THEN
			IF p_bOps THEN
				bTLGreen := TRUE;
				bTLWhite := FALSE;
				bTLGreenFlashEn := FALSE;
				bTLWhiteFlashEn := TRUE;
			ELSIF p_bSeqStop THEN
				bTLGreen := FALSE;
				bTLWhite := FALSE;
				bTLGreenFlashEn := TRUE;
				bTLWhiteFlashEn := TRUE;
			ELSE
				bTLGreen := FALSE;
				bTLWhite := FALSE;
				bTLGreenFlashEn := FALSE;
				bTLWhiteFlashEn := TRUE;
			END_IF
			
			IF p_eMcParamMagExMode = McSetMagXcAutoMode THEN //p_bMcParamAGVComEn
				p_bBuzAlertEn := FALSE;
			ELSE
				p_bBuzAlertEn := TRUE;
			END_IF
//			IF bBuzBeep = TRUE AND p_bMcParamAGVComEn AND bFullMag THEN
//				bBuzBeep := FALSE;
//			ELSE
//				bBuzBeep := TRUE;
//			END_IF
//			p_bBuzAlertEn := TRUE;
		END_IF
			
	
		IF p_bErr THEN
			fbBlink.tOnTm	:= p_tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= p_tTLErrBlinkTm; //Error T#500ms (from NtParam)
				
			fbWarning.tOnTm					:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= p_tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= p_usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= p_bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= p_usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			bTLRed		:= fbBlink.bOut;
			bTLAmber	:= FALSE;
			bTLGreen	:= FALSE;
			bBuzBeep	:= (fbWarning.bOut) AND (p_bMuteBuz = FALSE);
			p_bBuzAlertEn := FALSE;
		END_IF
		
		IF bTLWhiteFlashEn THEN //White Flash 1 sec [Put Conditions in Act_Link.st]
				
			fbBlink2.tOnTm	:= p_tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2.tOffTm	:= p_tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2(bEn := TRUE);
			
			bTLWhite		:= fbBlink2.bOut;
		ELSE
			fbBlink2(bEn := FALSE);
		END_IF
		
		IF bTLGreenFlashEn THEN //Green Flash 1 sec [Put Conditions in Act_Link.st]
				
			fbBlink3.tOnTm	:= p_tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3.tOffTm	:= p_tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3(bEn := TRUE);
			
			bTLGreen	:= fbBlink3.bOut;
		ELSE
			fbBlink3(bEn := FALSE);
		END_IF
		
		IF p_bBuzAlertEn THEN
			
			fbWarning1.tOnTm				:= p_tBuzAlertOnTm;
			fbWarning1.tOffTm				:= p_tBuzAlertOnTm;
			fbWarning1.tRstTm				:= p_tBuzAlertRestTm;
			fbWarning1.usiOnCnt				:= p_usiBuzAlertOnCntr;
			fbWarning1.bStopAftRptSeqEn		:= p_bBuzAlertStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning1.usiStopAftRptSeqCntr	:= p_usiBuzAlertStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbWarning1(bEn := TRUE);
				
			bBuzBeep	:= fbWarning1.bOut AND (p_bMuteBuz = FALSE);
				
		ELSE
			fbWarning1(bEn := FALSE);
		END_IF
	END_IF

END_ACTION


