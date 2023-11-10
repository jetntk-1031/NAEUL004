(** 2019-04-16 **)
ACTION Act_OpsRun2:
	
	(*Unloader's Lifter Magazine Layout*)
	(*
		Direction: -->> Left To Right -->>
		
	                      +----------+
	                      |          |
	                      |          |
	     (Lif=PosCSlt) US3|          |
	               [Mag 3]|          |
	                      |          |
	     (Lif=PosBSlt) US2|          |
	               [Mag 2]|          |
	                      |          |
	     (Lif=PosASlt) US1|          |
	               [Mag 1]|          |
	                      | Unloader |
	                      +----------+
		
		Note: Program Action Called For Lifter As Shown Above
		      Setup Lifter Program Parameters Accordingly
	
	For 2 lane magconv
	-eGotoOpsStep, eGotoOpsStep1 will consider lane 1; eGotoOpsStep2,eGotoOpsStep3 consider lane 2
	i. Lifter move position D,E ; Load, Unload pos
	ii. Lifter 2 move position G,H ; Load, Unload pos
	*)
	
	//===================== third sequence  Lifter 2 ================================================
	IF eGotoOpsStep2 <> eOpsStep2 THEN
		CASE eGotoOpsStep2 OF
			//During unload check ops is standby step
			LiftMagLifterUnload:
				IF eOpsStep = LifMagULStepStandby OR eOpsStep = LifMagULStepMagCmp THEN
					eOpsStep2	:= eGotoOpsStep2;
				END_IF
				
			LiftMagConvIdle:
				IF eOpsStep2 = LiftMagLifterLoad THEN
					usiMag2Rdy := LifterLoadPos;
					eOpsStep2	:= eGotoOpsStep2;
				ELSIF eOpsStep2 = LiftMagConvOUT THEN
					usiMag2Rdy := LifterNA;
					eOpsStep2	:= eGotoOpsStep2;
				ELSIF eOpsStep2 = LiftMagConvIN THEN
					usiMag2Rdy := LifterMagInProgress;
					eOpsStep2	:= eGotoOpsStep2;
				ELSE
					eOpsStep2	:= eGotoOpsStep2;
				END_IF
				
			LiftMagConvOUT:
				IF eOpsStep2 = LiftMagLifterUnload THEN
					usiMag2Rdy := LifterUnloadPos;
					eOpsStep2	:= eGotoOpsStep2;
				END_IF
				
			ELSE
				eOpsStep2	:= eGotoOpsStep2;
		END_CASE
	END_IF
	
	IF eOpsStep2 = eGotoOpsStep2 THEN
		IF bPaused = FALSE THEN
			
			CASE eOpsStep2 OF
				LiftMagConvInit:
					sStepTxt1	:= 'Lifter Conveyor 2 Initialization';
					
					IF bMagSetFullExit2 AND p_bLinkDIOutMagConv2EntSen THEN
						eLifterConv2Act	:= MagConvActExitClpr;
					ELSE
						eLifterConv2Act	:=  MagConvActInitClpStop;
					END_IF
					
					IF (p_eLifterMagConv2Stat = MagConvActInitClpStop OR p_eLifterMagConv2Stat = MagConvActExitClpr) AND p_eLifterMagConvStatus = Done THEN
						eLifterConv2Act	:= MagConvActIdle;
						eGotoOpsStep2 	:= LifMagULStepInitLif;
	
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				LifMagULStepInitLif:
					sStepTxt1	:= 'Lifter 2 Initialization';
					IF p_bDIOutShutterCloseRS = TRUE THEN
						eLifter2Act	:= LifterActFullHm;
					END_IF
					
					IF p_eLifter2Status = Done AND p_eLifter2Stat = LifterActFullHm THEN
						eLifter2Act	:= LifterActIdle;
						
						eGotoOpsStep2	:= LiftMagConvIdle;
						
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				LiftMagConvIdle:
					bMagSetFullExit2 := FALSE;
					IF p_bMagConvLanePrep THEN
						IF p_bMagPresentSen2 THEN //limit sensor ON
							//idle,standby
						ELSIF usiMag2Rdy = LifterLoadRdyTrans AND p_bMagPresentSen2 = FALSE THEN //mag2rdy = 2,Lifter inposition (load) and InMagConv ExitSen present
							eGotoOpsStep2 := LiftMagConvIN;
						ELSIF usiMag2Rdy = LifterNA 
							AND p_bMagPresentSen2 = FALSE 
							AND eOpsStep2 <> LifMagULStepInitLif 
							AND p_bOutShutterExtended
							AND p_bLinkDIOutMagConv2EntSen = FALSE
							THEN
							eGotoOpsStep2 :=  LiftMagLifterLoad;
						END_IF
						
						//Lane 2 prep, magazine2 full
						IF p_bMagConvLanePrep 
							AND pa_bMagDis[2] = FALSE 
							AND a_bMagAllwMagPresent[2] = TRUE 
							AND a_tyMagAllwBffrStat[2].bBffrFull = TRUE 
							AND p_bOutShutterExtended
							THEN
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep2	:= LiftMagLifterUnload;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;

				LiftMagConvIN:
					sStepTxt1	:= 'Lifter 2 Conveyor Entering';
					eLifterConv2Act	:=  MagConvActEntClpStop;
					
					IF p_eLifterMagConv2Stat = MagConvActEntClpStop AND p_eLifterMagConv2Status = Done THEN
						eLifterConv2Act	:=  MagConvActIdle;
						bLocalMag2InPos := TRUE;
						eGotoOpsStep2 := LiftMagConvIdle;
					END_IF
					bPaused	:= p_bStop OR p_bStep;

				LiftMagConvOUT:
					IF usiMag2Rdy = LifterUnloadRdyTrans THEN //Out mag allow and in position (unload)
						sStepTxt1	:= 'Lifter 2 Conveyor Exiting';
						eLifterConv2Act	:=  MagConvActExitClpr;
						bMagSetFullExit2 := TRUE;
					END_IF
					
					IF p_eLifterMagConv2Stat = MagConvActExitClpr AND p_eLifterMagConv2Status = Done THEN
						eLifterConv2Act	:=  MagConvActIdle;
						eGotoOpsStep2 := LiftMagConvIdle;
						bMagSetFullExit2 := FALSE;
					END_IF
					bPaused	:= p_bStop OR p_bStep;

				LiftMagLifterLoad:
					sStepTxt1	:= 'Move To Loading Position';
					IF eOpsStep2 <> LifMagULStepInitLif AND bLift2Move = FALSE THEN //AND eOpsStep2 <> LifMagULStepLifMov THEN
						eLifter2Act := LifterActGoGPos; //G,H,; load ,unload 
					END_IF
					
					IF (p_eLifter2Status = Done AND p_eLifter2Stat = LifterActGoGPos)THEN
						eLifter2Act := LifterActIdle;
						eGotoOpsStep2 := LiftMagConvIdle;
					END_IF
					bPaused	:= p_bStop OR p_bStep;
					
				LiftMagLifterUnload:
					sStepTxt1	:= 'Move To Unload Position';
					IF eOpsStep2 <> LifMagULStepInitLif  AND bLift2Move = FALSE 
						AND p_eLifter2Stat <> LifterActGoBSltPos THEN//AND eOpsStep2 <> LifMagULStepLifMov  THEN
						eMagNxtLoad		:= MagNxtLoadInvalid;
						eLifter2Act 	:= LifterActGoHPos; //G,H,; load ,unload 
					END_IF
					
					IF (p_eLifter2Status = Done AND p_eLifter2Stat = LifterActGoHPos)THEN
						eLifter2Act := LifterActIdle;
						eGotoOpsStep2	:= LiftMagConvOUT;
					END_IF
					bPaused	:= p_bStop OR p_bStep;		

				LifMagULStepStandby:
			
			END_CASE
		END_IF
	END_IF
END_ACTION
