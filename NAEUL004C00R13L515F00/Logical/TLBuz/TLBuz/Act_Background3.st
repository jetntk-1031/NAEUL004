
ACTION Act_Background3: //For BHTC Machines
	
	IF EDGEPOS(tylocalTLBuz.In.bUIManualMod) THEN
	
		fbBlink(bEn := FALSE);
		fbWarning(bEn := FALSE);
		
		tylocalTLBuz.Out.bTLRed		:= FALSE;
		tylocalTLBuz.Out.bTLAmber	:= TRUE;
		tylocalTLBuz.Out.bTLGreen	:= FALSE;
		tylocalTLBuz.Out.bBuzBeep	:= FALSE;
		
	ELSIF tylocalTLBuz.In.bUIManualMod THEN
		
		IF tylocalTLBuz.In.bErr = TRUE THEN
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
		
			tylocalTLBuz.Out.bTLAmber	:= fbBlink.bOut;
			tylocalTLBuz.Out.bBuzBeep	:= (fbWarning.bOut) AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
			bManualErrOn := TRUE;
			
		ELSIF bManualErrOn THEN
			
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);
		
			tylocalTLBuz.Out.bTLAmber	:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
		
			bManualErrOn := FALSE;
			
		END_IF
			
	ELSIF tylocalTLBuz.In.bUIManualMod = FALSE THEN
		
		bManualErrOn := FALSE;
		
		IF tylocalTLBuz.In.bStartup = TRUE THEN //Startup, 3 colour ON
			
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= TRUE;
			tylocalTLBuz.Out.bTLAmber	:= TRUE;
			tylocalTLBuz.Out.bTLWhite	:= TRUE;
			tylocalTLBuz.Out.bTLGreen	:= TRUE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bErr = TRUE THEN //Machine Error,Green TL Off, Red TL Blink 
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms (from NtParam)
			
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzErrOnTm; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzErrRestTm; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzErrOnCntr; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzErrStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzErrStopSeqCntr; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;
			tylocalTLBuz.Out.bTLAmber	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSIF tylocalTLBuz.In.bErrNoBuz = TRUE THEN //not used (Machine Error With No Buz)
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms, not used (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLErrBlinkTm; //Error T#500ms, not used (from NtParam)
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;

			
		ELSIF tylocalTLBuz.In.bWarning[0] = TRUE THEN //Warning or AlarmInfo; [Put Conditions in Act_Link.st]
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[0]; //Warn T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[0]; //Warn T#500ms (from NtParam)
			
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[0]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[0]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[0]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[0]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[0]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[0]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby; //[tylocalTLBuz.In.bStandby ACCESS p_OpsStatusStop], [p_OpsStatusStop	:= ADR(bStatusStop);]
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut; 
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps; //[tylocalTLBuz.In.bOps ACCESS p_OpsStatusRun],  [p_OpsStatusRun	:= ADR(bStatusRun)];
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSIF tylocalTLBuz.In.bStandby = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[0]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[0]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bWarning[1] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[1]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[1];  
		
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[1]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[1]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[1]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[1]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[1]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[1]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSIF tylocalTLBuz.In.bWarningNoBuz[1] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[1]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[1]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bWarning[2] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[2]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[2];  
		
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[2]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[2]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[2]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[2]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[2]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[2]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue	:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSIF tylocalTLBuz.In.bWarningNoBuz[2] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[2]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[2]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bWarning[3] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[3]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[3];  
		
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[3]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[3]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[3]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[3]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[3]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[3]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSIF tylocalTLBuz.In.bWarningNoBuz[3] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[3]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[3]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bWarning[4] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[4]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[4];  
		
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[4]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[4]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[4]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[4]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[4]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[4]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
		
		ELSIF tylocalTLBuz.In.bWarningNoBuz[4] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[4]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[4]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bWarning[5] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[5]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[5];  
		
			fbWarning.tOnTm					:= tylocalTLBuz.In.tBuzWarnOnTm[5]; //Warn T#500ms (from NtParam)
			fbWarning.tOffTm				:= tylocalTLBuz.In.tBuzWarnOnTm[5]; //Warn T#500ms (from NtParam)
			fbWarning.tRstTm				:= tylocalTLBuz.In.tBuzWarnRestTm[5]; //Rest 5 seconds (from NtParam)
			fbWarning.usiOnCnt				:= tylocalTLBuz.In.usiBuzWarnOnCntr[5]; //Count 3 times (from NtParam)
			fbWarning.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzWarnStopSeqEn[5]; //Enable Sequence Count (from NtParam)
			fbWarning.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzWarnStopSeqCntr[5]; //Sequence Counter  (from NtParam)
			
			fbBlink(bEn := TRUE);
			fbWarning(bEn := TRUE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);		
			
		ELSIF tylocalTLBuz.In.bWarningNoBuz[5] = TRUE THEN //not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[5]; 
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLWarnBlinkTm[5]; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= tylocalTLBuz.In.bStandby;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= tylocalTLBuz.In.bOps;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bSeqStop = TRUE THEN //[p_bSeqStop ACCESS p_OpsStatusCycleStop] ,[p_OpsStatusCycleStop	:= ADR(bStatusCycleStop);]
			
			fbBlink.tOnTm	:= tBlinkTm; //Local T#500ms
			fbBlink.tOffTm	:= tBlinkTm; //Local T#500ms
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);

			tylocalTLBuz.Out.bTLBlue		:= FALSE;
			tylocalTLBuz.Out.bTLAmber	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= TRUE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
		
		ELSIF tylocalTLBuz.In.bChgRcp = TRUE THEN //Change Rcp, Disco Light, not used
			
			fbBlink.tOnTm	:= tylocalTLBuz.In.tTLChgRcpBlinkTm; //Chg Rcp T#500ms (from NtParam)
			fbBlink.tOffTm	:= tylocalTLBuz.In.tTLChgRcpBlinkTm; //Chg Rcp T#500ms (from NtParam)
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
			
			IF EDGE(fbBlink.bOut) THEN
				IF tylocalTLBuz.Out.bTLAmber = TRUE THEN
					tylocalTLBuz.Out.bTLAmber	:= FALSE;
					tylocalTLBuz.Out.bTLWhite	:= FALSE;
					tylocalTLBuz.Out.bTLGreen	:= TRUE;
				ELSIF tylocalTLBuz.Out.bTLWhite = TRUE THEN
					tylocalTLBuz.Out.bTLAmber	:= TRUE;
					tylocalTLBuz.Out.bTLWhite	:= FALSE;
					tylocalTLBuz.Out.bTLGreen	:= FALSE;
				ELSE
					tylocalTLBuz.Out.bTLAmber	:= FALSE;
					tylocalTLBuz.Out.bTLWhite	:= TRUE;
					tylocalTLBuz.Out.bTLGreen	:= FALSE;
				END_IF
			END_IF
			
			tylocalTLBuz.Out.bBuzBeep	:= fbBlink.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);

		ELSIF tylocalTLBuz.In.bStep = TRUE THEN //not used, [p_bStep ACCESS p_OpsStatusStep], [p_OpsStatusStep	:= ADR(bStatusStep);]
			
			fbBlink.tOnTm	:= tBlinkTm; 
			fbBlink.tOffTm	:= tBlinkTm; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);

			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= FALSE;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= fbBlink.bOut;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bOps = TRUE THEN //Auto Mode, Green TL only
			
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);
		
			tylocalTLBuz.Out.bTLRed		:= FALSE;
			tylocalTLBuz.Out.bTLAmber	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= TRUE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
		ELSIF tylocalTLBuz.In.bSimulation = TRUE THEN //For simulation
			
			fbBlink.tOnTm	:= tBlinkTm; 
			fbBlink.tOffTm	:= tBlinkTm; 
			fbBlink(bEn := TRUE);
			fbWarning(bEn := FALSE);
	
			tylocalTLBuz.Out.bTLBlue		:= fbBlink.bOut;		
			tylocalTLBuz.Out.bTLAmber	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLWhite	:= fbBlink.bOut;
			tylocalTLBuz.Out.bTLGreen	:= TRUE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
		
			
		ELSIF tylocalTLBuz.In.bStandby = TRUE THEN //Stop Mode, On Red TL only
			
			fbBlink(bEn := FALSE);
			fbWarning(bEn := FALSE);

			tylocalTLBuz.Out.bTLBlue		:= FALSE;		
			tylocalTLBuz.Out.bTLAmber	:= TRUE;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;
			
			
		ELSE //Resest if nothing else
			
			fbBlink(bEn := FALSE); 
			fbWarning(bEn := FALSE);
			
			tylocalTLBuz.Out.bTLBlue		:= FALSE;			
			tylocalTLBuz.Out.bTLAmber	:= FALSE;
			tylocalTLBuz.Out.bTLWhite	:= FALSE;
			tylocalTLBuz.Out.bTLGreen	:= FALSE;
			tylocalTLBuz.Out.bBuzBeep	:= FALSE;

			
		END_IF
		
	END_IF
	
	IF tylocalTLBuz.In.bUIManualMod = FALSE AND tylocalTLBuz.In.bErr = FALSE THEN
		IF tylocalTLBuz.In.bTLAmberFlashEn THEN //Amber Flash 1 sec [Put Conditions in Act_Link.st]
			 
			fbBlink1.tOnTm	:= tylocalTLBuz.In.tTLAmberBlinkTm; //T#500ms (from NtParam)
			fbBlink1.tOffTm	:= tylocalTLBuz.In.tTLAmberBlinkTm; //T#500ms (from NtParam)
			fbBlink1(bEn := TRUE);
		
			tylocalTLBuz.Out.bTLAmber	:= fbBlink1.bOut;
		
		ELSE
			fbBlink1(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bTLWhiteFlashEn THEN //White Flash 1 sec [Put Conditions in Act_Link.st]
			
			fbBlink2.tOnTm	:= tylocalTLBuz.In.tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2.tOffTm	:= tylocalTLBuz.In.tTLWhiteBlinkTm; //T#500ms (from NtParam)
			fbBlink2(bEn := TRUE);
		
			tylocalTLBuz.Out.bTLWhite		:= fbBlink2.bOut;
		ELSE
			fbBlink2(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bTLGreenFlashEn THEN //Green Flash 1 sec [Put Conditions in Act_Link.st]
			
			fbBlink3.tOnTm	:= tylocalTLBuz.In.tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3.tOffTm	:= tylocalTLBuz.In.tTLGreenBlinkTm; //T#500ms (from NtParam)
			fbBlink3(bEn := TRUE);
		
			tylocalTLBuz.Out.bTLGreen	:= fbBlink3.bOut;
		ELSE
			fbBlink3(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bTLBlueFlashEn THEN //Blue Flash 1 sec [Put Conditions in Act_Link.st]
			
			fbBlink4.tOnTm	:= tylocalTLBuz.In.tTLBlueBlinkTm; //T#500ms (from NtParam)
			fbBlink4.tOffTm	:= tylocalTLBuz.In.tTLBlueBlinkTm; //T#500ms (from NtParam)
			fbBlink4(bEn := TRUE);
		
			tylocalTLBuz.Out.bTLGreen	:= fbBlink4.bOut;
		ELSE
			fbBlink4(bEn := FALSE);
		END_IF
		
		IF tylocalTLBuz.In.bBuzAlertEn = TRUE AND fbWarning.bEn=FALSE THEN
		
			fbWarning1.tOnTm				:= tylocalTLBuz.In.tBuzAlertOnTm;
			fbWarning1.tOffTm				:= tylocalTLBuz.In.tBuzAlertOnTm;
			fbWarning1.tRstTm				:= tylocalTLBuz.In.tBuzAlertRestTm;
			fbWarning1.usiOnCnt				:= tylocalTLBuz.In.usiBuzAlertOnCntr;
			fbWarning1.bStopAftRptSeqEn		:= tylocalTLBuz.In.bBuzAlertStopSeqEn; //Enable Sequence Count (from NtParam)
			fbWarning1.usiStopAftRptSeqCntr	:= tylocalTLBuz.In.usiBuzAlertStopSeqCntr; //Sequence Counter  (from NtParam)
			
			fbWarning1(bEn := TRUE);
			
			tylocalTLBuz.Out.bBuzBeep	:= fbWarning1.bOut AND (tylocalTLBuz.In.bMuteBuz = FALSE);
			
		ELSE
			fbWarning1(bEn := FALSE);
		END_IF
	ELSE
		fbBlink1(bEn := FALSE);
		fbBlink2(bEn := FALSE);
		fbBlink3(bEn := FALSE);
		fbBlink4(bEn := FALSE);
		fbWarning1(bEn := FALSE);
	END_IF
	
	//Arrange tylocalTLBuz.In.bWarning according to the severity of the warning or info (Err is prioritized)	
	IF tylocalTLBuz.In.bErr THEN
		usiWarnInfoStateNew	:= 1;
	ELSIF tylocalTLBuz.In.bWarning[0] THEN
		usiWarnInfoStateNew	:= 2;
	ELSIF tylocalTLBuz.In.bWarning[1] THEN
		usiWarnInfoStateNew	:= 3;
	ELSIF tylocalTLBuz.In.bWarning[2] THEN
		usiWarnInfoStateNew	:= 4;
	ELSIF tylocalTLBuz.In.bWarning[3] THEN
		usiWarnInfoStateNew	:= 5;
	ELSIF tylocalTLBuz.In.bWarning[4] THEN
		usiWarnInfoStateNew	:= 6;
	ELSIF tylocalTLBuz.In.bWarning[5] THEN
		usiWarnInfoStateNew	:= 7;
	ELSIF tylocalTLBuz.In.bBuzAlertEn AND fbWarning.bEn=FALSE THEN
		usiWarnInfoStateNew	:= 8;
	ELSE
		usiWarnInfoStateNew	:= 0;
	END_IF
	
	IF usiWarnInfoStateOld<>usiWarnInfoStateNew THEN
		usiWarnInfoStateOld:=usiWarnInfoStateNew;
		fbWarning(bEn := FALSE);
		fbWarning1(bEn := FALSE);
	END_IF
	
END_ACTION
