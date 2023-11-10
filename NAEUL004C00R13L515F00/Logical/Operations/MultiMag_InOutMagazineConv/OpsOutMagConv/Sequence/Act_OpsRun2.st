(** 2019-04-16 **)
ACTION Act_OpsRun2:
	//OutMagConv Lane2	
	//***************** sequence 2  ****************************************************************
	IF eGotoStep1 <> eOpsStep1 THEN
		
		CASE eGotoStep1 OF
			OutMagConvStepEntMag:
				IF bMagAutoEx AND p_bExtSen2 = FALSE THEN
					eDSSOTAct2	:= SOTActIdle;
				END_IF
				
				IF p_bStepEntMag2 = TRUE THEN
					eOpsStep1	:= eGotoStep1;
				ELSIF p_bMidSen2 AND p_bExtSen2 = FALSE AND p_eOutMagConv2Stat = MagConvActIdle THEN
					eOpsStep1	:= eGotoStep1;
				ELSIF p_bMidSen2 = FALSE AND p_bExtSen2 THEN
					eGotoStep1	:= OutMagConvStepChk;
				ELSIF p_bEntSen2 = FALSE AND p_bMidSen2 AND p_bExtSen2 THEN
					eGotoStep1	:= OutMagConvStepEntToMid;
				END_IF
				
			OutMagConvStepEntToMid:
				IF bMagAutoEx AND p_bExtSen2 THEN
					eDSSOTAct2	:= SOTActRun;
				ELSE
					eDSSOTAct2	:= SOTActIdle;
				END_IF
				
				IF  p_bExtSen2 = FALSE THEN
					eGotoStep1	:= OutMagConvStepChk;
				ELSIF p_bDSSOTTransporting2 = TRUE THEN
					eGotoStep1	:= OutMagConvStepExitMag;
				ELSIF p_bEntSen2 AND p_bMidSen2 = FALSE AND p_bExtSen2 THEN
					eOpsStep1	:= eGotoStep1;	
				ELSIF p_bStepEntMag2 = TRUE THEN
					eOpsStep1	:= eGotoStep1;
				ELSIF p_bOpsMnlUnloadMag2 AND p_bExtSen2 THEN
					eGotoStep1	:= OutMagConvStepWaitForRmvMag;
				END_IF
			ELSE
				eOpsStep1		:= eGotoStep1;
		
		END_CASE
		
	END_IF
	
	IF eGotoStep1 = eOpsStep1 THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep1 OF
				OutMagConvStepNA:
					sStepTxt1	:= 'Output Magazine Conveyor Standby';
					
					eGotoStep1	:= OutMagConvStepInit;
						
					bPaused		:= p_bStop OR p_bStep;
					
				OutMagConvStepInit:
					sStepTxt1			:= 'Initializing Magazine Conveyor';
					eOutMagConv2Act		:= MagConvActInit;

					IF (p_eOutMagConv2Status = Done AND p_eOutMagConv2Stat = MagConvActInit)
						THEN
						eOutMagConv2Act			:= MagConvActIdle;
						eGotoStep1				:= OutMagConvStepChk;
					END_IF
					
				OutMagConvStepChk:
					sStepTxt1	:= 'Magazine Checking';
					IF p_tyLinkDISetting.diOutMagConv2ExtSen <> 0 AND p_bExtSen2 = FALSE THEN
						eGotoStep1		:= OutMagConvStepEntMag;
					ELSIF p_tyLinkDISetting.diOutMagConv2MidSen <> 0 AND p_bMidSen2 = FALSE THEN
						eGotoStep1		:= OutMagConvStepEntToMid;
					ELSIF  p_tyLinkDISetting.diOutMagConv2EntSen <> 0 AND p_bEntSen2 = FALSE AND
						p_tyLinkDISetting.diOutMagConvMidSen = 0 AND 
						p_tyLinkDISetting.diOutMagConvMidSen = 0 THEN //when only 1 EntSen
						eGotoStep1		:= OutMagConvStepEntMag;
					ELSIF (p_bExitSig2 OR p_bDSSOTTransporting2) AND p_bExtSen2 THEN
						eGotoStep1		:= OutMagConvStepExitMag;
					ELSIF p_bExtSen2 AND p_bMidSen2 AND p_bOpsMnlUnloadMag2 = FALSE THEN
						IF bMagAutoEx AND p_bExtSen2 THEN
							eDSSOTAct2	:= SOTActRun;
						ELSE
							eDSSOTAct2	:= SOTActIdle;
						END_IF
					ELSIF p_bOpsMnlUnloadMag2 AND p_bExtSen2 THEN
						eGotoStep1	:= OutMagConvStepWaitForRmvMag;
					END_IF 
					
					bPaused		:= p_bStop OR p_bStep;
				
				OutMagConvStepEntMag:
					sStepTxt1	:= 'Entering Magazine'; //enter to end (extsen)
					
					eOutMagConv2Act		:= MagConvActEnt;
					
					IF p_eOutMagConv2Status = Done AND p_eOutMagConv2Stat = MagConvActEnt THEN
						eOutMagConv2Act	:= MagConvActIdle;
						eGotoStep1		:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepEntToMid:
					sStepTxt1	:= 'Entering To Middle Magazine Conveyor';
					
					eOutMagConv2Act		:= MagConvActEnt;
					
					IF p_eOutMagConv2Status = Done AND p_eOutMagConv2Stat = MagConvActEnt THEN
						eOutMagConv2Act	:= MagConvActIdle;
						eGotoStep1		:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepExitMag:
					sStepTxt1	:= 'Exiting Magazine';
					
					eOutMagConv2Act		:= MagConvActExit;
					
					IF p_eOutMagConv2Status = Done AND p_eOutMagConv2Stat = MagConvActExit AND
						p_eDSSOTStatus2 = Done AND p_eDSSOTStat2 = SOTActRun THEN
						
						eOutMagConv2Act		:= MagConvActIdle;
						eDSSOTAct2			:= SOTActIdle;
						eGotoStep1			:= OutMagConvStepChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				OutMagConvStepWaitForRmvMag:
				
					sStepTxt1  := 'Waiting Magazine To Remove Manually';
				      
					eDSSOTAct2   := SOTActIdle;
					fbMagToRmv2(IN:= (p_bExtSen2 = FALSE));
				
					IF p_bOpsMnlUnloadMag2 = FALSE OR fbMagToRmv2.Q THEN
						fbMagToRmv2 (IN:= FALSE);
						eGotoStep1		:= OutMagConvStepChk;
					END_IF
				
					bPaused			:= p_bStop OR p_bStep;
			END_CASE
			
		END_IF
			
	ELSE
		bPaused	:= p_bStop OR p_bStep;
	END_IF
	
	//Operation Step Status
	bStepInitDone2		:= eOpsStep1 	> OutMagConvStepInit;
	bStepEnterMag2		:= eOpsStep1 	= OutMagConvStepEntMag;
	bStepEnterMidMag2	:= eOpsStep1	= OutMagConvStepEntToMid;
	bStepExitMag2		:= eOpsStep1	= OutMagConvStepExitMag;
	bStepWaitMagToRmvMnl2:= eOpsStep1 	= OutMagConvStepWaitForRmvMag;
	

END_ACTION
