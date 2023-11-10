(** 2019-04-16 **)
ACTION Act_OpsRun:
	
	IF eGotoStep <> eOpsStep THEN
		
		CASE eGotoStep OF
			OutMagConvStepEntMag:
				IF bMagAutoEx AND p_bExtSen = FALSE THEN
					eDSSOTAct	:= SOTActIdle;
				END_IF
				
				IF p_bStepEntMag = TRUE THEN
					eOpsStep	:= eGotoStep;
				ELSIF p_bMidSen AND p_bExtSen = FALSE AND p_eOutMagConvStat = MagConvActIdle THEN
					eOpsStep	:= eGotoStep;
				ELSIF p_bMidSen = FALSE AND p_bExtSen THEN
					eGotoStep	:= OutMagConvStepChk;
				ELSIF p_bEntSen = FALSE AND p_bMidSen AND p_bExtSen THEN
					eGotoStep	:= OutMagConvStepEntToMid;
				END_IF
				
			OutMagConvStepEntToMid:
				IF bMagAutoEx AND p_bExtSen THEN
					eDSSOTAct	:= SOTActRun;
				ELSE
					eDSSOTAct	:= SOTActIdle;
				END_IF
				
				IF  p_bExtSen = FALSE THEN
					eGotoStep	:= OutMagConvStepChk;
				ELSIF p_bDSSOTTransporting = TRUE THEN
					eGotoStep	:= OutMagConvStepExitMag;
				ELSIF p_bEntSen AND p_bMidSen = FALSE AND p_bExtSen THEN
					eOpsStep	:= eGotoStep;
				ELSIF p_bStepEntMag = TRUE THEN
					eOpsStep	:= eGotoStep;
				ELSIF p_bOpsMnlUnloadMag AND p_bExtSen THEN
					eGotoStep	:= OutMagConvStepWaitForRmvMag;
				END_IF
			ELSE
				eOpsStep		:= eGotoStep;
		
		END_CASE
		
	END_IF
	
	IF eGotoStep = eOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				OutMagConvStepNA:
					sStepTxt	:= 'Output Magazine Conveyor Standby';
					
					eGotoStep	:= OutMagConvStepInit;
						
					bPaused		:= p_bStop OR p_bStep;
					
				OutMagConvStepInit:
					sStepTxt			:= 'Initializing Magazine Conveyor';
					eOutMagConvAct		:= MagConvActInit;

					IF (p_eOutMagConvStatus = Done AND p_eOutMagConvStat = MagConvActInit)
						THEN
						eOutMagConvAct			:= MagConvActIdle;
						eGotoStep				:= OutMagConvStepChk;
					END_IF
					
				OutMagConvStepChk:
					sStepTxt	:= 'Magazine Checking';
					IF p_tyLinkDISetting.diOutMagConvExtSen <> 0 AND p_bExtSen = FALSE THEN
						eGotoStep		:= OutMagConvStepEntMag;
					ELSIF p_tyLinkDISetting.diOutMagConvMidSen <> 0 AND p_bMidSen = FALSE THEN
						eGotoStep		:= OutMagConvStepEntToMid;
					ELSIF  p_tyLinkDISetting.diOutMagConvEntSen <> 0 AND p_bEntSen = FALSE AND
						p_tyLinkDISetting.diOutMagConvMidSen = 0 AND 
						p_tyLinkDISetting.diOutMagConvMidSen = 0 THEN //when only 1 EntSen
						eGotoStep		:= OutMagConvStepEntMag;
					ELSIF (p_bExitSig OR p_bDSSOTTransporting) AND p_bExtSen THEN
						eGotoStep		:= OutMagConvStepExitMag;
					ELSIF p_bExtSen AND p_bMidSen AND p_bOpsMnlUnloadMag = FALSE THEN
						IF bMagAutoEx AND p_bExtSen THEN
							eDSSOTAct	:= SOTActRun;
						ELSE
							eDSSOTAct	:= SOTActIdle;
						END_IF
					ELSIF p_bOpsMnlUnloadMag AND p_bExtSen THEN
						eGotoStep	:= OutMagConvStepWaitForRmvMag;
					END_IF
					
					bPaused		:= p_bStop OR p_bStep;
				
				OutMagConvStepEntMag:
					sStepTxt	:= 'Entering Magazine'; //enter to end (extsen)
					
					eOutMagConvAct		:= MagConvActEnt;
					
					IF p_eOutMagConvStatus = Done AND p_eOutMagConvStat = MagConvActEnt THEN
						eOutMagConvAct	:= MagConvActIdle;
						eGotoStep		:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepEntToMid:
					sStepTxt	:= 'Entering To Middle Magazine Conveyor';
					
					eOutMagConvAct		:= MagConvActEnt;
					
					IF p_eOutMagConvStatus = Done AND p_eOutMagConvStat = MagConvActEnt THEN
						eOutMagConvAct	:= MagConvActIdle;
						eGotoStep		:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepExitMag:
					sStepTxt	:= 'Exiting Magazine';
					
					eOutMagConvAct		:= MagConvActExit;
					
					IF p_eOutMagConvStatus = Done AND p_eOutMagConvStat = MagConvActExit AND
						p_eDSSOTStatus = Done AND p_eDSSOTStat = SOTActRun THEN
						
						eOutMagConvAct		:= MagConvActIdle;
						eDSSOTAct			:= SOTActIdle;
						eGotoStep			:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepWaitForRmvMag:
				
					sStepTxt  := 'Waiting Magazine To Remove Manually';
				      
					eDSSOTAct   := SOTActIdle;
					fbMagToRmv(IN:= (p_bExtSen = FALSE));
				
					IF p_bOpsMnlUnloadMag = FALSE OR fbMagToRmv.Q THEN
						fbMagToRmv (IN:= FALSE);
						eGotoStep		:= OutMagConvStepChk;
					END_IF
				
					bPaused			:= p_bStop OR p_bStep;
			END_CASE
			
		END_IF
			
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF
		
	Act_OpsRun2;
	
	//Operation Step Status
	bStepInitDone		:= eOpsStep > OutMagConvStepInit;
	bStepEnterMag		:= eOpsStep = OutMagConvStepEntMag;
	bStepEnterMidMag	:= eOpsStep	= OutMagConvStepEntToMid;
	bStepExitMag		:= eOpsStep = OutMagConvStepExitMag;
	bStepWaitMagToRmvMnl:= eOpsStep = OutMagConvStepWaitForRmvMag;
	

END_ACTION
