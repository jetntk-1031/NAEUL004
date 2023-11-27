(** 2019-04-16 **)
ACTION Act_OpsRun:
	
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
	
	IF eGotoOpsStep <> eOpsStep THEN
		
		CASE eGotoOpsStep OF
			LifMagULStepInitLif:
				IF NOT(p_bMagConvLanePrep) OR 
					(p_bMagConvLanePrep  AND eOpsStep1 > LiftMagConvInit) THEN
					eOpsStep	:= eGotoOpsStep;
				END_IF
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				LifMagULStepInitLif:
					sStepTxt	:= 'Initializing Lifter';
					IF p_bDIOutShutterCloseRS = TRUE THEN
						eLifterAct	:= LifterActFullHm;
					END_IF
					
					IF p_eLifterStatus = Done AND p_eLifterStat = LifterActFullHm THEN
						eLifterAct	:= LifterActIdle;
						eGotoOpsStep	:= LifMagULStepMagCmp;
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				LifMagULStepMagCmp:
					sStepTxt	:= 'Comparing Magazine';
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					
					a_bMagAllwMagPresent[1]	:= p_bBufferMagPresent1;
					a_bMagAllwMagPresent[2]	:= p_bBufferMagPresent2;
					a_bMagAllwMagPresent[3]	:= p_bBufferMagPresent3;
					
					a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
					a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
					a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					
					//Sorting Priority
					memset(ADR(a_udiMagAllwPriority), 0, SIZEOF(a_udiMagAllwPriority));
					
					FOR udi := 1 TO 3 DO
						udiCount	:= 3;
						udiCmpTm	:= a_udiMagAllwMagPresentTm[udi];
						
						FOR udi1 := 1 TO 3 DO
							IF a_udiMagAllwMagPresentTm[udi1] > udiCmpTm THEN
								udiCount	:= udiCount - 1;
							END_IF
						END_FOR
						
						a_udiMagAllwPriority[udi]	:= udiCount;
					END_FOR
					
					FOR udi := 3 TO 1 BY -1 DO
						FOR udi1 := 3 TO 1 BY -1 DO
							IF (udi <> udi1) AND (a_udiMagAllwPriority[udi] = a_udiMagAllwPriority[udi1]) THEN
								a_udiMagAllwPriority[udi1]	:= a_udiMagAllwPriority[udi1] - 1;
							END_IF
						END_FOR
					END_FOR
					
					//Checking Buffer Status
					memset(ADR(a_udiMagAllwSum), 0, SIZEOF(a_udiMagAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF pa_bMagDis[udi] = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Present
						IF a_bMagAllwMagPresent[udi] = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Empty
						IF a_tyMagAllwBffrStat[udi].bBffrMty = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 2500;
						END_IF
						//Magazine Available
						IF a_tyMagAllwBffrStat[udi].bBffrFull = FALSE AND a_tyMagAllwBffrStat[udi].bBffrMty = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 3000;
						END_IF
						//Magazine Reject
						IF pa_bMagRej[udi] = TRUE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 6000;
						END_IF
						
					END_FOR
					
					IF pa_bMagRej[1] = FALSE
						AND pa_bMagRej[2] = FALSE
						AND pa_bMagRej[3] = FALSE
					THEN
						bConvHvBrdAllwGo := p_bConvHvBrd;
					ELSE
						bConvHvBrdAllwGo := FALSE;
					END_IF
					
					udiMagAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						
						IF (a_udiMagAllwSum[udi] >= 5000 AND a_udiMagAllwSum[udi] < 6000 AND (p_bConvGdBrd = TRUE OR bConvHvBrdAllwGo))	//Enable + Magazine Present + Magazine Available
							OR (a_udiMagAllwSum[udi] >= 11000 AND p_bConvGdBrd = FALSE) THEN						//Reject + Enable + Magazine Present + Magazine Available
							
							IF udiMagAllwGo <> 99 THEN
								//Priority
								IF a_udiMagAllwSum[udi] < a_udiMagAllwSum[udiMagAllwGo] THEN
									udiMagAllwGo	:= udi;
								END_IF
							ELSE
								udiMagAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiMagAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							
							IF (a_udiMagAllwSum[udi] >= 4500 AND a_udiMagAllwSum[udi] < 6000 AND p_bConvGdBrd = TRUE)	//Enable + Magazine Present + Magazine Empty
								OR (a_udiMagAllwSum[udi] >= 10500 AND p_bConvGdBrd = FALSE) THEN						//Reject + Enable + Magazine Present + Magazine Empty
								
								IF udiMagAllwGo <> 99 THEN
									//Priority
									IF a_udiMagAllwSum[udi] < a_udiMagAllwSum[udiMagAllwGo] THEN
										udiMagAllwGo	:= udi;
									END_IF
								ELSE
									udiMagAllwGo	:= udi;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					IF udiMagAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							
							IF (a_udiMagAllwSum[udi] >= 4500 AND a_udiMagAllwSum[udi] < 6000)	//Enable + Magazine Present + (Magazine Available / Magazine Empty)
								OR (a_udiMagAllwSum[udi] >= 10500) THEN							//Reject + Enable + Magazine Present + (Magazine Available / Magazine Empty)
								
								IF udiMagAllwGo <> 99 THEN
									udiMagAllwGo	:= 99;
									EXIT;
								ELSE
									udiMagAllwGo	:= udi;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					IF (p_bUSAllow = TRUE) AND (udiMagAllwGo <> 99) THEN
						
						bMagNxtUnloadGd	:= NOT pa_bMagRej[udiMagAllwGo];
						eMagNxtLoad		:= udiMagAllwGo;
						eGotoOpsStep	:= LifMagULStepNxtLoadBffr;
						
						IF eMagNxtLoad = MagNxtLoadMag1 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat1);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent1);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm1);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct1);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat1);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus1);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct1);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat1);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus1);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting1);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart1);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop1);
							
						ELSIF eMagNxtLoad = MagNxtLoadMag2 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat2);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent2);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm2);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct2);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat2);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus2);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct2);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat2);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus2);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting2);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart2);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop2);
							
						ELSIF eMagNxtLoad = MagNxtLoadMag3 THEN
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat3);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent3);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm3);
							
							p_eLocalBufferAct ACCESS ADR(eBufferAct3);
							p_eLocalBufferStat ACCESS ADR(p_eBufferStat3);
							p_eLocalBufferStatus ACCESS ADR(p_eBufferStatus3);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct3);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat3);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus3);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting3);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart3);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop3);
							
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						eMagNxtLoad	:= MagNxtLoadInvalid;
						bPaused	:= p_bStop;
					END_IF
		
					//Unload Magazine
					IF p_bUnloadMag = TRUE THEN
						eMagNxtLoad		:= MagNxtLoadInvalid;
						eGotoOpsStep	:= LifMagULStepLifMovUnload;
					END_IF
					
				LifMagULStepNxtLoadBffr:
					sStepTxt	:= 'Computing Next Load Buffer';
					
					p_eLocalBufferAct	:= BufferActNxtLoad;
					
					IF p_eLocalBufferStatus = Done AND p_eLocalBufferStat = BufferActNxtLoad THEN
						p_eLocalBufferAct	:= BufferActIdle;
						eGotoOpsStep		:= LifMagULStepLifMov;
						
						bPaused	:= p_bStop OR p_bStep;
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepLifMovUnload;
						END_IF
						
					END_IF
					
				LifMagULStepLifMov:
					sStepTxt	:= 'Moving Lifter To Next Load Position';
					IF p_bDIOutShutterCloseRS = FALSE THEN
						bPaused	:= p_bStop OR p_bStep;
					END_IF	
					
					IF p_bDIOutShutterCloseRS = TRUE THEN
						
						
						IF eMagNxtLoad = MagNxtLoadMag1 THEN
							eLifterAct	:= LifterActGoASltPos;
							
						ELSIF eMagNxtLoad = MagNxtLoadMag2 THEN
							IF p_bMagConvLanePrep = FALSE THEN 
								eLifterAct	:= LifterActGoBSltPos;
							ELSIF  p_bMagPresentSen2 THEN//separated lane2 used ----------
								eLifter2Act	:= LifterActGoBSltPos;
								bLift2Move := TRUE;
							END_IF
							
						ELSIF eMagNxtLoad = MagNxtLoadMag3 THEN
							eLifterAct	:= LifterActGoCSltPos;
							
						ELSIF eMagNxtLoad = MagNxtLoadInvalid THEN	
							IF p_bNtParamProjLifter2Prep = FALSE THEN
									eGotoOpsStep	:= LifMagULStepMagCmp;
								ELSE
									eGotoOpsStep	:= LifMagULStepStandby;
							END_IF
							bPaused	:= p_bStop OR p_bStep;
							
							//Unload Magazine
						ELSIF p_bUnloadMag = TRUE THEN
								eMagNxtLoad		:= MagNxtLoadInvalid;
								eGotoOpsStep	:= LifMagULStepLifMovUnload;
						END_IF
						
					END_IF
					
					IF (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoASltPos)
						OR (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoBSltPos)
						OR (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoCSltPos) THEN
						
						eLifterAct	:= LifterActIdle;
						
						eGotoOpsStep	:= LifMagULStepBffrUSComm;
						
						bPaused	:= p_bStop OR p_bStep;
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepLifMovUnload;
						END_IF
					END_IF
					IF p_bNtParamProjLifter2Prep THEN 
						IF (p_eLifter2Status = Done AND p_eLifter2Stat = LifterActGoBSltPos) THEN
							eLifter2Act	:= LifterActIdle;
							bLift2Move := FALSE;						
							eGotoOpsStep	:= LifMagULStepBffrUSComm;
							bPaused	:= p_bStop OR p_bStep;
							//Unload Magazine
							IF p_bUnloadMag = TRUE THEN
								eMagNxtLoad		:= MagNxtLoadInvalid;
								eGotoOpsStep	:= LifMagULStepLifMovUnload;
							END_IF
						END_IF
					END_IF 
				LifMagULStepStandby:
					//Check eOpsStep1 unload condition
					IF eOpsStep1 = LiftMagLifterUnload AND (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoASltPos) THEN
						eLifterAct	:= LifterActIdle;
					ELSIF eOpsStep2 = LiftMagLifterUnload AND (p_eLifter2Status = Done AND p_eLifter2Stat = LifterActGoBSltPos)THEN
						bLift2Move := FALSE;
						eLifter2Act	:= LifterActIdle;
					ELSIF p_eLifterStatus = Idle OR p_eLifter2Status = Idle THEN
						eGotoOpsStep	:= LifMagULStepMagCmp;
					END_IF
					
					
				LifMagULStepBffrUSComm:
					sStepTxt	:= 'Communicating Buffer Upstream';
					
					p_eLocalUSSMEMAAct	:= SMEMAActRun;
					
					IF p_bLocalUSSMEMATransporting = TRUE THEN
						eGotoOpsStep	:= LifMagULStepBffrEntBrd;
						
					ELSIF p_bUSAllow = FALSE THEN
						p_eLocalUSSMEMAAct	:= SMEMAActIdle;
						eMagNxtLoad			:= MagNxtLoadInvalid;
						eGotoOpsStep		:= LifMagULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						IF p_bLocalBufferMagPresent = FALSE AND p_bConvHvBrd THEN	//Checking Magazine Present
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						
						ELSIF EDGEPOS(p_tyLocalBufferStat.bBffrMty) THEN	
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
							
						ELSIF pa_bMagDis[udiMagAllwGo] = TRUE THEN	//Checking Magazine Enable
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
						//Board Info Changed
						IF bMagNxtUnloadGd <> p_bConvGdBrd THEN
							FOR udi := 1 TO 3 DO
								IF a_udiMagAllwSum[udi] >= 6000 THEN	//Reject Mode Enable
									eMagNxtLoad		:= MagNxtLoadInvalid;
									eGotoOpsStep	:= LifMagULStepMagCmp;
										
									bPaused	:= p_bStop OR p_bStep;
									EXIT;
								END_IF
							END_FOR
						END_IF
						
						//Unload Magazine
						IF p_bUnloadMag = TRUE THEN
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eGotoOpsStep	:= LifMagULStepLifMovUnload;
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
						IF (bPaused = TRUE) OR (eGotoOpsStep = LifMagULStepMagCmp) OR (p_bUnloadMag = TRUE) THEN
							p_eLocalUSSMEMAAct	:= SMEMAActIdle;
						END_IF
						
					END_IF
					
				LifMagULStepBffrEntBrd:
					IF p_bLocalUSSMEMATransporting = FALSE THEN
						p_eLocalUSSMEMAAct	:= SMEMAActIdle;
						eGotoOpsStep		:= LifMagULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSE
						
						IF p_bLocalUSSMEMAConvStart THEN
							sStepTxt	:= 'Transferring Board Into Magazine';
							IF p_eNtParamProjMagBuffferActLoad = BufferActLoadWhenStarted
								THEN
								
								p_eLocalBufferAct	:= BufferActLoad;
							END_IF
							
							
						END_IF
							
						IF p_bLocalUSSMEMAConvStop THEN
							sStepTxt	:= 'Stop Transferring';
							
							//Do Nothing
						END_IF
						
						IF p_eLocalUSSMEMAStatus = Done AND p_eLocalUSSMEMAStat = SMEMAActRun THEN
							p_eLocalUSSMEMAAct	:= SMEMAActIdle;
							eGotoOpsStep		:= LifMagULStepLoadBffr;
						END_IF
						
					END_IF
					
				LifMagULStepLoadBffr:
					sStepTxt	:= 'Loading Buffer';
					IF p_eNtParamProjMagBuffferActLoad = BufferActLoadWhenCompleted
						THEN	
						p_eLocalBufferAct	:= BufferActLoad;
					END_IF
			
					
					IF p_eLocalBufferStatus = Done AND p_eLocalBufferStat = BufferActLoad THEN
						p_eLocalBufferAct	:= BufferActIdle;
						eMagNxtLoad			:= MagNxtLoadInvalid;
						eGotoOpsStep		:= LifMagULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				LifMagULStepLifMovUnload:
					//Magazine platform unload button
					sStepTxt	:= 'Moving Lifter To Unload Position';
					
					eLifterAct	:= LifterActGoAPos;
					
					IF p_eLifterStatus = Done AND p_eLifterStat = LifterActGoAPos THEN
						eLifterAct	:= LifterActIdle;
						
						eGotoOpsStep	:= LifMagULStepUnload;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				LifMagULStepUnload:
					sStepTxt	:= 'Unloading Magazine';
					
					IF p_bUnloadMag = FALSE THEN
						eGotoOpsStep	:= LifMagULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					ELSE
						bPaused	:= p_bStop;
					END_IF
					
			END_CASE
			
		END_IF
		
	END_IF
	
	Act_OpsInfo;
	
	//Step
	bUnloading	:= eOpsStep = LifMagULStepUnload;
	bLifterMoving := eOpsStep = LifMagULStepLifMov;
	
	//*************** second sequence  Lift Conv 1 and lifter*************************************************************
	IF p_bNtParamProjLifter2Prep AND p_bMagConvLanePrep THEN
		IF eGotoOpsStep1 <> eOpsStep1 THEN
			CASE eGotoOpsStep1 OF
				//During unload check ops is standby step
				LiftMagLifterUnload:
					IF eOpsStep = LifMagULStepStandby OR eOpsStep = LifMagULStepMagCmp THEN
						eOpsStep1	:= eGotoOpsStep1;
					END_IF
					
				LiftMagConvIdle:
					IF eOpsStep1 = LiftMagLifterLoad THEN
						usiMag1Rdy := LifterLoadPos;
						eOpsStep1	:= eGotoOpsStep1;
					ELSIF eOpsStep1 = LiftMagConvOUT THEN
						usiMag1Rdy := LifterNA;
						eOpsStep1	:= eGotoOpsStep1;
					ELSIF eOpsStep1 = LiftMagConvIN THEN
						usiMag1Rdy := LifterMagInProgress;
						eOpsStep1	:= eGotoOpsStep1;
					ELSE
						eOpsStep1	:= eGotoOpsStep1;
					END_IF	
					
				LiftMagConvOUT:
					IF eOpsStep1 = LiftMagLifterUnload THEN
						usiMag1Rdy := LifterUnloadPos;
						eOpsStep1	:= eGotoOpsStep1;
					END_IF
					
				ELSE
					eOpsStep1	:= eGotoOpsStep1;
			END_CASE
		END_IF
		
		IF eOpsStep1 = eGotoOpsStep1 THEN
			IF bPaused = FALSE THEN
				
				CASE eOpsStep1 OF
					LiftMagConvInit: 
						IF bMagSetFullExit AND p_bLinkDIOutMagConvEntSen THEN
							eLifterConvAct	:= MagConvActExitClpr;
						ELSE
							eLifterConvAct	:=  MagConvActInitClpStop;
						END_IF
						
						IF (p_eLifterMagConvStat = MagConvActInitClpStop OR p_eLifterMagConvStat = MagConvActExitClpr) AND p_eLifterMagConvStatus = Done THEN
							eLifterConvAct	:=  MagConvActIdle;
							eGotoOpsStep1 := LiftMagConvIdle;
		
						END_IF
						bPaused	:= p_bStop OR p_bStep;
	
					LiftMagConvIdle:
						bMagSetFullExit	:= FALSE;
						IF p_bMagConvLanePrep THEN
							IF p_bMagPresentSen1 THEN //limit sensor ON
								//idle,standby
							ELSIF usiMag1Rdy = LifterLoadRdyTrans AND p_bMagPresentSen1 = FALSE THEN //mag1rdy = 1,Lifter inposition (load) and InMagConv ExitSen present
								eGotoOpsStep1 := LiftMagConvIN;
							ELSIF usiMag1Rdy = LifterNA 
								AND p_bMagPresentSen1 = FALSE 
								AND eOpsStep <> LifMagULStepInitLif 
								AND p_bOutShutterExtended
								AND p_bLinkDIOutMagConvEntSen = FALSE
								THEN
								eGotoOpsStep1 :=  LiftMagLifterLoad;
							END_IF
							
							//Lane 1 prep, magazine1 full
							IF p_bMagConvLanePrep 
								AND pa_bMagDis[1] = FALSE 
								AND a_bMagAllwMagPresent[1] = TRUE 
								AND a_tyMagAllwBffrStat[1].bBffrFull = TRUE 
								AND p_bOutShutterExtended
								THEN
								eMagNxtLoad		:= MagNxtLoadInvalid;
								eGotoOpsStep1	:= LiftMagLifterUnload;
							END_IF
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
	
					LiftMagConvIN:
						sStepTxt	:= 'Lifter Conveyor Entering';
						eLifterConvAct	:=  MagConvActEntClpStop;
						
						IF p_eLifterMagConvStat = MagConvActEntClpStop AND p_eLifterMagConvStatus = Done THEN
							eLifterConvAct	:=  MagConvActIdle;
							bLocalMag1InPos := TRUE;
							eGotoOpsStep1 := LiftMagConvIdle;
						END_IF
						bPaused	:= p_bStop OR p_bStep;
	
					LiftMagConvOUT:
						IF usiMag1Rdy = LifterUnloadRdyTrans THEN //Out mag allow and in position (unload)
							sStepTxt	:= 'Lifter Conveyor Exiting';
							eLifterConvAct	:=  MagConvActExitClpr;
							bMagSetFullExit	:= TRUE;
						END_IF
						
						IF p_eLifterMagConvStat = MagConvActExitClpr AND p_eLifterMagConvStatus = Done THEN
							eLifterConvAct	:=  MagConvActIdle;
							eGotoOpsStep1 := LiftMagConvIdle;
							bMagSetFullExit	:= FALSE;
	
						END_IF
						bPaused	:= p_bStop OR p_bStep;
	
					LiftMagLifterLoad:
						sStepTxt	:= 'Move To Loading Position';
						IF eOpsStep <> LifMagULStepInitLif AND eOpsStep <> LifMagULStepLifMov THEN
							eLifterAct := LifterActGoDPos; //D,E,; load ,unload 
						END_IF
						
						IF (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoDPos)THEN
							eLifterAct := LifterActIdle;
							eGotoOpsStep1 := LiftMagConvIdle;
						END_IF
						bPaused	:= p_bStop OR p_bStep;
						
					LiftMagLifterUnload:
						sStepTxt	:= 'Move To Unload Position';
						IF eOpsStep <> LifMagULStepInitLif AND eOpsStep <> LifMagULStepLifMov 
							AND p_eLifterStat <> LifterActGoASltPos THEN
							eMagNxtLoad		:= MagNxtLoadInvalid;
							eLifterAct := LifterActGoEPos; //D,E,; load ,unload 
						END_IF
						
						IF (p_eLifterStatus = Done AND p_eLifterStat = LifterActGoEPos)THEN
							eLifterAct := LifterActIdle;
							eGotoOpsStep1	:= LiftMagConvOUT;
						END_IF
						bPaused	:= p_bStop OR p_bStep;
					
				END_CASE
			END_IF
		END_IF
	END_IF
	IF p_bNtParamProjLifter2Prep AND p_bMagConvLane2Prep THEN
		Act_OpsRun2; //Second sequence <<<<<<<<<<<<<<<<<<<<-----------------------------------------------------------------------------------------------
	END_IF
	bStepInitDone1 := eOpsStep >LifMagULStepInitLif AND eOpsStep1 >LiftMagConvInit;
//	bStepEntBoard := eOpsStep >= LifMagULStepBffrEntBrd AND eOpsStep < LifMagULStepLifMovUnload AND p_bOutShutterExtended;
	
	bStepEntMag1 := eOpsStep1 = LiftMagConvIN;
	bStepExtMag1 := eOpsStep1 = LiftMagConvOUT;

	bStepInitDone2 := eOpsStep2 >LifMagULStepInitLif;
	bStepLiftMagIdle2 := eOpsStep2 = LiftMagConvIdle;
	bStepEntMag2 := eOpsStep2 = LiftMagConvIN;
	bStepExtMag2 := eOpsStep2 = LiftMagConvOUT;
	

END_ACTION
