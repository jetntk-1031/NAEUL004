(** 2019-04-16 **)
ACTION Act_OpsRun:
	
	(*Unloader's Traverser & Lifter Layout*)
	(*
		Direction: -->> Left To Right -->>
		
	                              +----------+
	                              |          |
	                              |          |
	     (Trav=PosC; Lif=PosC) US3|          |DS3 (Trav=PosF; Lif=PosCSlt)
	                      [Lane C]|          |[Mag 3]
	                              |          |
	     (Trav=PosB; Lif=PosB) US2|          |DS2 (Trav=PosE; Lif=PosBSlt)
	                      [Lane B]|          |[Mag 2]
	                              |          |
	     (Trav=PosA; Lif=PosA) US1|          |DS1 (Trav=PosD; Lif=PosASlt)
	                      [Lane A]|          |[Mag 1]
	                              | Unloader |
	                              +----------+
	
		Note: Program Action Called For Traverser & Lifter As Shown Above
		      Setup The Traverser & Lifter Program Parameters Accordingly
	*)
	
//Magazine Width Check Sequence
//1) STEP 1: SHUTTLE CONVEYOR TRAVERSE TO MAG 1 THE FIBER IS OFF
//2) STEP 2: SHUTTLE CONVEYOR TRAVERSE BACKWARD ABOUT 2MM AND NOW THE FIBER IS ON
//(NOTE: 2MM IS A PREDEFINE VALUE AND CAN BE CHANGED BY ENGINEER LEVEL
//3) STEP 3: SHUTTLE CONVEYOR TRAVERSE FORWARD 2MM AND NOW THE FIBER IS OFF
//4) STEP 4: NOW THE SHUTTLE CONVEYOR IS ALIGNED CORRECTLY TO MAG 1 AND READY TO LOAD AND UNLOAD THE BOARD
//5) STEP 5: THE SEQUENCES ARE REPEATED WHEN LOAD/UNLOAD USING MAG 2 AND MAG 3
//(NOTE: CHECK ONCE FOR EVERY NEW MAGAZINE)
	Act_LogStep;
	Act_OpsCommSig;
	Act_OpsMod;
	

	
	IF eGotoOpsStep <> eOpsStep THEN
	
		fbWidthChkSenOnTim(IN:= FALSE);
		fbWidthChkSenOffTim(IN:= FALSE);
		tTravLiftInPos(IN:= FALSE);
		tExitBoardTimoutErr(IN:=FALSE);
		// bTravLifInDSPos	:= FALSE;
		
		IF eGotoOpsStep = TravLifULStepUSSigWait OR eGotoOpsStep = TravLifULStepTravLifMov OR eGotoOpsStep =  TravLifULStepExitBrd THEN
			bTravLifInDSPos := TRUE;
		ELSE
			bTravLifInDSPos	:= FALSE;
		END_IF
		
		CASE eGotoOpsStep OF
			
			TravLifULStepExitBrd: //Only After Fully Opened, Start To Push the Board (To Avoid Shutter Safety Error)
				IF NOT p_bLinkProjLifterMagPlatform AND NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE) THEN
					IF (eTravLifPosGo = TravLifULPosDS1 AND p_bDIOutShutterOpenRS  AND p_bDIOutShutterCloseRS2  AND p_bDIOutShutterCloseRS3 ) OR
						(eTravLifPosGo = TravLifULPosDS2 AND p_bDIOutShutterOpenRS2 AND p_bDIOutShutterCloseRS  AND p_bDIOutShutterCloseRS3 ) OR 
						(eTravLifPosGo = TravLifULPosDS3 AND p_bDIOutShutterOpenRS3 AND p_bDIOutShutterCloseRS  AND p_bDIOutShutterCloseRS2 ) THEN
						eOpsStep	:= eGotoOpsStep;
					END_IF
				ELSE 
					IF p_bDIOutShutterOpenRS THEN
						eOpsStep	:= eGotoOpsStep;
					END_IF	
				END_IF
					
			TravLifULStepTravLifMov:
				IF p_bConvLftSen OR  p_bConvClrSen THEN
					eGotoOpsStep	:= TravULStepClrSensorErrBefTrav;
				ELSIF NOT(p_bConvRgtSen OR  p_bConvMidSen) AND (eTravLifPosGo = TravLifULPosDS1 OR eTravLifPosGo = TravLifULPosDS2 OR eTravLifPosGo = TravLifULPosDS3)THEN 
					eGotoOpsStep	:= TravULStepBrdLostInMiddle; //Added to check if Brd Lost before Traversing
				ELSE
					eOpsStep	:= eGotoOpsStep;
				END_IF
			TravLifULStepUSComm:
				IF  (p_eInletPneuStat = PneuActRet AND p_eInletPneuStatus <> Done ) THEN
					IF  p_eInletPneuStat = PneuActRet AND p_eInletPneuStatus = Done THEN
						eInletPneuAct := PneuActIdle;
					END_IF
				ELSIF ( p_eConvStat = ConvActExitPshr AND (p_eConvStatus <> Done OR NOT(p_bLinkPshrRetSen))) THEN
					IF p_eConvStat = ConvActExitPshr AND (p_eConvStatus = Done OR p_bLinkPshrRetSen)  THEN
						eConvAct := ConvActIdle;
					END_IF
				ELSE
					eOpsStep	:= eGotoOpsStep;
				END_IF
			TravLifULStepMagWidthErr:
		
				IF bCmdUnclmpFlag = FALSE THEN
					bCmdUnclmpFlag := TRUE;
					IF eTravLifPosGo = TravLifULPosDS1 THEN
						bWidthChkErrCmdUnclmp1 := TRUE;
					ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
						bWidthChkErrCmdUnclmp2 := TRUE;
					ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
						bWidthChkErrCmdUnclmp3 := TRUE;
					END_IF
				END_IF
		
				IF p_bPneuUnclmpFBDone THEN
					bCmdUnclmpFlag := FALSE;
			
					p_bOpsMagConvUL1UnclmpDone := FALSE; //bi-dir Adr
					p_bOpsMagConvUL2UnclmpDone := FALSE; //bi-dir Adr
					p_bOpsMagConvUL3UnclmpDone := FALSE; //bi-dir Adr
			
					bWidthChkErrCmdUnclmp1 := FALSE;
					bWidthChkErrCmdUnclmp2 := FALSE;
					bWidthChkErrCmdUnclmp3 := FALSE;
			
					eOpsStep	:= eGotoOpsStep;
				END_IF				
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
		(*********************************
	Check FOR Inlet Conv Sensor Status
	**********************************)
	IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN				
		IF p_bConvLftSen THEN
			bConvInSenOn	:= TRUE;
		END_IF					
		IF bConvInSenOn THEN
			tConvLftSenOff(IN:=NOT p_bConvLftSen);
			IF tConvLftSenOff.Q THEN
				bConvInSenOn		:= FALSE;
				tConvLftSenOff(IN:= FALSE);
			END_IF
		END_IF					
	ELSE						
		IF p_bConvRgtSen THEN
			bConvInSenOn	:= TRUE;
		END_IF	
		IF bConvInSenOn THEN
			tConvRgtSenOff(IN:=NOT p_bConvRgtSen);
			IF tConvRgtSenOff.Q THEN
				bConvInSenOn		:= FALSE;
				tConvRgtSenOff(IN:= FALSE);
			END_IF
		END_IF					
	END_IF
	
	(*********************************
	Check FOR Outlet Conv Sensor Status
	**********************************)
	IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN				
		IF p_bConvRgtSen THEN
			bConvOutSenOn	:= TRUE;
		END_IF					
		IF bConvOutSenOn THEN
			tConvRgtSenOff(IN:=NOT p_bConvRgtSen);
			IF tConvRgtSenOff.Q THEN
				bConvOutSenOn		:= FALSE;
				tConvRgtSenOff(IN:= FALSE);
			END_IF
		END_IF					
	ELSE						
		IF p_bConvLftSen THEN
			bConvOutSenOn	:= TRUE;
		END_IF	
		IF bConvOutSenOn THEN
			tConvLftSenOff(IN:= NOT p_bConvLftSen);
			IF tConvLftSenOff.Q THEN
				bConvOutSenOn		:= FALSE;
				tConvLftSenOff(IN:= FALSE);
			END_IF
		END_IF					
	END_IF
	(*********************************
	Operation Sequence Start Here
	**********************************)	
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			IF bOpsInitDone AND bBypCurtainSenCtrl = FALSE AND p_bCurtainSenPrep AND p_eConvStatus <> Busy AND p_bDIPusherRetRS AND NOT p_bLinkProjLifterMagPlatform  THEN // To Save the Cycle Time For Opening Shutter
				IF NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE) THEN
					IF eTravLifPosGo = TravLifULPosDS1 AND NOT bShut1Closed THEN
						eOutletPneuAct	:= PneuActRet;
						eOutletPneuAct2	:= PneuActExt;
						eOutletPneuAct3 := PneuActExt;
		
						IF (p_eOutletPneuStat = PneuActRet AND p_eOutletPneuStatus = Done) AND
							(p_eOutletPneuStat2 = PneuActExt AND p_eOutletPneuStatus2 = Done) AND
							(p_eOutletPneuStat3 = PneuActExt AND p_eOutletPneuStatus3 = Done) THEN
							
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							eOutletPneuAct3 := PneuActIdle;
							
							bShut1Closed	:= TRUE;
							bShut2Closed	:= FALSE;
							bShut3Closed	:= FALSE;
							
						END_IF
					
					END_IF
					
					IF eTravLifPosGo = TravLifULPosDS2 AND NOT bShut2Closed THEN
						eOutletPneuAct2 := PneuActRet;
						eOutletPneuAct	:= PneuActExt;
						eOutletPneuAct3 := PneuActExt;
		
						
						IF (p_eOutletPneuStat = PneuActExt AND p_eOutletPneuStatus = Done) AND
							(p_eOutletPneuStat2 = PneuActRet AND p_eOutletPneuStatus2 = Done) AND
							(p_eOutletPneuStat3 = PneuActExt AND p_eOutletPneuStatus3 = Done) THEN
							
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							eOutletPneuAct3 := PneuActIdle;
							
							bShut1Closed	:= FALSE;
							bShut2Closed	:= TRUE;
							bShut3Closed	:= FALSE;
							
						END_IF
						
					END_IF
					
					IF eTravLifPosGo = TravLifULPosDS3 AND NOT bShut3Closed THEN
						eOutletPneuAct3 := PneuActRet;
						eOutletPneuAct  := PneuActExt;
						eOutletPneuAct2 := PneuActExt;
	
						
						IF (p_eOutletPneuStat = PneuActExt AND p_eOutletPneuStatus = Done) AND
							(p_eOutletPneuStat2 = PneuActExt AND p_eOutletPneuStatus2 = Done) AND
							(p_eOutletPneuStat3 = PneuActRet AND p_eOutletPneuStatus3 = Done) THEN
							
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							eOutletPneuAct3 := PneuActIdle;
							
							bShut1Closed	:= FALSE;
							bShut2Closed	:= FALSE;
							bShut3Closed	:= TRUE;
							
						END_IF
					END_IF 
				ELSE //If Bypass Curtain with only one control outlet shutter 
					IF (eTravLifPosGo = TravLifULPosDS3 OR eTravLifPosGo = TravLifULPosDS2 OR eTravLifPosGo = TravLifULPosDS3)  AND NOT(p_bDIOutShutterOpenRS) THEN
							eOutletPneuAct	:= PneuActRet;
							IF (p_eOutletPneuStat = PneuActRet AND p_eOutletPneuStatus = Done) THEN
								eOutletPneuAct	:= PneuActIdle;
								bShut1Closed	:= TRUE;
							END_IF
					END_IF
				END_IF
			END_IF
			
			IF (eOpsStep = TravLifULStepUSComm OR eOpsStep = TravLifULStepEntBrd OR eOpsStep = TravLifULStepTravLifMov OR eOpsStep = TravLifULStepDSSigWait) 
				AND (bBypCurtainSenCtrl 
				OR (p_bNtParamProjOutletShut2Prep = FALSE  AND p_bNtParamProjOutletShut3Prep = FALSE AND p_bCurtainSenPrep = FALSE)) //for condition where no safety curtain + one outlet control
				AND NOT p_bLinkProjLifterMagPlatform THEN //
				IF NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE) THEN
					IF (NOT p_bDIOutShutterCloseRS OR NOT p_bDIOutShutterCloseRS2 OR NOT p_bDIOutShutterCloseRS3)  THEN
						eOutletPneuAct   := PneuActExt;
						eOutletPneuAct2  := PneuActExt;
						eOutletPneuAct3  := PneuActExt;
					END_IF
				ELSE
					IF (NOT p_bDIOutShutterCloseRS ) THEN
						eOutletPneuAct   := PneuActExt;
					END_IF
				END_IF
			END_IF	
				
				
			CASE eOpsStep OF
					
				TravLifULStepInitConv:
					sStepTxt	:= 'Initializing Pusher Conveyor';
					
					eConvAct	:= ConvActInitPshr;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActInitPshr THEN
						IF p_bConvLftSen THEN
							bBrdOnSen	:= TRUE;
						END_IF
							
						IF bBrdOnSen THEN
							IF NOT p_bConvLftSen THEN
								eConvAct		:= ConvActIdle;
								eGotoOpsStep	:= TravLifULStepInitInOutPneuCls;
							END_IF
						ELSE
								eGotoOpsStep	:= TravLifULStepInitInOutPneuCls;
						END_IF
						bPaused	:= p_bStop OR p_bStep;	
					ELSE	
						//Switch To Init Inlet Pnue Close
						//Board Pass Through Inlet Sensor
						IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN
							
							IF p_bConvLftSen THEN
								bBrdOnSen	:= TRUE;
							END_IF
							
							IF bBrdOnSen THEN
								IF NOT p_bConvLftSen AND NOT (p_bInletPneuCls AND p_bStopperBlk1 AND p_bStopperBlk2 AND p_bStopperBlk3) THEN
									bBrdOnSen		:= FALSE;
									eGotoOpsStep	:= TravLifULStepInitInletPneuCls;
								END_IF
							END_IF
							
						ELSE
							
							IF p_bConvRgtSen THEN
								bBrdOnSen	:= TRUE;
							END_IF
							
							IF bBrdOnSen THEN
								IF NOT p_bConvRgtSen AND NOT (p_bInletPneuCls AND p_bStopperBlk1 AND p_bStopperBlk2 AND p_bStopperBlk3) THEN
									bBrdOnSen		:= FALSE;
									eGotoOpsStep	:= TravLifULStepInitInletPneuCls;
								END_IF
							END_IF
							
						END_IF
						
					END_IF
					
					// Ent board alarm
					tEntBoardTimoutErr(IN:= bConvInSenOn AND NOT p_bDIInShutterCloseRS);
					IF tEntBoardTimoutErr.Q THEN
						eGotoOpsStep	:= TravULStepTranInBrdStuckErr;
					END_IF
					
				TravLifULStepInitInletPneuCls://bnd
					sStepTxt	:= 'Initializing Inlet Pneumatic Closing';
					
					IF bConvInSenOn = FALSE THEN 
						eStopperAct1		:= PneuActExt;
						eStopperAct2		:= PneuActExt;
						eStopperAct3		:= PneuActExt;
					END_IF
					
					
					IF ((bConvInSenOn = FALSE AND p_bConvHvBrd) AND ((p_bTravAPosDiff AND p_bLifterAPosDiff) AND (p_bLifterBPosDiff AND p_bTravBPosDiff))) 
						OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bTravAPosDiff AND p_bTravBPosDiff)
						OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bLifterAPosDiff AND p_bLifterBPosDiff)
						OR (bConvInSenOn = FALSE AND p_bConvHvBrd = FALSE) 
						THEN 
						
						IF p_bInShutDis THEN
							eInletPneuAct	:= PneuActRet;
						ELSE
							eInletPneuAct	:= PneuActExt;
						END_IF
						
						bSkipCloseInletShutter := FALSE;
					ELSE
						bSkipCloseInletShutter := TRUE;
					END_IF

					
					IF ((p_eInletPneuStatus = Done AND (p_eInletPneuStat = PneuActExt OR p_eInletPneuStat = PneuActRet))
						AND (p_eStopperStatus1 = Done AND p_eStopperStat1 = PneuActExt) 
						AND (p_eStopperStatus2 = Done AND p_eStopperStat2 = PneuActExt) 
						AND (p_eStopperStatus3 = Done AND p_eStopperStat3 = PneuActExt))
						OR bSkipCloseInletShutter THEN
						
						eInletPneuAct		:= PneuActIdle;
						eStopperAct1		:= PneuActIdle;
						eStopperAct2		:= PneuActIdle;
						eStopperAct3		:= PneuActIdle;
						bSkipCloseInletShutter := FALSE;
						eGotoOpsStep	:= TravLifULStepInitConv;
					END_IF
					
				
					
				TravLifULStepInitInOutPneuCls://BND
					sStepTxt	:= 'Initializing Inlet&Outlet Pneumatic Closing';
					
					IF NOT p_bLinkProjLifterMagPlatform THEN
						IF bConvInSenOn = FALSE THEN
							eStopperAct1		:= PneuActExt;
							eStopperAct2		:= PneuActExt;
							eStopperAct3		:= PneuActExt;
						END_IF
						
						IF p_bConvClrSen = FALSE THEN
							eOutletPneuAct	:= PneuActExt;
							eOutletPneuAct2	:= PneuActExt;
							eOutletPneuAct3	:= PneuActExt;
						END_IF
						
						IF ((bConvInSenOn = FALSE AND p_bConvHvBrd) AND ((p_bTravAPosDiff AND p_bLifterAPosDiff) AND (p_bLifterBPosDiff AND p_bTravBPosDiff))) 
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bTravAPosDiff AND p_bTravBPosDiff)
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bLifterAPosDiff AND p_bLifterBPosDiff)
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd = FALSE) THEN//bnd
							
							IF p_bInShutDis THEN
								eInletPneuAct	:= PneuActRet;
							ELSE
								eInletPneuAct	:= PneuActExt;
							END_IF
							
							bSkipCloseInletShutter := FALSE;
						ELSE
							bSkipCloseInletShutter := TRUE;
						END_IF
						
	//					IF ((p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt)OR bSkipCloseInletShutter) AND (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) THEN
	//						eInletPneuAct	:= PneuActIdle;
	//						eOutletPneuAct	:= PneuActIdle;
	//						bSkipCloseInletShutter := FALSE;
	//						IF p_bConvHvBrd = FALSE THEN
	//							eGotoOpsStep	:= TravLifULStepInitAWTravLif;
	//						ELSE
	//							eGotoOpsStep	:= TravLifULStepInitTravLif;
	//						END_IF
	//						
	//						bPaused	:= p_bStop OR p_bStep;
						//					END_IF
						
						// Ent board alarm
						tEntBoardTimoutErr(IN:= bConvInSenOn AND NOT p_bDIInShutterCloseRS);
						IF tEntBoardTimoutErr.Q THEN
							eGotoOpsStep	:= TravULStepTranInBrdStuckErr;
						END_IF
						
						//Clear Sensor Detected
						IF p_bConvClrSen THEN
							eGotoOpsStep	:= TravULStepClrSensorErr;
						END_IF

						IF bSkipCloseInletShutter THEN
							IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) OR 
								(p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) OR 
								(p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt)THEN
								
								eOutletPneuAct	:= PneuActIdle;
								eOutletPneuAct2	:= PneuActIdle;
								eOutletPneuAct3	:= PneuActIdle;
								
								IF p_bConvHvBrd = FALSE THEN
									eGotoOpsStep	:= TravLifULStepUSSigWait;
								ELSE
									
									eGotoOpsStep	:= TravLifULStepInletPneuCls;
								END_IF
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
							
						ELSE
							IF ((p_eInletPneuStatus = Done AND (p_eInletPneuStat = PneuActExt OR p_eInletPneuStat = PneuActRet))
								AND ((p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt)
								OR (p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt)
								OR (p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt))
								AND (p_eStopperStatus1 = Done AND p_eStopperStat1 = PneuActExt) 
								AND (p_eStopperStatus2 = Done AND p_eStopperStat2 = PneuActExt) 
								AND (p_eStopperStatus3 = Done AND p_eStopperStat3 = PneuActExt))
								OR bSkipCloseInletShutter THEN 
								eInletPneuAct	:= PneuActIdle;
								eOutletPneuAct	:= PneuActIdle;
								eOutletPneuAct2	:= PneuActIdle;
								eOutletPneuAct3	:= PneuActIdle;
								eStopperAct1		:= PneuActIdle;
								eStopperAct2		:= PneuActIdle;
								eStopperAct3		:= PneuActIdle;
								
								IF p_bConvHvBrd = FALSE THEN
									bSkipCloseInletShutter := FALSE;
									eGotoOpsStep	:= TravLifULStepInitAWTravLif;;
								ELSE
									bSkipCloseInletShutter := FALSE;
									eGotoOpsStep	:= TravLifULStepInitTravLif;
								END_IF
							
								bPaused	:= p_bStop OR p_bStep; //Update For Curtain Sensor 20220926
							END_IF
						END_IF
					
					ELSE
						IF bConvInSenOn = FALSE THEN
							eStopperAct1		:= PneuActExt;
							eStopperAct2		:= PneuActExt;
							eStopperAct3		:= PneuActExt;
						END_IF
						
						IF p_bConvClrSen = FALSE THEN
							eOutletPneuAct	:= PneuActExt;
						END_IF
						
						IF ((bConvInSenOn = FALSE AND p_bConvHvBrd) AND ((p_bTravAPosDiff AND p_bLifterAPosDiff) AND (p_bLifterBPosDiff AND p_bTravBPosDiff))) 
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bTravAPosDiff AND p_bTravBPosDiff)
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd AND p_bLifterAPosDiff AND p_bLifterBPosDiff)
							OR (bConvInSenOn = FALSE AND p_bConvHvBrd = FALSE) THEN//bnd
							
							IF p_bInShutDis THEN
								eInletPneuAct	:= PneuActRet;
							ELSE
								eInletPneuAct	:= PneuActExt;
							END_IF
							
							bSkipCloseInletShutter := FALSE;
						ELSE
							bSkipCloseInletShutter := TRUE;
						END_IF
						
						
						// Ent board alarm
						tEntBoardTimoutErr(IN:= bConvInSenOn AND NOT p_bDIInShutterCloseRS);
						IF tEntBoardTimoutErr.Q THEN
							eGotoOpsStep	:= TravULStepTranInBrdStuckErr;
						END_IF
						
						// Ext board alarm
						tExitBoardTimoutErr(IN:= p_bConvClrSen AND NOT p_bDIOutShutterCloseRS);
						IF tExitBoardTimoutErr.Q THEN
							eGotoOpsStep	:= TravULStepTranOutBrdStuckErr;
						END_IF 
						
						//Clear Sensor Detected
						IF p_bConvClrSen THEN
							eGotoOpsStep	:= TravULStepClrSensorErr;
						END_IF
				
						IF bSkipCloseInletShutter THEN
							IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) THEN
								
								eOutletPneuAct	:= PneuActIdle;
								
								IF p_bConvHvBrd = FALSE THEN
									eGotoOpsStep	:= TravLifULStepUSSigWait;
								ELSE
									
									eGotoOpsStep	:= TravLifULStepInletPneuCls;
								END_IF
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
							
						ELSE
							IF ((p_eInletPneuStatus = Done AND (p_eInletPneuStat = PneuActExt OR p_eInletPneuStat = PneuActRet))
								AND (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt)
								AND (p_eStopperStatus1 = Done AND p_eStopperStat1 = PneuActExt) 
								AND (p_eStopperStatus2 = Done AND p_eStopperStat2 = PneuActExt) 
								AND (p_eStopperStatus3 = Done AND p_eStopperStat3 = PneuActExt))
								OR bSkipCloseInletShutter THEN 
								eInletPneuAct	:= PneuActIdle;
								eOutletPneuAct	:= PneuActIdle;
								eStopperAct1		:= PneuActIdle;
								eStopperAct2		:= PneuActIdle;
								eStopperAct3		:= PneuActIdle;
								
								IF p_bConvHvBrd = FALSE THEN
									bSkipCloseInletShutter := FALSE;
									eGotoOpsStep	:= TravLifULStepInitAWTravLif;;
								ELSE
									bSkipCloseInletShutter := FALSE;
									eGotoOpsStep	:= TravLifULStepInitTravLif;
								END_IF
							
								bPaused	:= p_bStop OR p_bStep; //Update For Curtain Sensor 20220926
							END_IF
						END_IF
					END_IF	
						
				TravLifULStepInitTravLif:
					sStepTxt	:= 'Initializing Traverser And Lifter Homing';
					
					
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) THEN
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
						eGotoOpsStep	:= TravLifULStepDSSigWait;
						
						bPaused	:= p_bStop OR p_bStep; //Update For Curtain Sen 20220926
					END_IF
					
				TravLifULStepInitAWTravLif:
					sStepTxt	:= 'Initializing Auto Width, Traverser And Lifter Homing';
					
					eAWAct		:= AWActGoWidthOff;
					eAWPushOrPullerAct := AWActGoWidthOff;
					eTravAct	:= TravActFullHm;
					eLifAct		:= LifterActFullHm;
					
					IF (p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) 
						AND (p_eAWPushOrPullerStatus = Done AND p_eAWPushOrPullerStat = AWActGoWidthOff) 
						AND (p_eTravStatus = Done AND p_eTravStat = TravActFullHm) 
						AND (p_eLifStatus = Done AND p_eLifStat = LifterActFullHm) 
					THEN
						eAWAct		:= AWActIdle;
						eAWPushOrPullerAct := AWActIdle;
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;

						IF p_bInShutDis THEN
							eGotoOpsStep	:= 	TravLifULStepInletPneuOpn;
							bInitInletPneu := TRUE;
						ELSE
							eGotoOpsStep	:= TravLifULStepUSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep; //Update For Curtain Sensor 20220926
					END_IF
					
				TravLifULStepAWMov:
					sStepTxt	:= 'Moving Auto Width';
					
					eAWAct				:= AWActGoWidthOff;
					eAWPushOrPullerAct := AWActGoWidthOff;
					
					IF (p_eAWStatus = Done AND p_eAWStat = AWActGoWidthOff) 
						AND (p_eAWPushOrPullerStatus = Done AND p_eAWPushOrPullerStat = AWActGoWidthOff) 
						THEN
						eAWAct			:= AWActIdle;
						eAWPushOrPullerAct	:= AWActIdle;
						eGotoOpsStep	:= TravLifULStepUSSigWait;
						
						bPaused	:= p_bStop OR p_bStep ; //Update For Curtain Sensor 20220926
					END_IF
					
				TravLifULStepTravLifMov:
					sStepTxt	:= 'Moving Traverser And Lifter';
					
					IF eTravLifPosGo = TravLifULPosUS1 THEN
						eTravAct	:= TravActGoAPos;
						eLifAct		:= LifterActGoAPos;
						
					ELSIF eTravLifPosGo = TravLifULPosUS2 THEN
						eTravAct	:= TravActGoBPos;
						eLifAct		:= LifterActGoBPos;
						
					ELSIF eTravLifPosGo = TravLifULPosUS3 THEN
						eTravAct	:= TravActGoCPos;
						eLifAct		:= LifterActGoCPos;
						
					ELSIF eTravLifPosGo = TravLifULPosDS1 THEN
						eTravAct	:= TravActGoDPos;
						eLifAct		:= LifterActGoASltPos;
					
					ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
						eTravAct	:= TravActGoEPos;
						eLifAct		:= LifterActGoBSltPos;
						
					ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
						eTravAct	:= TravActGoFPos;
						eLifAct		:= LifterActGoCSltPos;
						
					ELSIF eTravLifPosGo = TravLifULPosInvalid THEN
						IF p_bConvHvBrd = FALSE THEN
							eGotoOpsStep	:= TravLifULStepUSSigWait;
						ELSE
							eGotoOpsStep	:= TravLifULStepDSSigWait;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					IF ((p_eTravStatus = Done AND p_eTravStat = TravActGoAPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoAPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoBPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoCPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoDPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoASltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoEPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoBSltPos))
						OR ((p_eTravStatus = Done AND p_eTravStat = TravActGoFPos) AND (p_eLifStatus = Done AND p_eLifStat = LifterActGoCSltPos)) THEN
						
						eTravAct	:= TravActIdle;
						eLifAct		:= LifterActIdle;
						
						IF p_bConvHvBrd = FALSE THEN
