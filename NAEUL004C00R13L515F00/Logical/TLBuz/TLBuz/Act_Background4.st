ACTION Act_Background4: 
		
	IF EDGEPOS(tylocalTLBuz.In.bUIManualMod) THEN
	
		fbBlink(bEn := FALSE);
		fbWarning(bEn := FALSE);
		
		tylocalTLBuz.In.bTLRed		:= FALSE;
		tylocalTLBuz.In.bTLAmber	:= TRUE;
		tylocalTLBuz.In.bTLWhite	:= TRUE;
		tylocalTLBuz.In.bTLGreen	:= FALSE;
		tylocalTLBuz.In.bBuzBeep	:= FALSE;
		
	ELSIF tylocalTLBuz.In.bUIManualMod THEN

		
		IF tylocalTLBuz.In.bErr = TRUE THEN
				
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
				
			fbWarning.tOnTm					:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= p_tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= p_usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= p_bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= p_usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.In.bTLRed		:= fbBlink.bOut;
			tylocalTLBuz.In.bBuzBeep	:= (fbWarning.bOut) AND (p_bMuteBuz = FALSE);
				
			bManualErrOn := TRUE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
				
		ELSIF bManualErrOn THEN
				
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.In.bTLRed		:= FALSE;
			tylocalTLBuz.In.bBuzBeep	:= FALSE;
			
			bManualErrOn := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
				
		END_IF
	ELSIF p_bManual = FALSE THEN
		
		bManualErrOn := FALSE;
		IF p_bStartup THEN
			tylocalTLBuz.In.bTLGreen := FALSE;
			tylocalTLBuz.In.bTLWhite := FALSE;
			tylocalTLBuz.In.bTLGreenFlashEn := TRUE;
			tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			tylocalTLBuz.In.bBuzBeep := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
			
		ELSIF p_bOps THEN
			tylocalTLBuz.In.bTLGreen := TRUE;
			tylocalTLBuz.In.bTLWhite := FALSE;
			tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
			tylocalTLBuz.In.bTLWhiteFlashEn := FALSE;
			tylocalTLBuz.In.bBuzBeep := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
			
		ELSIF p_bSeqStop THEN
			tylocalTLBuz.In.bTLGreen := FALSE;
			tylocalTLBuz.In.bTLWhite := FALSE;
			tylocalTLBuz.In.bTLGreenFlashEn := TRUE;
			tylocalTLBuz.In.bTLWhiteFlashEn := FALSE;
			tylocalTLBuz.In.bBuzBeep := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
			
		ELSIF p_bStandby THEN
			tylocalTLBuz.In.bTLGreen := FALSE;
			tylocalTLBuz.In.bTLWhite := FALSE;
			tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
			tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			tylocalTLBuz.In.bBuzBeep := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
			
		ELSIF p_bSimulation THEN
			tylocalTLBuz.In.bTLGreen := TRUE;
			tylocalTLBuz.In.bTLWhite := FALSE;
			tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
			tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			tylocalTLBuz.In.bBuzBeep := FALSE;
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
			
		END_IF
		
		bFullMag :=(g_tyBuffer1.tyBffrStat.bBffrFull OR g_tyBuffer2.tyBffrStat.bBffrFull OR g_tyBuffer3.tyBffrStat.bBffrFull);
		IF g_tyMcParamCurr.bAGVComEn THEN

			IF bFullMag THEN
//				tylocalTLBuz.In.bTLGreen := FALSE;
				tylocalTLBuz.In.bTLWhite := FALSE;
				tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
				tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
				tylocalTLBuz.In.bBuzBeep := FALSE;
				tylocalTLBuz.In.bBuzAlertEn := FALSE;
			END_IF

		END_IF
		
		IF tylocalTLBuz.In.bWarning[0] THEN
			IF p_bOps THEN
				tylocalTLBuz.In.bTLGreen := TRUE;
				tylocalTLBuz.In.bTLWhite := FALSE;
				tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
				tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			ELSIF p_bSeqStop THEN
				tylocalTLBuz.In.bTLGreen := FALSE;
				tylocalTLBuz.In.bTLWhite := FALSE;
				tylocalTLBuz.In.bTLGreenFlashEn := TRUE;
				tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			ELSE
				tylocalTLBuz.In.bTLGreen := FALSE;
				tylocalTLBuz.In.bTLWhite := FALSE;
				tylocalTLBuz.In.bTLGreenFlashEn := FALSE;
				tylocalTLBuz.In.bTLWhiteFlashEn := TRUE;
			END_IF
			
			IF p_eMcParamMagExMode = McSetMagXcAutoMode THEN //p_bMcParamAGVComEn
				tylocalTLBuz.In.bBuzAlertEn := FALSE;
			ELSE
				tylocalTLBuz.In.bBuzAlertEn := TRUE;
			END_IF
//			IF tylocalTLBuz.In.bBuzBeep = TRUE AND p_bMcParamAGVComEn AND bFullMag THEN
//				tylocalTLBuz.In.bBuzBeep := FALSE;
//			ELSE
//				tylocalTLBuz.In.bBuzBeep := TRUE;
//			END_IF
//			tylocalTLBuz.In.bBuzAlertEn := TRUE;
		END_IF
			
	
		IF tylocalTLBuz.In.bErr THEN
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
				
			fbWarning.tOnTm					:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= p_tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= p_tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= p_usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= p_bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= p_usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.In.bTLRed		:= fbBlink.bOut;
			tylocalTLBuz.In.bTLAmber	:= FALSE;
			tylocalTLBuz.In.bTLGreen	:= FALSE;
			tylocalTLBuz.In.bBuzBeep	:= (fbWarning.bOut) AND (p_bMuteBuz = FALSE);
			tylocalTLBuz.In.bBuzAlertEn := FALSE;
		END_IF
		
		IF tylocalTLBuz.In.bTLWhiteFlashEn THEN //White Flash 1 sec [Put Conditions in Act_Link.st]
				
			fbBlink2.tOnTm	:= p_tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2.tOffTm	:= p_tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2(bEn := TRUE);
			
			tylocalTLBuz.In.bTLWhite		:= fbBlink2.bOut;
		ELSE
			fbBlink2(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bTLGreenFlashEn THEN //Green Flash 1 sec [Put Conditions in Act_Link.st]
				
			fbBlink3.tOnTm	:= p_tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3.tOffTm	:= p_tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3(bEn := TRUE);
			
			tylocalTLBuz.In.bTLGreen	:= fbBlink3.bOut;
		ELSE
			fbBlink3(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bBuzAlertEn THEN
			
			fbWarning1.tOnTm				:= p_tBuzAlertOnTm;
			fbWarning1.tOffTm				:= p_tBuzAlertOnTm;
			fbWarning1.tRstTm				:= p_tBuzAlertRestTm;
			fbWarning1.usiOnCnt				:= p_usiBuzAlertOnCntr;
			fbWarning1.bStopAftRptSeqEn		:= p_bBuzAlertStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning1.usiStopAftRptSeqCntr	:= p_usiBuzAlertStopSeqCntr; //Sequence Counter  (from NtParam)
				
			fbWarning1(bEn := TRUE);
				
			tylocalTLBuz.In.bBuzBeep	:= fbWarning1.bOut AND (p_bMuteBuz = FALSE);
				
		ELSE
			fbWarning1(bEn := FALSE);
		END_IF
	END_IF

END_ACTION


