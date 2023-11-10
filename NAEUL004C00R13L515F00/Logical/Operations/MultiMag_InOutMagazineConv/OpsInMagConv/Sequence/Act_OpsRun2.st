(** 2019-04-16 **)
ACTION Act_OpsRun2:
	//InMagConv Lane2			
	//**********************second sequence - InMag2 ********************************************************
	IF eGotoStep1 <> eOpsStep1 THEN
		
		CASE eGotoStep1 OF
			
			ELSE
				eOpsStep1	:= eGotoStep1;
		
		END_CASE
		
	END_IF
	
	IF eGotoStep1 = eOpsStep1 THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep1 OF
				InMagConvStepNA:
					sStepTxt1	:= 'NA';
		
					eGotoStep1	:= InMagConvStepInit;
						
//					bPaused		:= p_bStop OR p_bStep;
					
				InMagConvStepInit:
					sStepTxt1			:= 'Initializing Magazine Conveyor';
					eInMagConv2Act		:= MagConvActInit;

					IF (p_eInMagConv2Status = Done AND p_eInMagConv2Stat = MagConvActInit)
						THEN
						eInMagConv2Act			:= MagConvActIdle;
						eGotoStep1				:= InMagConvStepChk;
					END_IF
					
				InMagConvStepChk:
					sStepTxt1	:= 'Checking Input Magazine Conveyor Condition';
					
					IF bMagAutoEx AND p_bLinkInMagConv2MidSen = FALSE THEN
						eUSSOTAct2	:= SOTActRun;
					ELSE
						eUSSOTAct2	:= SOTActIdle;
					END_IF
					
					IF p_bStepOpsExtMag2 = TRUE AND bLiftConvMagExist2 = FALSE THEN
						eGotoStep1	:= InMagConvStepOpsExtMag;
					ELSIF p_bStepOpsEntMag2 = TRUE THEN
						eGotoStep1	:= InMagConvStepOpsEntMag;
					ELSIF  p_bUSSOTTransporting2= TRUE THEN		//SOT Comm
						eGotoStep1	:= InMagConvStepOpsEntToMid;
					ELSIF p_bStepOpsEntMidMag2 = TRUE THEN
						bMnlLoad2	:= TRUE;
						eGotoStep1	:= InMagConvStepOpsEntToMid;
					END_IF	
					
					IF p_bStepOpsExtMag2 = FALSE AND p_bStepOpsEntMag2 = FALSE AND p_eLiftMagConv2Status <> Busy THEN
						bPaused		:= p_bStop OR p_bStep;
						IF bPaused THEN
							eUSSOTAct2	:= SOTActIdle;
						END_IF
					END_IF
					
				InMagConvStepOpsEntMag:
					sStepTxt1	:= 'Entering Magazine';
					
					eInMagConv2Act		:= MagConvActInit;
					
					IF p_eInMagConv2Status = Done AND p_eInMagConv2Stat = MagConvActInit THEN
						eInMagConv2Act	:= MagConvActIdle;
						eGotoStep1		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				InMagConvStepOpsExtChkMagSize:
					sStepTxt1	:= 'Checking Magazine Size';
					
					IF p_bMagSelMiniMag = TRUE THEN
						IF p_bMagHeightChkSen = TRUE AND p_bInMagConvExtSen = TRUE THEN
							eStatus		:= Error;
							udiStatus	:= 10000;		// Invalid Magazine Size
						ELSE
							eGotoStep1	:= InMagConvStepOpsExtMag;
						END_IF
					ELSE
						eGotoStep1	:= InMagConvStepOpsExtMag;
					END_IF
				
				InMagConvStepOpsExtMag:
					sStepTxt1	:= 'Exiting Magazine';
					
					eInMagConv2Act		:= MagConvActExit;
					
					IF p_eInMagConv2Status = Done AND p_eInMagConv2Stat = MagConvActExit THEN
						bLiftConvMagExist2 := TRUE;
						eInMagConv2Act	:= MagConvActIdle;
						eGotoStep1		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				InMagConvStepOpsEntToMid:
					sStepTxt1	:= 'Entering Magazine To Middle';
					
					eInMagConv2Act		:= MagConvActInit;
					
					IF p_eInMagConv2Status = Done AND p_eInMagConv2Stat = MagConvActInit AND
						(bMnlLoad2 OR  (p_eUSSOTStatus2 = Done AND p_eUSSOTStat2 = SOTActRun)) THEN
						bMnlLoad2		:= FALSE;
						eInMagConv2Act	:= MagConvActIdle;
						eUSSOTAct2		:= SOTActIdle;
						eGotoStep1		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
			END_CASE
			
		END_IF
			
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF
	
	//Operation Step Status
	bStepEnterMag2		:= eOpsStep1 = InMagConvStepOpsEntMag;
	bStepEntToMid2		:= eOpsStep1 = InMagConvStepOpsEntToMid;
	bStepExitMag2		:= eOpsStep1 = InMagConvStepOpsExtMag;
	
END_ACTION