//							eGotoOpsStep	:= TravLifULStepUSSigRechk;
							IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff = FALSE THEN
								eGotoOpsStep	:= TravLifULStepInletPneuOpn;
							ELSE
								eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
							END_IF
							
						ELSE
							IF NOT p_bLinkProjLifterMagPlatform  AND NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE) THEN
								IF p_bDSAllow AND p_bLocalDSRdy THEN
									IF eTravLifPosGo = TravLifULPosDS1 THEN
										eOutletPneuAct	:= PneuActRet;
									ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
										eOutletPneuAct2	:= PneuActRet;
									ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
										eOutletPneuAct3	:= PneuActRet;
									END_IF
								END_IF
								eGotoOpsStep	:= TravLifULStepDSSigRechk;
							ELSE
								IF  (NOT(p_bLinkProjLifterMagPlatform) AND  p_bLocalDSRdy AND p_bDSAllow)OR p_bLinkProjLifterMagPlatform THEN
									eOutletPneuAct	:= PneuActRet;
								END_IF
								eGotoOpsStep	:= TravLifULStepDSSigRechk;
							END_IF
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					IF eTravLifPosGo = TravLifULPosDS1
						OR eTravLifPosGo = TravLifULPosDS2 
						OR eTravLifPosGo = TravLifULPosDS3 THEN
						tTravLiftInPos(IN:= p_bTravPosDiff = FALSE AND p_bLifterBtmPosDiff = FALSE);
							IF tTravLiftInPos.Q THEN
								
								IF NOT p_bLinkProjLifterMagPlatform AND NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE)  THEN
									IF p_bDSAllow AND p_bLocalDSRdy THEN
										IF eTravLifPosGo = TravLifULPosDS1 THEN
											eOutletPneuAct	:= PneuActRet;
										ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
											eOutletPneuAct2	:= PneuActRet;
										ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
											eOutletPneuAct3	:= PneuActRet;
										END_IF
									END_IF
									eGotoOpsStep	:= TravLifULStepDSSigRechk;
									bTravLifInDSPos := TRUE;
							   ELSE
									IF  (NOT(p_bLinkProjLifterMagPlatform) AND  p_bLocalDSRdy AND p_bDSAllow)OR p_bLinkProjLifterMagPlatform THEN
										eOutletPneuAct	:= PneuActRet;
									END_IF
									eGotoOpsStep	:= TravLifULStepDSSigRechk;
									bTravLifInDSPos := TRUE;
								END_IF

								eTravAct	:= TravActIdle;
								eLifAct		:= LifterActIdle;
							END_IF
					END_IF
					
						
					IF (eTravLifPosGo = TravLifULPosUS1 AND p_bTravAPosDiff = FALSE)
						OR (eTravLifPosGo = TravLifULPosUS2 AND p_bTravBPosDiff = FALSE)
						OR eTravLifPosGo = TravLifULPosUS3 THEN
						tTravLiftInPos(IN:= p_bTravPosDiff = FALSE AND p_bLifterBtmPosDiff = FALSE);
						IF tTravLiftInPos.Q THEN
							eInletPneuAct	:= PneuActRet;
							bTravLifInDSPos := TRUE;
						END_IF
					END_IF
					
				TravLifULStepUSSigWait:
					sStepTxt	:= 'Waiting For Upstream Signal';
					
					a_bPosAllwSigOn[1]	:= bLocalUSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalUSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalUSRdy3;
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiUSPriority[udi];
						//Enable
						IF tyParamTravLif.a_bUSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
						
					END_FOR
					
					udiPosAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						//Enable + Signal On
						IF a_udiPosAllwSum[udi] >= 3000 THEN
							
							IF udiPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] < a_udiPosAllwSum[udiPosAllwGo] THEN
									udiPosAllwGo	:= udi;
								END_IF
							ELSE
								udiPosAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiPosAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							//Enable (Single Input)
							IF a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 THEN
								
								IF udiPosAllwGo = 99 THEN
									udiPosAllwGo	:= udi;
								ELSE
									udiPosAllwGo	:= 99;
									EXIT;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF

					// udiPosAllwGo := p_udiOpsUSPosAllwGo; undertesting

					IF p_bAWWidthPosDiff = TRUE THEN
					//	eGotoOpsStep	:= TravLifULStepAWMov;
						eGotoOpsStep	:= TravLifULStepInletPneuCls;
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF (p_bUSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
						eTravLifPosGo	:= udiPosAllwGo;
					//	eGotoOpsStep	:= TravLifULStepTravLifMov;
						IF bSkipCloseInletShutter THEN
							eGotoOpsStep	:= TravLifULStepUSSigRechk;
						ELSE
							eGotoOpsStep	:= TravLifULStepTravLifMov;
						END_IF
						
						IF eTravLifPosGo = TravLifULPosUS1 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod1);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy1);
							p_bLocalUSGdRdy ACCESS ADR(bLocalUSGdRdy1);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct1);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat1);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus1);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy1);
							p_bLocalUSSMEMAGdBrdRdy ACCESS ADR(p_bUSSMEMAGdBrdRdy1);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting1);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart1);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop1);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy1);
							p_bLocalUSHermesUSGdRdy ACCESS ADR(p_bUSHermesUSGdRdy1);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting1);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport1);
							
							p_eStopperAct ACCESS ADR(eStopperAct1);
							p_eStopperStat ACCESS ADR(p_eStopperStat1);
							p_eStopperStatus ACCESS ADR(p_eStopperStatus1);
							p_bStopperBlk ACCESS ADR(p_bStopperBlk1);
							
						ELSIF eTravLifPosGo = TravLifULPosUS2 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod2);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy2);
							p_bLocalUSGdRdy ACCESS ADR(bLocalUSGdRdy2);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct2);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat2);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus2);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy2);
							p_bLocalUSSMEMAGdBrdRdy ACCESS ADR(p_bUSSMEMAGdBrdRdy2);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting2);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart2);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop2);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy2);
							p_bLocalUSHermesUSGdRdy ACCESS ADR(p_bUSHermesUSGdRdy2);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting2);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport2);
							
							p_eStopperAct ACCESS ADR(eStopperAct2);
							p_eStopperStat ACCESS ADR(p_eStopperStat2);
							p_eStopperStatus ACCESS ADR(p_eStopperStatus2);
							p_bStopperBlk ACCESS ADR(p_bStopperBlk2);
							
						ELSIF eTravLifPosGo = TravLifULPosUS3 THEN
							p_eLocalUSCommMod ACCESS ADR(p_eUSCommMod3);
							
							p_bLocalUSRdy ACCESS ADR(bLocalUSRdy3);
							p_bLocalUSGdRdy ACCESS ADR(bLocalUSGdRdy3);
							
							p_eLocalUSSMEMAAct ACCESS ADR(eUSSMEMAAct3);
							p_eLocalUSSMEMAStat ACCESS ADR(p_eUSSMEMAStat3);
							p_eLocalUSSMEMAStatus ACCESS ADR(p_eUSSMEMAStatus3);
							p_bLocalUSSMEMAUSRdy ACCESS ADR(p_bUSSMEMAUSRdy3);
							p_bLocalUSSMEMAGdBrdRdy ACCESS ADR(p_bUSSMEMAGdBrdRdy3);
							p_bLocalUSSMEMATransporting ACCESS ADR(p_bUSSMEMATransporting3);
							p_bLocalUSSMEMAConvStart ACCESS ADR(p_bUSSMEMAConvStart3);
							p_bLocalUSSMEMAConvStop ACCESS ADR(p_bUSSMEMAConvStop3);
							
							p_bLocalUSHermesUSRdy ACCESS ADR(p_bUSHermesUSRdy3);
							p_bLocalUSHermesUSGdRdy ACCESS ADR(p_bUSHermesUSGdRdy3);
							p_bLocalUSHermesTransporting ACCESS ADR(p_bUSHermesTransporting3);
							p_bLocalUSHermesStopTransport ACCESS ADR(p_bUSHermesStopTransport3);
							
							p_eStopperAct ACCESS ADR(eStopperAct3);
							p_eStopperStat ACCESS ADR(p_eStopperStat3);
							p_eStopperStatus ACCESS ADR(p_eStopperStatus3);
							p_bStopperBlk ACCESS ADR(p_bStopperBlk3);
							
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					ELSE
						eTravLifPosGo	:= TravLifULPosInvalid;
						
						bPaused	:= p_bStop;
					END_IF
					
				TravLifULStepUSSigRechk:
					sStepTxt	:= 'Rechecking Upstream Signal';
					bSkipCloseInletShutter := FALSE;
					
					IF p_bAWWidthPosDiff = TRUE THEN
						//	eGotoOpsStep	:= TravLifULStepAWMov;
						eGotoOpsStep	:= TravLifULStepInletPneuCls;
					ELSIF p_bUSAllow = FALSE THEN
						eGotoOpsStep	:= TravLifULStepUSSigWait;
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						eGotoOpsStep	:= TravLifULStepInletPneuOpn;
					ELSE
						IF p_bLocalUSRdy = TRUE THEN
							eGotoOpsStep	:= TravLifULStepInletPneuOpn;
						ELSE
							IF p_eULMod >= ULModUnloadDualLnAB THEN
								eGotoOpsStep	:= TravLifULStepInletPneuCls;
							ELSE
								eGotoOpsStep	:= TravLifULStepUSSigWait;
							END_IF
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				TravLifULStepInletPneuOpn:
					sStepTxt	:= 'Opening Inlet Pneumatic';
					
					eInletPneuAct	:= PneuActRet;
					
					IF p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActRet THEN
						eInletPneuAct	:= PneuActIdle;
