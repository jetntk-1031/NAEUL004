(** 2019-04-16 **)
ACTION Act_OpsRun:
	
	IF eGotoStep <> eOpsStep THEN
		
		CASE eGotoStep OF
			
			ELSE
				eOpsStep	:= eGotoStep;
		
		END_CASE
		
	END_IF
	
	IF eGotoStep = eOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				InMagConvStepNA:
					sStepTxt	:= 'NA';
		
					eGotoStep	:= InMagConvStepInit;
						
					//					bPaused		:= p_bStop OR p_bStep;
					
				InMagConvStepInit:
					sStepTxt			:= 'Initializing Magazine Conveyor';
					eInMagConvAct		:= MagConvActInit;

					IF (p_eInMagConvStatus = Done AND p_eInMagConvStat = MagConvActInit)
						THEN
						eInMagConvAct			:= MagConvActIdle;
						eGotoStep			:= InMagConvStepChk;
					END_IF
					
				InMagConvStepChk:
					sStepTxt	:= 'Checking Input Magazine Conveyor Condition';
					
					IF bMagAutoEx AND p_bLinkInMagConvMidSen = FALSE THEN
						eUSSOTAct	:= SOTActRun;
					ELSE
						eUSSOTAct	:= SOTActIdle;
					END_IF
					
					IF p_bStepOpsExtMag = TRUE AND bLiftConvMagExist = FALSE THEN
						eGotoStep	:= InMagConvStepOpsExtMag;
					ELSIF p_bStepOpsEntMag = TRUE THEN
						eGotoStep	:= InMagConvStepOpsEntMag;
					ELSIF p_bUSSOTTransporting= TRUE THEN 		//SOT Comm
						eGotoStep	:= InMagConvStepOpsEntToMid;
					ELSIF p_bStepOpsEntMidMag = TRUE THEN
						bMnlLoad	:= TRUE;
						eGotoStep	:= InMagConvStepOpsEntToMid;
					END_IF	
					
					IF p_bStepOpsExtMag = FALSE AND p_bStepOpsEntMag = FALSE AND p_eLiftMagConvStatus <> Busy THEN
						bPaused		:= p_bStop OR p_bStep;
						IF bPaused THEN
							eUSSOTAct	:= SOTActIdle;
						END_IF
					END_IF
					
				InMagConvStepOpsEntMag:
					sStepTxt	:= 'Entering Magazine';
					
					eInMagConvAct		:= MagConvActInit;
					
					IF p_eInMagConvStatus = Done AND p_eInMagConvStat = MagConvActInit THEN
						eInMagConvAct	:= MagConvActIdle;
						eGotoStep		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				InMagConvStepOpsExtChkMagSize:
					sStepTxt	:= 'Checking Magazine Size';
					
					IF p_bMagSelMiniMag = TRUE THEN
						IF p_bMagHeightChkSen = TRUE AND p_bInMagConvExtSen = TRUE THEN
							eStatus		:= Error;
							udiStatus	:= 10000;		// Invalid Magazine Size
						ELSE
							eGotoStep	:= InMagConvStepOpsExtMag;
						END_IF
					ELSE
						eGotoStep	:= InMagConvStepOpsExtMag;
					END_IF
				
				InMagConvStepOpsExtMag:
					sStepTxt	:= 'Exiting Magazine';
					
					eInMagConvAct		:= MagConvActExit;
					
					IF p_eInMagConvStatus = Done AND p_eInMagConvStat = MagConvActExit THEN
						bLiftConvMagExist := TRUE;
						eInMagConvAct	:= MagConvActIdle;
						eGotoStep		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				InMagConvStepOpsEntToMid:
					sStepTxt	:= 'Entering Magazine To Middle';
					
					eInMagConvAct		:= MagConvActInit;
					
					IF p_eInMagConvStatus = Done AND p_eInMagConvStat = MagConvActInit AND 
						(bMnlLoad OR (p_eUSSOTStatus = Done AND p_eUSSOTStat = SOTActRun)) THEN
						bMnlLoad		:= FALSE;
						eInMagConvAct	:= MagConvActIdle;
						eUSSOTAct		:= SOTActIdle;
						eGotoStep		:= InMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
			END_CASE
			
		END_IF
			
	ELSE
		bPaused	:= p_bStop OR p_bStep;
		
	END_IF
			
	Act_OpsRun2;
	
	//Operation Step Status
	bStepEnterMag		:= eOpsStep = InMagConvStepOpsEntMag;
	bStepEntToMid		:= eOpsStep = InMagConvStepOpsEntToMid;
	bStepExitMag		:= eOpsStep = InMagConvStepOpsExtMag;

END_ACTION