//						eGotoOpsStep	:= TravLifULStepUSSigRechkTwice;
						
						IF p_bTravAPosDiff = FALSE  AND p_bLifterAPosDiff = FALSE AND bInitInletPneu = FALSE THEN
							eGotoOpsStep	:= TravLifULStepUSComm;
						ELSE
							eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
							bInitInletPneu := FALSE;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				TravLifULStepUSSigRechkTwice:
					sStepTxt	:= 'Rechecking Upstream Signal Twice';
					
					IF ((p_bAWWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE))AND bConvInSenOn = FALSE THEN
						eGotoOpsStep	:= TravLifULStepInletPneuCls;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
						
						//Non-Buffer Mode
						IF p_bNonBffrMod = TRUE THEN
							IF p_bBypsGdBadBrd AND ((NOT tyParamTravLif.a_bDSDis[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND bLocalDSRdy3)) THEN
								eGotoOpsStep	:= TravLifULStepUSComm;		
								bPaused	:= p_bStop OR p_bStep;
								
							ELSIF p_bLocalUSGdRdy AND ((NOT tyParamTravLif.a_bDSDis[1] AND NOT tyParamTravLif.a_bMagRej[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND NOT tyParamTravLif.a_bMagRej[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND NOT tyParamTravLif.a_bMagRej[3] AND bLocalDSRdy3)) THEN
								eGotoOpsStep	:= TravLifULStepUSComm;		
								bPaused	:= p_bStop OR p_bStep;
								
							ELSIF NOT p_bLocalUSGdRdy AND ((NOT tyParamTravLif.a_bDSDis[1] AND tyParamTravLif.a_bMagRej[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND tyParamTravLif.a_bMagRej[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND tyParamTravLif.a_bMagRej[3] AND bLocalDSRdy3)) THEN
								eGotoOpsStep	:= TravLifULStepUSComm;
								bPaused	:= p_bStop OR p_bStep;
							ELSE
								bPaused	:= p_bStop;
							END_IF
						ELSE
							IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff = FALSE THEN
								eGotoOpsStep	:= TravLifULStepUSComm;
							ELSE
								eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					ELSE
						
						IF p_bLocalUSRdy = TRUE THEN
							
							//Non-Buffer Mode
							IF p_bNonBffrMod = TRUE THEN
								IF p_bBypsGdBadBrd AND ((NOT tyParamTravLif.a_bDSDis[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND bLocalDSRdy3)) THEN
									eGotoOpsStep	:= TravLifULStepUSComm;	
									bPaused	:= p_bStop OR p_bStep;
									
								ELSIF p_bLocalUSGdRdy AND ((NOT tyParamTravLif.a_bDSDis[1] AND NOT tyParamTravLif.a_bMagRej[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND NOT tyParamTravLif.a_bMagRej[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND NOT tyParamTravLif.a_bMagRej[3] AND bLocalDSRdy3)) THEN
									eGotoOpsStep	:= TravLifULStepUSComm;		
									bPaused	:= p_bStop OR p_bStep;
									
								ELSIF NOT p_bLocalUSGdRdy AND ((NOT tyParamTravLif.a_bDSDis[1] AND tyParamTravLif.a_bMagRej[1] AND bLocalDSRdy1) OR (NOT tyParamTravLif.a_bDSDis[2] AND tyParamTravLif.a_bMagRej[2] AND bLocalDSRdy2) OR (NOT tyParamTravLif.a_bDSDis[3] AND tyParamTravLif.a_bMagRej[3] AND bLocalDSRdy3)) THEN
									eGotoOpsStep	:= TravLifULStepUSComm;
									bPaused	:= p_bStop OR p_bStep;
								ELSE
									bPaused	:= p_bStop;
								END_IF
							ELSE
								IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff = FALSE THEN
									eGotoOpsStep	:= TravLifULStepUSComm;
								ELSE
									eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
								END_IF
								bPaused	:= p_bStop OR p_bStep;
							END_IF
							
						ELSE
							
							eGotoOpsStep	:= TravLifULStepInletPneuCls;
							
							bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
							
						END_IF
						
					END_IF
				
					
			
				TravLifULStepUSMagWidthChk:
					sStepTxt	:= 'Checking Magazine Width';
					
					fbWidthChkSenOnTim(IN:= p_bMagWidthChkSenOn);
					fbWidthChkSenOffTim(IN:= p_bMagWidthChkSenOn = FALSE);
					IF fbWidthChkSenOnTim.Q THEN
						eGotoOpsStep	:= TravLifULStepUSComm;
					ELSIF fbWidthChkSenOffTim.Q THEN
						eGotoOpsStep	:= TravLifULStepMagWidthErr;
					END_IF
					
					
				TravLifULStepStopperRet:
					sStepTxt	:= 'Stopper Unblock';
					p_eStopperAct		:= PneuActRet;
						
					IF (p_eStopperStatus = Done AND p_eStopperStat = PneuActRet)
						THEN
			
						p_eStopperAct	:= PneuActIdle;
						IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff = FALSE THEN
							eGotoOpsStep	:= TravLifULStepUSComm;
						ELSE
							eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;// For Curtain Sensor Update 20220926; 
					END_IF	
					
					
				TravLifULStepStopperExt:
					sStepTxt	:= 'Stopper Unblock';
					p_eStopperAct		:= PneuActExt;
						
					IF (p_eStopperStatus = Done AND p_eStopperStat = PneuActExt)
						THEN
			
						p_eStopperAct	:= PneuActIdle;
						IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff THEN
							IF p_bUSAllow = FALSE OR (p_bAWWidthPosDiff = TRUE) OR  (p_bAWPushOrPullerWidthPosDiff = TRUE) THEN
								eGotoOpsStep	:=	TravLifULStepInletPneuCls;
							ELSE
								eGotoOpsStep	:= TravLifULStepUSComm;
							END_IF
						ELSE
							IF p_bUSAllow = FALSE OR (p_bAWWidthPosDiff = TRUE) OR  (p_bAWPushOrPullerWidthPosDiff = TRUE) THEN
								eGotoOpsStep	:=	TravLifULStepInletPneuCls;
							ELSE
								eGotoOpsStep	:= TravLifULStepUSSigWait;
							END_IF// To Check the Position // 20221002
						END_IF
						
						bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
					END_IF	
					
				TravLifULStepUSComm:
					sStepTxt	:= 'Communicating Upstream Machine';
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							p_eLocalUSSMEMAAct	:= SMEMAActRun;
								
							IF p_bLocalUSSMEMATransporting = TRUE THEN
								IF p_bStopperBlk THEN
									eGotoOpsStep	:= TravLifULStepStopperRet;
								ELSE
									eGotoOpsStep	:= TravLifULStepEntBrd;
								END_IF
								
							ELSIF (p_bAWWidthPosDiff = TRUE) OR (p_bAWPushOrPullerWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE) OR p_bConvHvBrd THEN
								p_eLocalUSSMEMAAct	:= SMEMAActIdle;
					
								IF p_bStopperBlk THEN
									eGotoOpsStep		:= TravLifULStepInletPneuCls;
								ELSE
									eGotoOpsStep		:= TravLifULStepStopperExt;
								END_IF
								
								bPaused	:= p_bStop OR p_bStep;// For Curtain Sensor Update 20220926;
							
							ELSIF bConvInSenOn = FALSE AND p_bConvHvBrd THEN
								p_eLocalUSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep		:= TravLifULStepInletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
								
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
									bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									
									IF bPaused = TRUE THEN
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
									END_IF
									
								ELSE
									
									IF p_bLocalUSRdy = FALSE OR p_bConvHvBrd THEN
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										eGotoOpsStep		:= TravLifULStepInletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									ELSE
										bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
										
										IF bPaused = TRUE THEN
											p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										END_IF
									END_IF
									
								END_IF
								
							END_IF
							
						McSetCommModHermes:

							IF p_bLocalUSHermesTransporting = TRUE THEN
								IF p_bStopperBlk THEN
									eGotoOpsStep	:= TravLifULStepStopperRet;
								ELSE
									eGotoOpsStep	:= TravLifULStepEntBrd;
								END_IF							
							ELSIF (p_bAWWidthPosDiff = TRUE) OR  (p_bAWPushOrPullerWidthPosDiff = TRUE) OR (p_bUSAllow = FALSE)  THEN
							//	eGotoOpsStep	:= TravLifULStepInletPneuCls;
								eGotoOpsStep		:= TravLifULStepStopperExt;
								
								bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;

							ELSIF bConvInSenOn = FALSE AND p_bConvHvBrd THEN
								p_eLocalUSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep		:= TravLifULStepInletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									
							ELSE
								
								IF a_udiPosAllwSum[udiPosAllwGo] < 2000 THEN	//Enable (Single Input)
									bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									
								ELSE
									
									IF p_bLocalUSRdy = FALSE THEN
										eGotoOpsStep	:= TravLifULStepInletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									ELSE
										bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
				TravLifULStepEntBrd:
					//Switch To Inlet Pneu Close
					//Board Pass Through Inlet Sensor
					IF p_eConvDir = ConvDirLToR OR p_eConvDir = ConvDirLToL THEN
								
						IF p_bConvLftSen 
							OR (p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1)
							OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2)
							THEN
							bBrdOnSen	:= TRUE;
						END_IF
						IF bBrdOnSen= FALSE 
							AND ((p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1) 
							OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2))
							THEN
							eGotoOpsStep	:= TravLifULStepInletPneuOpn;
						END_IF	
						IF bBrdOnSen THEN
						//	IF NOT p_bConvLftSen AND NOT p_bInletPneuCls AND p_bConvRgtSen THEN// BND
							IF NOT p_bConvLftSen 
								AND NOT ((p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1)
										OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2))
								AND NOT p_bInletPneuCls 
								AND p_bConvRgtSen
								THEN
									eGotoOpsStep	:= TravLifULStepInletPneuCls;
									eInletPneuAct	:= PneuActExt;
							END_IF
						END_IF
							
					ELSE
							
						IF p_bConvRgtSen 
							OR (p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1) 
							OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2)
							THEN
							bBrdOnSen	:= TRUE;
						END_IF
						IF bBrdOnSen= FALSE 
							AND ((p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1)
							OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2))
							THEN
							eGotoOpsStep	:= TravLifULStepInletPneuOpn;
						END_IF	
						IF bBrdOnSen THEN
						//	IF NOT p_bConvRgtSen AND NOT p_bInletPneuCls AND p_bConvLftSen THEN//BND
							IF NOT p_bConvRgtSen 
								AND NOT ((p_bConvLineAInletSen AND eTravLifPosGo = TravLifULPosUS1)
										OR (p_bConvLineBInletSen AND eTravLifPosGo = TravLifULPosUS2))
								AND NOT p_bInletPneuCls 
								AND p_bConvLftSen
								THEN
									eGotoOpsStep	:= TravLifULStepInletPneuCls;
									eInletPneuAct	:= PneuActExt;
							END_IF
						END_IF
							
					END_IF
					
					CASE p_eLocalUSCommMod OF
						McSetCommModSMEMA:
							IF p_bLocalUSSMEMATransporting = FALSE THEN
								eConvAct	:= ConvActStop;
								
								IF p_eConvStatus = Done AND p_eConvStat = ConvActStop THEN
								
									IF p_bConvHvBrd = FALSE THEN
										bBrdOnSen			:= FALSE;
										eConvAct			:= ConvActIdle;
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
//										eGotoOpsStep		:= TravLifULStepUSComm; //SERV_NE DVB 26-08-2020 TravLifULStepInletPneuCls
										
										IF p_bTravAPosDiff = FALSE AND p_bLifterAPosDiff = FALSE  THEN
											eGotoOpsStep	:= TravLifULStepUSComm;
										ELSE
											eGotoOpsStep	:= TravLifULStepUSSigWait; // To Check the Position // 20221002
										END_IF
									
									ELSIF p_bInletPneuCls = FALSE AND p_bConvHvBrd = TRUE THEN // SERV_NE DVB 26-08-2020 Added p_bConvHvBrd
										bBrdOnSen		:= FALSE;
										eGotoOpsStep	:= TravLifULStepInletPneuCls;
										p_eLocalUSSMEMAAct	:= SMEMAActIdle; //cut signal to us if have brd 13/9/2023
										
									ELSE
										bBrdOnSen			:= FALSE;
										p_eLocalUSSMEMAAct	:= SMEMAActIdle;
										eConvAct			:= ConvActIdle;
										eGotoOpsStep		:= TravLifULStepDSSigWait;
									END_IF
								
									bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
								END_IF
								
							ELSE
								
								IF p_bLocalUSSMEMAConvStart THEN
									sStepTxt	:= 'Pusher Conveyor Entering Board';
									
									eConvAct	:= ConvActEnt;
								END_IF
								
								IF p_bLocalUSSMEMAConvStop THEN
									sStepTxt	:= 'Pusher Conveyor Stopping';
									
									eConvAct	:= ConvActStop;
									bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
								END_IF 
								
								IF (p_eLocalUSSMEMAStatus = Done AND p_eLocalUSSMEMAStat = SMEMAActRun) 
									THEN
									//OR (p_bConvHvBrd = TRUE AND bConvOutSenOn)
									
									
									IF p_bInletPneuCls = FALSE AND p_bConvHvBrd = TRUE THEN // SERV_NE DVB 26-08-2020 Added p_bConvHvBrd
										bBrdOnSen		:= FALSE;
										eGotoOpsStep	:= TravLifULStepInletPneuCls;
									ELSE
									
									//IF (p_bConvHvBrd = TRUE AND bConvOutSenOn) THEN	
										IF (p_eConvStatus = Done AND p_eConvStat = ConvActEnt) AND NOT p_bConvClrSen THEN
											p_eLocalUSSMEMAAct	:= SMEMAActIdle; 
											bBrdOnSen			:= FALSE;
											eConvAct			:= ConvActIdle;
											eGotoOpsStep	:= TravLifULStepDSSigWait; 
											
											bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
										END_IF	
									END_IF
									
								END_IF
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalUSHermesTransporting = TRUE THEN
								sStepTxt	:= 'Pusher Conveyor Entering Board';
								eConvAct	:= ConvActEnt;
							END_IF
							
							IF p_bLocalUSHermesStopTransport = TRUE THEN
								sStepTxt	:= 'Pusher Conveyor Stopping';
								eConvAct	:= ConvActStop;
								//when transport finished call shutter
								IF p_bInletPneuCls = FALSE THEN
									eGotoOpsStep	:= TravLifULStepInletPneuCls; //added
								END_IF
							END_IF
							
							IF p_bLocalUSHermesTransporting = FALSE THEN
								
								IF p_eConvStat = ConvActStop THEN
									
									IF p_eConvStatus = Done THEN
										bBrdOnSen		:= FALSE;
										eConvAct		:= ConvActIdle;
										eGotoOpsStep	:= TravLifULStepInletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									END_IF
									
								ELSIF p_eConvStat = ConvActEnt THEN
									
									IF p_eConvStatus = Done THEN
										IF p_bInletPneuCls = FALSE THEN
											bBrdOnSen		:= FALSE;
											eGotoOpsStep	:= TravLifULStepInletPneuCls;
										ELSIF NOT p_bConvClrSen THEN
											bBrdOnSen		:= FALSE;
											eConvAct		:= ConvActIdle;
											eGotoOpsStep	:= TravLifULStepDSSigWait; 
											
										END_IF
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
					tEntBoardTimoutErr(IN:= p_bConvClrSen);
					IF tEntBoardTimoutErr.Q THEN
						eGotoOpsStep	:= TravULStepClrSensorErr;
					END_IF
					
				TravLifULStepInletPneuCls:
					sStepTxt	:= 'Closing Inlet Pneumatic';//bnd
						
					IF bConvInSenOn = FALSE OR p_bAWWidthPosDiff OR  (p_bAWPushOrPullerWidthPosDiff = TRUE) THEN // SERV_NE DVB 26-08-2020 removed   AND p_bConvHvBrd
						eInletPneuAct	:= PneuActExt;
						eStopperAct1		:= PneuActExt;
						eStopperAct2		:= PneuActExt;
						eStopperAct3		:= PneuActExt;
					END_IF
					
					IF (p_eInletPneuStatus = Done AND p_eInletPneuStat = PneuActExt) 
						AND (p_eStopperStatus1 = Done AND p_eStopperStat1 = PneuActExt) 
						AND (p_eStopperStatus2 = Done AND p_eStopperStat2 = PneuActExt) 
						AND (p_eStopperStatus3 = Done AND p_eStopperStat3 = PneuActExt)
						THEN
			
						eInletPneuAct		:= PneuActIdle;
						eStopperAct1		:= PneuActIdle;
						eStopperAct2		:= PneuActIdle;
						eStopperAct3		:= PneuActIdle;
						
						IF p_bConvHvBrd = FALSE THEN
							IF p_bAWWidthPosDiff = TRUE OR (p_bAWPushOrPullerWidthPosDiff = TRUE) THEN
								eGotoOpsStep	:= TravLifULStepAWMov;
							
							ELSE
								eGotoOpsStep	:= TravLifULStepUSSigWait;
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							
							IF bSkipCloseInletShutter = FALSE THEN
								eGotoOpsStep	:= TravLifULStepEntBrd;
							ELSE 
								eGotoOpsStep	:= TravLifULStepDSSigWait; 
							END_IF
						END_IF
						
					END_IF
					
					// Ent board alarm
					tEntBoardTimoutErr(IN:= bConvInSenOn AND NOT p_bDIInShutterCloseRS);
					IF tEntBoardTimoutErr.Q THEN
						eGotoOpsStep	:= TravULStepTranInBrdStuckErr;
					END_IF 
					
				TravLifULStepDSSigWait:
					sStepTxt	:= 'Waiting For Downstream Signal';
					
					a_bPosAllwSigOn[1]	:= bLocalDSRdy1;
					a_bPosAllwSigOn[2]	:= bLocalDSRdy2;
					a_bPosAllwSigOn[3]	:= bLocalDSRdy3;
					
					//a_bPosAllwSigOn[1]	:= p_bMagTransferBrd1;
					//a_bPosAllwSigOn[2]	:= p_bMagTransferBrd2;
					//a_bPosAllwSigOn[3]	:= p_bMagTransferBrd3;
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					
					
					IF a_bPosAllwSigOn[1] = TRUE THEN
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
					ELSE
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1)+2000000000;
					END_IF
					
					
					IF a_bPosAllwSigOn[2] = TRUE THEN
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
					ELSE
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2)+2000000000;
					END_IF
					
					IF a_bPosAllwSigOn[3] = TRUE THEN
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					ELSE
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3)+2000000000;
					END_IF
					
					
					FOR udiMagPresentTm := 1 TO 3 DO
						udiCount	:= 3;
		
						udiCmpTm	:= a_udiMagAllwMagPresentTm[udiMagPresentTm];
							
						FOR udiMagPresentTm1 := 1 TO 3 DO
							IF a_udiMagAllwMagPresentTm[udiMagPresentTm1] < udiCmpTm THEN
								udiCount	:= udiCount - 1;
							END_IF
						END_FOR
						
						a_udiMagAllwPriority[udiMagPresentTm]	:= udiCount;
					END_FOR
					
					bGdChk	:= p_bConvGdBrd OR p_bBypsGdBadBrd;
					
					memset(ADR(a_udiPosAllwSum), 0, SIZEOF(a_udiPosAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						//	a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + tyParamTravLif.a_usiDSPriority[udi];
						a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF tyParamTravLif.a_bDSDis[udi] = FALSE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 1000;
						END_IF
						//Signal On
						IF a_bPosAllwSigOn[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 2000;
						END_IF
							
						//Magazine Reject
						IF p_bBypsGdBadBrd = FALSE AND tyParamTravLif.a_bMagRej[udi] = TRUE THEN
							a_udiPosAllwSum[udi]	:= a_udiPosAllwSum[udi] + 6000;
						END_IF
						
					END_FOR
					
					udiPosAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						IF (a_udiPosAllwSum[udi] >= 3003 AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE)	//Enable + Signal Allow
							OR (a_udiPosAllwSum[udi] >= 9000 AND bGdChk = FALSE) //Reject + Enable + Signal Allow
							OR (p_eULMod >= ULModUnloadDualLnAB AND (a_udiPosAllwSum[udi] >= 3000 AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE))
							THEN					
							
							IF udiPosAllwGo <> 99 THEN
								//Priority
								IF a_udiPosAllwSum[udi] > a_udiPosAllwSum[udiPosAllwGo] THEN
									udiPosAllwGo	:= udi;
								END_IF
							ELSE
								udiPosAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiPosAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							//	IF (a_udiPosAllwSum[udi] >= 1000 AND a_udiPosAllwSum[udi] < 2000 AND bGdChk = TRUE)				//Enable (Single Output)
							IF (a_udiPosAllwSum[udi] >= 3000(*3003*) AND a_udiPosAllwSum[udi] < 6000 AND bGdChk = TRUE)				//Enable (Single Output)
								//	OR (a_udiPosAllwSum[udi] >= 7000 AND a_udiPosAllwSum[udi] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
								OR (a_udiPosAllwSum[udi] >= 9000 AND bGdChk = FALSE) THEN	
								IF udiPosAllwGo = 99 THEN
									udiPosAllwGo	:= udi;
								ELSE
									udiPosAllwGo	:= 99;
									EXIT;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					// udiPosAllwGo := p_udiOpsDSPosAllwGo;   unders testing 
					
					IF (p_bDSAllow = TRUE) AND (udiPosAllwGo <> 99) THEN
						eTravLifPosGo	:= udiPosAllwGo + 3;
						eGotoOpsStep	:= TravLifULStepTravLifMov;
						
						IF eTravLifPosGo = TravLifULPosDS1 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod1);
							
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy1);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct1);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat1);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus1);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy1);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart1);
							
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy1);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting1);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport1);
							
						
						ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod2);
							
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy2);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct2);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat2);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus2);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy2);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart2);
							
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy2);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting2);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport2);
							
						
						ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
							p_eLocalDSCommMod ACCESS ADR(p_eDSCommMod3);
							
							p_bLocalDSRdy ACCESS ADR(bLocalDSRdy3);
							
							p_eLocalDSSMEMAAct ACCESS ADR(eDSSMEMAAct3);
							p_eLocalDSSMEMAStat ACCESS ADR(p_eDSSMEMAStat3);
							p_eLocalDSSMEMAStatus ACCESS ADR(p_eDSSMEMAStatus3);
							p_bLocalDSSMEMADSRdy ACCESS ADR(p_bDSSMEMADSRdy3);
							p_bLocalDSSMEMAConvStart ACCESS ADR(p_bDSSMEMAConvStart3);
							
							p_bLocalDSHermesDSRdy ACCESS ADR(p_bDSHermesDSRdy3);
							p_bLocalDSHermesTransporting ACCESS ADR(p_bDSHermesTransporting3);
							p_bLocalDSHermesStopTransport ACCESS ADR(p_bDSHermesStopTransport3);
							
						
						END_IF
						
						bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
					ELSE
						eTravLifPosGo	:= TravLifULPosInvalid;
						
						bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
					END_IF
					
					tEntBoardTimoutErr(IN:= p_bConvClrSen);
					IF tEntBoardTimoutErr.Q THEN
						eGotoOpsStep	:= TravULStepClrSensorErr;
					END_IF
					
				TravLifULStepDSSigRechk:
					sStepTxt	:= 'Rechecking Downstream Signal';
					
					//					IF p_bDSAllow = FALSE THEN
					//						eGotoOpsStep	:= TravLifULStepDSSigWait;
					//				
					//					ELSE
					//						IF p_bLocalDSRdy = TRUE THEN
					//							eGotoOpsStep	:= TravLifULStepOutletPneuOpn;
					//							IF eTravLifPosGo = TravLifULPosDS1 THEN
					//								eOutletPneuAct	:= PneuActRet;
					//							ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
					//								eOutletPneuAct2	:= PneuActRet;
					//							ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
					//								eOutletPneuAct3	:= PneuActRet;
					//							END_IF
					//								
					//						ELSE
					//							eGotoOpsStep	:= TravLifULStepDSSigWait;
					//						END_IF
					//					END_IF
					
					IF p_bDSAllow = FALSE THEN
						eGotoOpsStep	:= TravLifULStepDSSigWait;
					ELSIF (a_udiPosAllwSum[udiPosAllwGo] < 2000 AND bGdChk = TRUE)			//Enable (Single Output)
						OR (a_udiPosAllwSum[udiPosAllwGo] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
						
						eGotoOpsStep	:= TravLifULStepOutletPneuOpn;
					ELSE
						IF p_bLocalDSRdy = TRUE THEN
							IF bBypCurtainSenCtrl AND p_bCurtainSenPrep THEN
								eGotoOpsStep	:= TravLifULStepOutletPneuOpn; 
							ELSE
								IF NOT p_bMagWidthChkDis THEN 
									eGotoOpsStep	:= TravLifULStepDSMagWidthChk;
								ELSE							
									eGotoOpsStep	:= TravLifULStepDSComm;
								END_IF
							END_IF
						ELSE
							eGotoOpsStep	:= TravLifULStepDSSigWait;
						END_IF
					END_IF					
					
					
					bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
					
				TravLifULStepOutletPneuOpn:
					sStepTxt	:= 'Opening Outlet Pneumatic';
					
					IF NOT p_bLinkProjLifterMagPlatform AND NOT(p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE) THEN
						IF eTravLifPosGo = TravLifULPosDS1 THEN
							eOutletPneuAct	:= PneuActRet;
							eOutletPneuAct2 := PneuActExt;
							eOutletPneuAct3 := PneuActExt;
						ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
							eOutletPneuAct2	:= PneuActRet;
							eOutletPneuAct 	:= PneuActExt;
							eOutletPneuAct3 := PneuActExt;
						ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
							eOutletPneuAct3	:= PneuActRet;
							eOutletPneuAct  := PneuActExt;
							eOutletPneuAct2 := PneuActExt;
						END_IF
						
						IF ((p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActRet) AND (p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) 
							AND (p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt)) OR 
							((p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActRet) AND (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) 
							AND (p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt)) OR
							((p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActRet) AND (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) 
							AND (p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt)) THEN
							 
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							eOutletPneuAct3	:= PneuActIdle;
							//eGotoOpsStep	:= TravLifULStepDSSigRechkTwice;
							
							IF p_bLocalDSRdy = TRUE THEN
								IF NOT p_bMagWidthChkDis THEN 
									eGotoOpsStep	:= TravLifULStepDSMagWidthChk;
								ELSE							
									eGotoOpsStep	:= TravLifULStepDSComm;
								END_IF
							ELSE
								eGotoOpsStep	:= TravLifULStepDSSigWait;
							END_IF
							
							bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
						END_IF
					ELSE
						IF eTravLifPosGo = TravLifULPosDS1 THEN
							eOutletPneuAct	:= PneuActRet;
						ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
							eOutletPneuAct 	:= PneuActRet;
						ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
							eOutletPneuAct  := PneuActRet;
						END_IF
						IF p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActRet THEN
							 
							eOutletPneuAct	:= PneuActIdle;
							//eGotoOpsStep	:= TravLifULStepDSSigRechkTwice;
							
							IF p_bLocalDSRdy = TRUE THEN
								IF NOT p_bMagWidthChkDis THEN 
									eGotoOpsStep	:= TravLifULStepDSMagWidthChk;
								ELSE							
									eGotoOpsStep	:= TravLifULStepDSComm;
								END_IF
							ELSE
								eGotoOpsStep	:= TravLifULStepDSSigWait;
							END_IF
							
							bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
						END_IF
					END_IF
							
							
							
						
				TravLifULStepDSSigRechkTwice:
					sStepTxt	:= 'Rechecking Downstream Signal Twice';
					
					IF p_bDSAllow = FALSE AND bConvOutSenOn = FALSE AND p_bConvClrSen = FALSE THEN
						eGotoOpsStep	:= TravLifULStepOutletPneuCls;
					ELSIF (a_udiPosAllwSum[udiPosAllwGo] < 2000 AND bGdChk = TRUE)			//Enable (Single Output)
						OR (a_udiPosAllwSum[udiPosAllwGo] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
						
						IF NOT p_bMagWidthChkDis THEN 
							eGotoOpsStep	:= TravLifULStepDSMagWidthChk;
						ELSE							
							eGotoOpsStep	:= TravLifULStepDSComm;
						END_IF
					ELSE
						IF p_bLocalDSRdy = TRUE THEN
							IF NOT p_bMagWidthChkDis THEN 
								eGotoOpsStep	:= TravLifULStepDSMagWidthChk;
							ELSE							
								eGotoOpsStep	:= TravLifULStepDSComm;
							END_IF
						ELSE
							eGotoOpsStep	:= TravLifULStepOutletPneuCls;
						END_IF
					END_IF
					
					bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
				
				
				TravLifULStepDSMagWidthChk:
					sStepTxt	:= 'Checking Magazine Width';													
//					fbWidthChkSenOnTim(IN:= p_bMagWidthChkSenOn);
//					fbWidthChkSenOffTim(IN:= p_bMagWidthChkSenOn = FALSE);
//					IF fbWidthChkSenOnTim.Q THEN
//						eGotoOpsStep	:= TravLifULStepDSComm;
//					ELSIF fbWidthChkSenOffTim.Q THEN
//						eGotoOpsStep	:= TravLifULStepMagWidthErr;
//					END_IF
					//p_diMaxSlt = p_diBuffer1NxtLoadSlt AND p_bTopToBtm)
					IF ((((p_diMinSlt = p_diBuffer1NxtLoadSlt AND NOT p_bTopToBtm) OR  
						(p_diMaxSlt = p_diBuffer1NxtLoadSlt AND p_bTopToBtm)) AND eTravLifPosGo = TravLifULPosDS1)
						OR (((p_diMinSlt = p_diBuffer2NxtLoadSlt AND NOT p_bTopToBtm) OR  
						(p_diMaxSlt = p_diBuffer2NxtLoadSlt AND p_bTopToBtm)) AND eTravLifPosGo = TravLifULPosDS2)
						OR (((p_diMinSlt = p_diBuffer3NxtLoadSlt AND NOT p_bTopToBtm) OR  
						(p_diMaxSlt = p_diBuffer3NxtLoadSlt AND p_bTopToBtm)) AND eTravLifPosGo = TravLifULPosDS3)) AND bMagWidthChk = FALSE THEN
						
						bMagWidthChk := TRUE;
					END_IF
					
					IF bMagWidthChk AND ((p_bDIOutShutterOpenRS AND eTravLifPosGo = TravLifULPosDS1) OR  
						(p_bDIOutShutterOpenRS2 AND eTravLifPosGo = TravLifULPosDS2) OR 
						(p_bDIOutShutterOpenRS3 AND eTravLifPosGo = TravLifULPosDS3)) THEN
						
					
						CASE usiMagWidthChkStep OF //start from 10
							10:
								IF p_bTopToBtm THEN
									IF eTravLifPosGo = TravLifULPosDS1 THEN 
										eLifAct	:= LifterActGoASltPos;
									ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
										eLifAct	:= LifterActGoBSltPos;
									ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
										eLifAct	:= LifterActGoCSltPos;
									END_IF
									IF (p_eLifStat = LifterActGoASltPos OR p_eLifStat = LifterActGoBSltPos OR p_eLifStat = LifterActGoCSltPos)
										AND p_eLifStatus = Done THEN
										eLifAct := LifterActIdle;
										
										usiMagWidthChkStep := 0;
									END_IF
								ELSE
									usiMagWidthChkStep := 0;
								END_IF
								bPaused		:= p_bStop OR p_bStep;
	
							0: 
								IF NOT p_bMagWidthChkSenOn THEN //off -> on -> off 
									
									bTravGoToChkPt := TRUE;
									usiMagWidthChkStep := 1;
								ELSE
									eGotoOpsStep	:= TravLifULStepMagWidthErr;
								END_IF
								
								bPaused		:= p_bStop OR p_bStep;
								
							1: 
								IF eTravLifPosGo = TravLifULPosDS1 THEN // With Check Point Offset mm - The Calculated Value Can be found in Traverser Package Act_Link:
									eTravAct	:= TravActGoDPos;
								ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
									eTravAct	:= TravActGoEPos;
								ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
									eTravAct	:= TravActGoFPos;
								END_IF
								
								IF (p_eTravStat = TravActGoDPos OR p_eTravStat = TravActGoEPos OR p_eTravStat = TravActGoFPos) AND p_eTravStatus = Done THEN
									eTravAct	:= TravActIdle;
									bTravGoToChkPt := FALSE;
									
									IF p_bMagWidthChkSenOn THEN
										usiMagWidthChkStep := 2;
									ELSE
										eGotoOpsStep	:= TravLifULStepMagWidthErr;
									END_IF
									
									bPaused		:= p_bStop OR p_bStep;
								END_IF
								
							2: 
								IF eTravLifPosGo = TravLifULPosDS1 THEN //Without Check Point Offset mm - Coming Back To Original Pos
									eTravAct	:= TravActGoDPos;
								ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
									eTravAct	:= TravActGoEPos;
								ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
									eTravAct	:= TravActGoFPos;
								END_IF
								
								IF (p_eTravStat = TravActGoDPos OR p_eTravStat = TravActGoEPos OR p_eTravStat = TravActGoFPos) AND p_eTravStatus = Done THEN
									eTravAct	:= TravActIdle;
									
									usiMagWidthChkStep := 3;
								
									
									bPaused		:= p_bStop OR p_bStep;
								END_IF
							3: 
								
								fbWidthChkSenOnTim(IN:= p_bMagWidthChkSenOn);
									
								IF NOT p_bMagWidthChkSenOn THEN
									usiMagWidthChkStep  := 4;
//									bMagWidthChk		:= FALSE;
//									eGotoOpsStep		:= TravLifULStepDSComm;
								ELSE
									IF fbWidthChkSenOnTim.Q THEN
										eGotoOpsStep		:= TravLifULStepMagWidthErr;
									END_IF
								END_IF	
								bPaused		:= p_bStop OR p_bStep;
							4:
								IF eTravLifPosGo = TravLifULPosDS1 THEN 
									eLifAct	:= LifterActGoASltPos;
								ELSIF eTravLifPosGo = TravLifULPosDS2 THEN
									eLifAct	:= LifterActGoBSltPos;
								ELSIF eTravLifPosGo = TravLifULPosDS3 THEN
									eLifAct	:= LifterActGoCSltPos;
								END_IF
								IF (p_eLifStat = LifterActGoASltPos OR p_eLifStat = LifterActGoBSltPos OR p_eLifStat = LifterActGoCSltPos)
									AND p_eLifStatus = Done THEN
									eLifAct := LifterActIdle;
									usiMagWidthChkStep  := 10;
									bMagWidthChk		:= FALSE;
									eGotoOpsStep		:= TravLifULStepDSComm;

								END_IF
								bPaused		:= p_bStop OR p_bStep;

						END_CASE
						
					ELSE
						eGotoOpsStep		:= TravLifULStepDSComm;
						bPaused				:= p_bStop OR p_bStep;
					END_IF					
					
				TravLifULStepDSComm:
					sStepTxt	:= 'Communicating Downstream Machine';
					
					CASE p_eLocalDSCommMod OF
						McSetCommModSMEMA:
							p_eLocalDSSMEMAAct	:= SMEMAActRun;
							
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								eGotoOpsStep	:= TravLifULStepExitBrd;
								
							ELSIF p_bDSAllow = FALSE AND bConvOutSenOn = FALSE AND p_bConvClrSen = FALSE  THEN
								p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								eGotoOpsStep		:= TravLifULStepOutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
								
							ELSE
								
								IF (a_udiPosAllwSum[udiPosAllwGo] < 2000 AND bGdChk = TRUE)				//Enable (Single Output)
									OR (a_udiPosAllwSum[udiPosAllwGo] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
									
									bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									
									IF bPaused = TRUE THEN
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
									END_IF
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE THEN
										p_eLocalDSSMEMAAct	:= SMEMAActIdle;
										IF bConvOutSenOn = FALSE AND p_bConvClrSen = FALSE THEN
										eGotoOpsStep		:= TravLifULStepOutletPneuCls;
										END_IF
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									ELSE
										bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
										
										IF bPaused = TRUE THEN
											p_eLocalDSSMEMAAct	:= SMEMAActIdle;
										END_IF
									END_IF
									
								END_IF
								
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalDSHermesTransporting = TRUE THEN
								eGotoOpsStep	:= TravLifULStepExitBrd;
								
							ELSIF p_bDSAllow = FALSE AND bConvOutSenOn = FALSE AND p_bConvClrSen = FALSE   THEN
								eGotoOpsStep	:= TravLifULStepOutletPneuCls;
								
								bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
								
							ELSE
								
								IF (a_udiPosAllwSum[udiPosAllwGo] < 2000 AND bGdChk = TRUE)				//Enable (Single Output)
									OR (a_udiPosAllwSum[udiPosAllwGo] < 8000 AND bGdChk = FALSE) THEN	//Reject + Enable (Single Output)
									
									bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									
								ELSE
									
									IF p_bLocalDSRdy = FALSE THEN
										IF bConvOutSenOn = FALSE AND p_bConvClrSen = FALSE THEN
										eGotoOpsStep	:= TravLifULStepOutletPneuCls;
										END_IF
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									ELSE
										bPaused	:= p_bStop; // For Curtain Sensor Update 20220926;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
				TravLifULStepExitBrd:
					
//					IF p_bMagWidthChkSenOn = FALSE THEN // Move the Magazine Width Check Error To DS Comm To Save Cycle Time
//						sStepTxt	:= 'Magazine Width Detection Failed';
//						eStatus		:= Error;
//						udiStatus	:= 10004;
//					END_IF
					bSkipCloseInletShutter := FALSE; //added 231101, avoid initial run skipped inlet close
					
					CASE p_eLocalDSCommMod OF
						
						McSetCommModSMEMA:
							
							IF p_bLocalDSSMEMAConvStart = TRUE THEN
								sStepTxt	:= 'Pusher Conveyor Exiting Board';
								eConvAct	:= ConvActExitPshr;
							END_IF
							
							IF (p_eLocalDSSMEMAStatus = Done AND p_eLocalDSSMEMAStat = SMEMAActRun) THEN //this part important 
								
								
								IF  p_bPshrConvPshrRetSlwSen AND NOT(p_bConvClrSen OR p_bConvRgtSen) AND NOT(p_bStop OR p_bStep) THEN
									eGotoOpsStep		:= TravLifULStepOutletPneuCls; //ADDED 28/8/2023
									p_eLocalDSSMEMAAct	:= SMEMAActIdle;
								ELSIF (p_eConvStatus = Done AND p_eConvStat = ConvActExitPshr) THEN 
									eConvAct			:= ConvActIdle;
									eGotoOpsStep		:= TravLifULStepOutletPneuCls;
									p_eLocalDSSMEMAAct	:= SMEMAActIdle;
									
									bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									
								END_IF 
								
								tExitBoardTimoutErr(IN:= (bConvOutSenOn OR (p_bConvClrSen OR p_bConvRgtSen))) ; //25/9/2023 , as the pusher push
								IF tExitBoardTimoutErr.Q THEN
									eGotoOpsStep	:= TravULStepTranOutBrdStuckErr;
								END_IF
							END_IF
							
						McSetCommModHermes:
							IF p_bLocalDSHermesTransporting = TRUE THEN
								
								IF p_bLocalDSHermesStopTransport = TRUE THEN
									sStepTxt	:= 'Pusher Conveyor Stopping';
									eConvAct	:= ConvActStopPshr;
								ELSE
									sStepTxt	:= 'Pusher Conveyor Exiting Board';
									eConvAct	:= ConvActExitPshr;
								END_IF
								
							ELSE
								
								IF p_bLocalDSHermesStopTransport = TRUE THEN
									
									eConvAct	:= ConvActStopPshr;
									
									IF 	p_bPshrConvPshrRetSlwSen AND NOT(p_bStop OR p_bStep) THEN
										eGotoOpsStep		:= TravLifULStepOutletPneuCls; //ADDED 28/8/2023
									ELSIF (p_eConvStatus = Done AND p_eConvStat = ConvActStopPshr)  THEN
										eConvAct		:= ConvActIdle;
										eGotoOpsStep		:= TravLifULStepOutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									END_IF
									
								ELSE
									
									eConvAct	:= ConvActExitPshr;
									IF 	p_bPshrConvPshrRetSlwSen AND NOT(p_bStop OR p_bStep) THEN
										eGotoOpsStep	:= TravLifULStepOutletPneuCls; //ADDED 28/8/2023
									ELSIF (p_eConvStatus = Done AND p_eConvStat = ConvActExitPshr)  THEN
										eConvAct		:= ConvActIdle;
										eGotoOpsStep	:= TravLifULStepOutletPneuCls;
										
										bPaused	:= p_bStop OR p_bStep; // For Curtain Sensor Update 20220926;
									END_IF
									
								END_IF
								
							END_IF
							
					END_CASE
					
					//Magazine Not Present
					IF p_bMagTransferBrd1 AND ( NOT p_bBufferMagDet1)  THEN //NOT p_bBufferMagPresent1 AND
						eGotoOpsStep	:= TravLifULStepTranOutErr;
					ELSIF p_bMagTransferBrd2 AND ( NOT p_bBufferMagDet2)THEN //NOT p_bBufferMagPresent2 AND
						eGotoOpsStep	:= TravLifULStepTranOutErr;
					ELSIF p_bMagTransferBrd3 AND (NOT p_bBufferMagDet3) THEN //NOT p_bBufferMagPresent3 AND 
						eGotoOpsStep	:= TravLifULStepTranOutErr;
					END_IF
					
				TravLifULStepOutletPneuCls:
					sStepTxt	:= 'Closing Outlet Pneumatic';
					
					IF (bBypCurtainSenCtrl AND p_bCurtainSenPrep) 
						OR (p_bNtParamProjOutletShut2Prep = FALSE AND p_bNtParamProjOutletShut3Prep = FALSE AND  p_bCurtainSenPrep = FALSE)
						THEN


	//					bSkipCloseInletShutter := FALSE;
						fbWaitTimer(IN:= TRUE, PT := p_tShutterWaitTmr);
						IF fbWaitTimer.Q THEN
							IF p_bConvClrSen = FALSE AND (p_bDIPusherRetRS OR p_bPshrConvPshrRetSlwSen) THEN					
								eOutletPneuAct	:= PneuActExt;
								eOutletPneuAct2	:= PneuActExt;
								eOutletPneuAct3	:= PneuActExt;
							END_IF							
						END_IF
	//					
	//					
						IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) AND 
							(p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) AND 
							(p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt) THEN
							
							eOutletPneuAct	:= PneuActIdle;
							eOutletPneuAct2	:= PneuActIdle;
							eOutletPneuAct3	:= PneuActIdle;
	//						
							fbWaitTimer(IN:= FALSE);
							IF p_bConvHvBrd = FALSE THEN
								//	eGotoOpsStep	:= TravLifULStepAWMov;
								eGotoOpsStep	:= TravLifULStepInletPneuCls;
							ELSE
								eGotoOpsStep	:= TravLifULStepDSSigWait;
							END_IF
							
							bPaused	:= p_bStop OR p_bStep;
						END_IF
						
					ELSE
						
						IF p_bLinkProjLifterMagPlatform  THEN
							
							IF p_bConvClrSen = FALSE AND p_bDIPusherRetRS THEN					
								eOutletPneuAct	:= PneuActExt;
								eOutletPneuAct2	:= PneuActExt;
								eOutletPneuAct3	:= PneuActExt;
							END_IF												
											
							IF (p_eOutletPneuStatus = Done AND p_eOutletPneuStat = PneuActExt) AND 
								(p_eOutletPneuStatus2 = Done AND p_eOutletPneuStat2 = PneuActExt) AND 
								(p_eOutletPneuStatus3 = Done AND p_eOutletPneuStat3 = PneuActExt) THEN
								
								eOutletPneuAct	:= PneuActIdle;
								eOutletPneuAct2	:= PneuActIdle;
								eOutletPneuAct3	:= PneuActIdle;
								
								IF p_bConvHvBrd = FALSE THEN
									//	eGotoOpsStep	:= TravLifULStepAWMov;
									eGotoOpsStep	:= TravLifULStepInletPneuCls;
								ELSE
									eGotoOpsStep	:= TravLifULStepDSSigWait;
								END_IF
							END_IF	
						ELSE
							IF p_bConvHvBrd = FALSE THEN //no need close
								//	eGotoOpsStep	:= TravLifULStepAWMov;
								eGotoOpsStep	:= TravLifULStepInletPneuCls;
							ELSE
								eGotoOpsStep	:= TravLifULStepDSSigWait;
							END_IF
							IF p_bConvClrSen = FALSE AND (p_bDIPusherRetRS OR p_bPshrConvPshrRetSlwSen) THEN	
								eOutletPneuAct	:= BOOL_TO_USINT(eTravLifPosGo = TravLifULPosDS1 AND p_tyBufferStat1.bBffrFull)*PneuActExt; //ADDED to make idle
								eOutletPneuAct2	:= BOOL_TO_USINT(eTravLifPosGo = TravLifULPosDS2 AND p_tyBufferStat2.bBffrFull)*PneuActExt; //ADDED PneuActIdle for Pusher Retract,
								eOutletPneuAct3	:= BOOL_TO_USINT(eTravLifPosGo = TravLifULPosDS3 AND p_tyBufferStat3.bBffrFull)*PneuActExt; //ADDED for Pusher Retract
							END_IF
						END_IF
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
					//exit board timeout
					tExitBoardTimoutErr(IN:= (bConvOutSenOn OR p_bConvClrSen) AND NOT p_bDIOutShutterCloseRS);
					IF tExitBoardTimoutErr.Q THEN
						eGotoOpsStep	:= TravULStepTranOutBrdStuckErr;
					END_IF
					

//--------------------------------------- ERROR ----------------------------------------------------------------

				TravLifULStepTranOutErr:
					sStepTxt	:= 'Stopping Pusher Conveyor';
					
					eConvAct	:= ConvActStopPshr;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPshr THEN
						eConvAct	:= ConvActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10000;
					END_IF
				
				TravULStepTranOutBrdStuckErr:
					sStepTxt	:= 'Stopping Pusher Conveyor';
					tExitBoardTimoutErr(IN:= FALSE);
					eConvAct	:= ConvActStopPshr;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStopPshr THEN
						eConvAct	:= ConvActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10001;
					END_IF
				
				TravULStepTranInBrdStuckErr:
					sStepTxt	:= 'Stopping Conveyor';
					tEntBoardTimoutErr(IN:= FALSE);
					eConvAct	:= ConvActStop;
					
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStop THEN
						eConvAct	:= ConvActIdle;
						
						eStatus		:= Error;
						udiStatus	:= 10002;
					END_IF
				
				TravULStepClrSensorErr:
					sStepTxt	:= 'Stopping Conveyor';
					tEntBoardTimoutErr(IN:= FALSE);
					eConvAct	:= ConvActStop;
			
					IF p_eConvStatus = Done AND p_eConvStat = ConvActStop THEN
						eConvAct	:= ConvActIdle;
				
						eStatus		:= Error;
						udiStatus	:= 10003;
					END_IF	
				
				TravLifULStepMagWidthErr:
					sStepTxt	:= 'Magazine Width Detection Failed';
					eStatus		:= Error;
					udiStatus	:= 10004;
					
				TravULStepBrdLostInMiddle:
					sStepTxt	:= 'Board Stuck in Middle of the Conveyor ';
					eStatus		:= Error;
					udiStatus	:= 10008;
				
				TravULStepClrSensorErrBefTrav:
					sStepTxt	:= 'Anti Crash sensor activated before Traversing';
					eStatus		:= Error;
					udiStatus	:= 10012;
			END_CASE
			
		END_IF
		
	END_IF
	
	bInitConv		:= eOpsStep = TravLifULStepInitConv;
	bOpsInitDone	:= eOpsStep > TravLifULStepInitAWTravLif;
	bUSComm			:= eOpsStep = TravLifULStepUSComm;
	bEntBrd			:= eOpsStep = TravLifULStepEntBrd;
	bDSComm			:= eOpsStep = TravLifULStepDSComm;
	bExitBrd		:= eOpsStep = TravLifULStepExitBrd;
	bTravLifMove	:= eOpsStep = TravLifULStepTravLifMov;

	//@@@ for Siemens @@@/
	bAllwExitMag1 := ((p_eConvStatus <> Busy AND NOT(p_bConvHvBrd)) OR (p_bConvHvBrd AND (eTravLifPosGo = TravLifULPosDS2 OR eTravLifPosGo = TravLifULPosDS3) ) );
	bAllwExitMag2 := ((p_eConvStatus <> Busy AND NOT(p_bConvHvBrd)) OR (p_bConvHvBrd AND (eTravLifPosGo = TravLifULPosDS1 OR eTravLifPosGo = TravLifULPosDS3) ) );
	bAllwExitMag3 := ((p_eConvStatus <> Busy AND NOT(p_bConvHvBrd)) OR (p_bConvHvBrd AND (eTravLifPosGo = TravLifULPosDS1 OR eTravLifPosGo = TravLifULPosDS2) ) );
	//@@@@@@@@@@@@@@ Ops_Mod ////
//	Act_OpsMod;  changed with pos allow go to lower cycle time
	


	//------------------------------Modular------------------//
	IF p_bOpConPrep AND p_bLinkOpConEn THEN
		Act_OpsOpCon;
	END_IF
	IF p_bInletStopperPrep THEN
		Act_OpsStopper;
	END_IF
//	IF THEN
		Act_OpsScanner;
	//	END_IF 
	

END_ACTION
