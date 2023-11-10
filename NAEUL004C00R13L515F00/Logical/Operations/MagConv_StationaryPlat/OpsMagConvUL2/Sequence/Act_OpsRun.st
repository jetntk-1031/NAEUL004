(** 2019-04-16 **)
ACTION Act_OpsRun:
	IF p_bOpsTravLifErrCmdUnclmp THEN //from travLif width chk error
		eMagConv2ClpAct :=	MagConv2ClpActStopClpr;
						
		IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
							
			eMagConv2ClpAct	:= MagConv2ClpActIdle;
			bPneuUnclmpDone := TRUE; //To TravLifUL
		END_IF
	END_IF
	
	Act_LogStep;
	IF eGotoOpsStep <> eOpsStep THEN
		
		fbWrongMagTm(IN:= FALSE);
		fbReadRFIDTO(IN:= FALSE);
		fbWriteRFIDTO(IN:= FALSE);
		CASE eGotoOpsStep OF
			MagConvULStepBffrStatChk:  //For Siemen, Enter Condition
				IF ((p_eCustomerReq = Siemens OR p_eCustomerReq = We_Fabricate) AND p_bMcParamMESEn) AND eOpsStep = MagConvULStepVerifyMag THEN
					IF ePrevStepBeforeMESStdBy = MagConvULStepMagExitMnl OR ePrevStepBeforeMESStdBy = MagConvULStepMagExitClampCtrl THEN
						eGotoOpsStep		:= MagConvULStepMagExtMESStdByChk;
						eOpsStep			:= MagConvULStepMagExtMESStdByChk;
					ELSIF  iMagMESAcptCond > 0 THEN
						eGotoOpsStep		:= MagConvULStepBffrStatChk;
						eOpsStep			:= MagConvULStepBffrStatChk;
					ELSIF iMagMESAcptCond < 0 THEN
						eGotoOpsStep		:= MagConvULStepMagExitClampCtrl;
						eOpsStep			:= MagConvULStepMagExitClampCtrl;
					ELSIF iMagMESAcptCond = 0 THEN
						eGotoOpsStep		:= MagConvULStepMagEntMESStdByChk;
						eOpsStep			:= MagConvULStepMagEntMESStdByChk;
					END_IF
				ELSE
					eOpsStep	:= eGotoOpsStep;
				END_IF
			MagConvULStepMagExitClampCtrl: //For Siemen
				IF (p_eCustomerReq = Siemens AND p_bMcParamMESEn) AND (eOpsStep <> MagConvULStepMagExtMESStdByChk ) 
					AND (p_tyLocalBufferStat.bBffrFull OR pa_bMagChangeOverBlk[p_usiMagConv] = TRUE OR p_bDISOTAGVReady) 
					AND NOT(iMagMESAcptCond < 0)THEN 
					eOpsStep := MagConvULStepMagExtMESStdByChk;
					eGotoOpsStep := MagConvULStepMagExtMESStdByChk;
					ePrevStepBeforeMESStdBy := MagConvULStepMagExitClampCtrl;
				ELSE
					eOpsStep	:= eGotoOpsStep;
					ePrevStepBeforeMESStdBy	:= MagConvULStepNA;
				END_IF
			MagConvULStepMagExitMnl: //For Siemens
				IF (p_eCustomerReq = Siemens AND p_bMcParamMESEn)
					AND (eOpsStep <> MagConvULStepMagExtMESStdByChk AND eOpsStep <> MagConvULStepMagFullDSComm 
					AND eOpsStep <> MagConvULStepMagEntMESStdByChk  AND eOpsStep <> MagConvULStepVerifyMag) 
					THEN 
					eOpsStep := MagConvULStepMagExtMESStdByChk;
					eGotoOpsStep := MagConvULStepMagExtMESStdByChk;
					ePrevStepBeforeMESStdBy := MagConvULStepMagExitMnl;
				ELSE
//					sStepTxt	:= 'Waiting for Shutter Close';
//					IF (p_bNtParamProjOutletShut2Prep AND p_bDIOutShutterClosedRS2) OR (NOT(p_bNtParamProjOutletShut2Prep) AND p_bDIOutShutterClosedRS) THEN
						eOpsStep	:= eGotoOpsStep;
						ePrevStepBeforeMESStdBy	:= MagConvULStepNA;
//					END_IF
				END_IF
			MagConvULStepSelClampCtrl:
				IF p_bMagOrientChkSenPrep THEN 
					IF p_bMagHeightDetEn AND p_bMagHeightDetPrep THEN
						
						IF p_bMag2OrientationChkSen1 AND p_bMagHeightDetSen2 THEN // Magazine Type Check with height Detection Sensor
							eOpsStep := eGotoOpsStep;
						ELSE
							eMagConv2ClpAct :=	MagConv2ClpActStopClpr; //Unclamp First
							
							IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
								
								eMagConv2ClpAct	:= MagConv2ClpActIdle;
							
								eStatus		:= Error;
								udiStatus	:= 10011;	//Wrong Magazine Orientation Placed.
							END_IF
						END_IF	
	
					ELSE
						
						IF p_bMag2OrientationChkSen1 AND NOT p_bMagHeightDetSen2 THEN //Without Check Height Detection Sensor
							eOpsStep := eGotoOpsStep;
						ELSE
							eMagConv2ClpAct :=	MagConv2ClpActStopClpr; //Unclamp First
							
							IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
								
								eMagConv2ClpAct	:= MagConv2ClpActIdle;
							
								eStatus		:= Error;
								udiStatus	:= 10011;	//Wrong Magazine Orientation Placed.
							END_IF
						END_IF	
					
					END_IF
				ELSE
					eOpsStep	:= eGotoOpsStep;
				END_IF
			ELSE
				eOpsStep	:= eGotoOpsStep;
			
		END_CASE
		
	END_IF
	
	IF eOpsStep = eGotoOpsStep THEN
		
		IF bPaused = FALSE THEN
			
			CASE eOpsStep OF
				
				MagConvULStepInitMag:
					sStepTxt	:= 'Initializing Magazine';
					p_usiMagConv := 2;
					CASE p_usiMagConv OF
						1:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat1);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen1);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent1);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm1);
						2:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat2);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen2);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent2);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm2);
						3:
							p_tyLocalBufferStat ACCESS ADR(p_tyBufferStat3);
							p_bLocalMagEntrySen ACCESS ADR(p_bMagEntrySen3);
							p_bLocalBufferMagPresent ACCESS ADR(p_bBufferMagPresent3);
							p_dtLocalBufferMagPresentTm ACCESS ADR(p_dtBufferMagPresentTm3);
					END_CASE
					
//					IF bMagExitedWait THEN
//						eGotoOpsStep	:= MagConvULStepMagExitedWait;
//					ELSE
//						eGotoOpsStep	:= MagConvULStepInitMagConv;
//					END_IF
	
					IF p_bProjLifTravMnlLoad = FALSE THEN
						eGotoOpsStep	:= MagConvULStepInitAWPneu;
					ELSE
						eGotoOpsStep	:= MagConvULStepMagUSComm; //no roller
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
				
					
				MagConvULStepInitAWPneu:
					sStepTxt	:= 'Initializing Pneumatic';
					
					eSafetyBarAct	:= PneuActExt;
					eMagAWEngageAct	:= PneuActRet;
					
					IF (p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt) AND (p_eMagAWEngageStatus = Done AND p_eMagAWEngageStat = PneuActRet) THEN
						eSafetyBarAct	:= PneuActIdle;
						eMagAWEngageAct	:= PneuActIdle;
						IF bMagExitedWait AND  ePrevExitStep = MagConvULStepMagExitMnl THEN
							//	eDSSOTAct	:= SOTActRun;
							eGotoOpsStep		:= MagConvULStepMagExitedWait; //sucessful exited
						ELSIF ePrevExitStep = MagConvULStepMagExitMnl THEN
							eGotoOpsStep	:= MagConvULStepInitMagEnt; //halfway exiting, if magazine gone, init step
//						ELSIF ePrevExitStep = MagConvULStepMagExitClampCtrl THEN
//							eGotoOpsStep	:= MagConvULStepMagExitClampCtrl; //want to exit before clamping
						ELSE
							eGotoOpsStep	:= MagConvULStepInitMagConv;
						END_IF
					END_IF	
					
				MagConvULStepInitMagEnt:
					sStepTxt	:= 'Initializing Magazine Conveyor';
					eMagConv2ClpAct	:= MagConv2ClpActInit;
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActInit) THEN
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						IF p_bMagConv2ClpHvMag = FALSE THEN	
							eGotoOpsStep	:= MagConvULStepMagUSComm;
							ePrevExitStep 		:= MagConvULStepNA;
							iMagMESAcptCond 	:= 0;
						ELSE
							eGotoOpsStep	:= MagConvULStepInitMagFixClp;
						END_IF
					END_IF
					
				MagConvULStepInitMagFixClp:
					sStepTxt	:= 'Initializing Fixed Clamp';
					eMagConv2ClpAct	:= MagConv2ClpActFixClprClamp;
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActFixClprClamp) THEN
							eMagConv2ClpAct	:= MagConv2ClpActIdle;
						IF bMagAutoEx THEN
							eDSSOTAct	:= SOTActRun;
						ELSE
							eDSSOTAct	:= SOTActIdle;
						END_IF
						
						IF p_bDIMagConvCAB717Sen THEN
							bMagSizeLarge := TRUE;
						ELSE
							bMagSizeLarge := FALSE;
						END_IF
						
						eGotoOpsStep	:= MagConvULStepSelClampCtrl;
					END_IF
					
					
				MagConvULStepInitMagConv:
					sStepTxt	:= 'Initializing Magazine Conveyor';
					
					eMagConv2ClpAct	:= MagConv2ClpActInitStopClp;
					eSelClampCtrl := PneuActExt;
					
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActInitStopClp) 
						AND (p_eSelClampCtrlStat = PneuActExt AND p_eSelClampCtrlStatus = Done)
						THEN
						eSelClampCtrl := PneuActIdle;
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						
						IF p_bMagConv2ClpHvMag = FALSE THEN
								eGotoOpsStep	:= MagConvULStepMagUSComm;
								ePrevExitStep 		:= MagConvULStepNA;
								iMagMESAcptCond 	:= 0;
						ELSE
							//	eGotoOpsStep	:= MagConvULStepBffrStatChk;
							eGotoOpsStep	:= MagConvULStepSelClampCtrl;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
					
					
				MagConvULStepMagUSComm:
					sStepTxt	:= 'Communicating AIV And Ready For Transport In Magazine';
		
					eAGVMagAct	:= AGVMagActEnter;
					IF bMagAutoEx THEN
						eUSSOTAct	:= SOTActRun;
					ELSE
						eUSSOTAct	:= SOTActIdle;
					END_IF
					
					eDSSOTAct	:= SOTActIdle;
					bMagSizeLarge := FALSE;
					bMagExitedWait	:= FALSE;
					
					IF p_bSafetyBarExtended = FALSE THEN
						eGotoOpsStep	:= MagConvULStepSafetyBarExt;
					ELSIF p_bAGVMagMcRunRdy = TRUE OR p_bUSSOTTransporting= TRUE THEN
						eGotoOpsStep	:= MagConvULStepMagEnt;
						
					ELSIF p_bNewMag = TRUE OR bNewMagAutoDetected = TRUE THEN
						eAGVMagAct		:= AGVMagActIdle;
						eGotoOpsStep	:= MagConvULStepMagEntMnl;
						
					ELSE
						bPaused	:= p_bStop;
						
						IF bPaused = TRUE THEN
							eAGVMagAct	:= AGVMagActIdle;
							eUSSOTAct	:= SOTActIdle;
						END_IF
						
					END_IF
					
				
					
					
				MagConvULStepMagEnt:
		
					IF p_bUSSOTConvStart THEN
						sStepTxt	:= 'Conveyor Entering Magazine To End';
						eMagConv2ClpAct	:= MagConv2ClpActEntStopClp;
						
					ELSIF bNewMagAutoDetected = TRUE THEN
						eAGVMagAct			:= AGVMagActIdle;
						eGotoOpsStep		:= MagConvULStepMagEntMnl;
						
					ELSIF p_bUSSOTConvStop THEN
						sStepTxt	:= 'Conveyor Stopping';
						eMagConv2ClpAct	:= MagConv2ClpActStopClpr;
						IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActStopClpr) THEN
							eMagConv2ClpAct		:= MagConv2ClpActIdle;
							
						END_IF
					END_IF
					
					
					
					IF (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActEntStopClp) THEN
						eAGVMagAct			:= AGVMagActIdle;
						eMagConv2ClpAct		:= MagConv2ClpActIdle;
						eUSSOTAct			:= SOTActIdle;
						eGotoOpsStep		:= MagConvULStepSelClampCtrl;
						bPaused	:= p_bStop OR p_bStep;
					
					ELSE
					
						
					END_IF
		
				MagConvULStepMagEntMnl:
					sStepTxt	:= 'Magazine Conveyor Entering Magazine Manually';
					
					IF p_bProjLifTravMnlLoad = FALSE THEN
						eMagConv2ClpAct	:= MagConv2ClpActEntStopClp;
					ELSE
						eGotoOpsStep	:= MagConvULStepSelClampCtrl; //no roller
					END_IF
					
					IF p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActEntStopClp THEN
						eMagConv2ClpAct	:= MagConv2ClpActIdle;
						eGotoOpsStep	:= MagConvULStepSelClampCtrl;
						eUSSOTAct			:= SOTActIdle;
						eAGVMagAct			:= AGVMagActIdle;
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
									
				MagConvULStepSelClampCtrl:
					sStepTxt	:= 'Magazine Selection Control';
					bNewMagVerifyStarted := TRUE;
					
					CASE p_bLinkMagRcpCurrRcpMagModel OF
						0: //CAB706.2
							IF p_bDIMagConvCAB717Sen = FALSE THEN
								eSelClampCtrl := PneuActRet;
							END_IF
						
							eGotoOpsStep		:= MagConvULStepVerifyMag;
						
						
						1: //CAB716.2
							IF p_bDIMagConvCAB717Sen = FALSE THEN
								eSelClampCtrl := PneuActRet;
							END_IF
					
							eGotoOpsStep		:= MagConvULStepVerifyMag;
							
						
						2: //CAB717.2
							eSelClampCtrl := PneuActExt;
							
							eGotoOpsStep	:= MagConvULStepVerifyMag;
						
					END_CASE
					
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvULStepVerifyMag:
					sStepTxt	:= 'Magazine Model Verification';
					
					bNewMagVerifyStarted := TRUE;
					fbWrongMagTm(IN:= bNewMagVerified = FALSE);
					IF fbWrongMagTm.Q AND NOT bMagExitedWait THEN
						fbWrongMagTm(IN:= FALSE);
						eGotoOpsStep		:= MagConvULStepMagExitMnl;
					ELSIF ePrevExitStep = MagConvULStepMagExitMnl THEN
						eGotoOpsStep		:= MagConvULStepMagExitMnl;
					ELSIF ePrevExitStep = MagConvULStepMagExitClampCtrl THEN
						eGotoOpsStep		:= MagConvULStepMagExitClampCtrl;
					ELSIF bNewMagVerified  THEN
						eSelClampCtrl	:= PneuActIdle;

						eGotoOpsStep		:= MagConvULStepBffrStatChk; //to RFID scanning if applicable
							
					END_IF
					
					IF p_bDIMagConvCAB717Sen THEN
						bMagSizeLarge := TRUE;
					ELSE
						bMagSizeLarge := FALSE;
					END_IF
					
					IF p_bSelfTest THEN
						eGotoOpsStep	:= MagConvULStepMagCmp;
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;

				MagConvULStepMagEntMESStdByChk:
					IF p_eCustomerReq = Siemens THEN
						sStepTxt	:= 'Read RFID Chk step';
					ELSE
						sStepTxt	:= 'Wait for MES feedback';
					END_IF
					bReadRFID := TRUE;
					fbReadRFIDTO(IN:= bReadRFID,PT := DINT_TO_TIME(p_diMcParamMESResponseTO));
					iMagMESAcptCond := (p_tyResponseFromMES.iAcceptCondition);
					IF p_tyResponseFromMES.iAcceptCondition > 0  THEN //Accept
						eGotoOpsStep := MagConvULStepBffrStatChk;
						dtMagConvAcptTm	:= p_dtCurrDT;
					ELSIF p_tyResponseFromMES.iAcceptCondition < 0  THEN//No Accept
						eGotoOpsStep	:= MagConvULStepMagExitClampCtrl;
					ELSIF fbReadRFIDTO.Q AND p_bRlsMag THEN
						sStepTxt	:= 'Wait for Read RFID';
						eGotoOpsStep := MagConvULStepMagExitMnl;
					END_IF
					IF eGotoOpsStep <> MagConvULStepMagEntMESStdByChk THEN
						bReadRFID := FALSE;
						fbReadRFIDTO(IN:= bReadRFID);
						
					END_IF 
					bPaused	:= p_bStop OR p_bStep;
					
				MagConvULStepBffrStatChk:
					sStepTxt	:= 'Checking Buffer Status';
					
					IF p_eBufferStatus = Idle THEN
						
						IF p_tyLocalBufferStat.bBffrFull = TRUE 
							//AND p_bOutShutterExtended 
							THEN
							//	eGotoOpsStep	:= MagConvULStepMagFullDSComm;
							eGotoOpsStep	:= MagConvULStepMagExitClampCtrl;
						ELSE
		//	20210420		eGotoOpsStep	:= MagConvULStepMagCmp; 
							eGotoOpsStep	:= MagConvULStepSafetyBarRet;
						END_IF
						
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
				
					
					
				MagConvULStepChkMag:
					
					sStepTxt	:= 'Checking Magazine Status';
//					IF p_bSafetyBarExtended = FALSE THEN
//							eGotoOpsStep	:= MagConvULStepSafetyBarExt;
					
//					ELSIF p_bMagPresentSen1 = TRUE THEN
					IF p_bMagPresentSen = TRUE THEN
						IF p_tyLocalBufferStat.bBffrMty = TRUE THEN
							//Buffer Empty
							IF  bAutoRcpEn THEN
								eGotoOpsStep	:= MagConvULStepMagCmp;
							ELSIF bMagAWDone = FALSE THEN
								eGotoOpsStep	:= MagConvULStepMagAWEngage;
//							ELSIF p_bSafetyBarRetracted = FALSE THEN
//								eGotoOpsStep	:= MagConvULStepSafetyBarRet;
							ELSE
								eGotoOpsStep	:= MagConvULStepMagCmp;
							END_IF
							
						ELSIF p_tyLocalBufferStat.bBffrFull = TRUE 
						//	AND p_bOutShutterExtended 
							THEN
							//Buffer Full

							IF p_bSafetyBarExtended = FALSE THEN
								eGotoOpsStep	:= MagConvULStepSafetyBarExt;
							ELSE
								eGotoOpsStep    := MagConvULStepMagExitClampCtrl;
							END_IF
							
						ELSE
							//Buffer Available
//							IF p_bSafetyBarRetracted = FALSE THEN
//								eGotoOpsStep	:= MagConvULStepSafetyBarRet;
//							ELSE
								eGotoOpsStep	:= MagConvULStepMagCmp;
//							END_IF
							
						END_IF
						
					ELSE

//						IF p_bSafetyBarExtended = FALSE THEN
//							eGotoOpsStep	:= MagConvULStepSafetyBarExt;
//						ELSE
							eGotoOpsStep	:= MagConvULStepMagUSComm;	
//						END_IF
						
					END_IF
					
					bPaused	:= p_bStop OR p_bStep;
					
				
				MagConvULStepSafetyBarExt:
					sStepTxt	:= 'Extending Safety Bar';
					
					eSafetyBarAct	:= PneuActExt;
					
					IF p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt THEN
						eSafetyBarAct	:= PneuActIdle;
						eGotoOpsStep	:= MagConvULStepChkMag;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
				MagConvULStepSafetyBarRet:
					sStepTxt	:= 'Retracting Safety Bar';
					
					eSafetyBarAct	:= PneuActRet;
					
					IF p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActRet THEN
						eSafetyBarAct	:= PneuActIdle;
					//	eGotoOpsStep	:= MagSetupULStepMagNBffrStatChk;
						eGotoOpsStep	:= MagConvULStepChkMag;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvULStepMagAWEngage:
					sStepTxt	:= 'Engaging Magazine Auto Width';
					
					eMagAWAct	:= MagAWActEngage;
					
					IF p_bMagAWEngaging = TRUE THEN
						eMagAWEngageAct	:= PneuActExt;
					END_IF
				
					IF (p_eMagAWStatus = Done AND p_eMagAWStat = MagAWActEngage) AND (p_eMagAWEngageStatus = Done AND p_eMagAWEngageStat = PneuActExt) THEN
						eMagAWAct		:= MagAWActIdle;
						eMagAWEngageAct	:= PneuActIdle;
						eGotoOpsStep	:= MagConvULStepMagAWHm;
						bPaused	:= p_bStop OR p_bStep;
						
					END_IF
					
			
					
				MagConvULStepMagAWHm:
					sStepTxt	:= 'Homing Magazine Auto Width';
					
				
					eMagAWAct	:= MagAWActHoming;
				
					IF p_eMagAWStatus = Done AND p_eMagAWStat = MagAWActHoming THEN
						eMagAWAct		:= MagAWActIdle;
						eGotoOpsStep	:= MagConvULStepMagAWMov;
						
					
					ELSIF p_bMagAWErr THEN
					
						eStatus			:= Error;
						udiStatus		:= 10009;
					END_IF
					
				MagConvULStepMagAWMov:
					sStepTxt	:= 'Moving Magazine Auto Width';
					
				
					eMagAWAct	:= MagAWActGoWidthOff;
				
				
					IF p_eMagAWStatus = Done AND p_eMagAWStat = MagAWActGoWidthOff THEN
						bMagAWDone		:= TRUE;
						eMagAWAct		:= MagAWActIdle;
						eGotoOpsStep	:= MagConvULStepMagAWDisengage;
						
						bPaused	:= p_bStop OR p_bStep;
					
					ELSIF p_bMagAWErr THEN
					
						eStatus			:= Error;
						udiStatus		:= 10009;
					END_IF
				
				MagConvULStepMagAWDisengage:
					sStepTxt	:= 'Disengaging Magazine Auto Width';
					
					eMagAWEngageAct	:= PneuActRet;
					
					IF p_eMagAWEngageStatus = Done AND p_eMagAWEngageStat = PneuActRet THEN
						eMagAWEngageAct	:= PneuActIdle;
						
						eGotoOpsStep	:= MagConvULStepSafetyBarRet;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvULStepMagCmp:
					sStepTxt	:= 'Comparing Magazine';
					
					a_tyMagAllwBffrStat[1]	:= p_tyBufferStat1;
					a_tyMagAllwBffrStat[2]	:= p_tyBufferStat2;
					a_tyMagAllwBffrStat[3]	:= p_tyBufferStat3;
					
					a_bMagAllwMagClamped[1]	:= p_bMagClampRS1;
					a_bMagAllwMagClamped[2]	:= p_bMagClampRS2;
					a_bMagAllwMagClamped[3]	:= p_bMagClampRS3;
					
					a_bMagAllwMagPresent[1]	:= p_bBufferMagPresent1 AND NOT(p_bOpsMagConvUL1MagExitedWait);
					a_bMagAllwMagPresent[2]	:= p_bBufferMagPresent2 AND NOT(bMagExitedWait);
					a_bMagAllwMagPresent[3]	:= p_bBufferMagPresent3 AND NOT(p_bOpsMagConvUL3MagExitedWait);
					
					IF NOT(bAutoRcpEn  AND p_bMcParamMESEn) THEN
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtBufferMagPresentTm1);
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtBufferMagPresentTm2);
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtBufferMagPresentTm3);
					ELSE
						a_udiMagAllwMagPresentTm[1]	:= DT_TO_UDINT(p_dtOpsMagConvUL1AcptTm);
						a_udiMagAllwMagPresentTm[2]	:= DT_TO_UDINT(p_dtOpsMagConvUL2AcptTm);
						a_udiMagAllwMagPresentTm[3]	:= DT_TO_UDINT(p_dtOpsMagConvUL3AcptTm);
						
						a_iMagMESAcptCond[1] := p_iOpsMagConvUL1MESAcptCond;
						a_iMagMESAcptCond[2] := p_iOpsMagConvUL2MESAcptCond;
						a_iMagMESAcptCond[3] := p_iOpsMagConvUL3MESAcptCond;
					END_IF

					//Sorting Priority
					memset(ADR(a_udiMagAllwPriority), 0, SIZEOF(a_udiMagAllwPriority));
					
					FOR udi := 1 TO 3 DO
						udiCount	:= 3;
						udiCmpTm	:= a_udiMagAllwMagPresentTm[udi];
						
						FOR udi1 := 1 TO 3 DO
							IF a_udiMagAllwMagPresentTm[udi1] < udiCmpTm THEN
								udiCount	:= udiCount - 1;
							END_IF
						END_FOR
						
						a_udiMagAllwPriority[udi]	:= udiCount;
					END_FOR
					
//					FOR udi := 3 TO 1 BY -1 DO
//						FOR udi1 := 3 TO 1 BY -1 DO
//							IF (udi <> udi1) AND (a_udiMagAllwPriority[udi] = a_udiMagAllwPriority[udi1]) THEN
//								a_udiMagAllwPriority[udi1]	:= a_udiMagAllwPriority[udi1] - 1;
//							END_IF
//						END_FOR
//					END_FOR
					
					//Checking Buffer Status
					memset(ADR(a_udiMagAllwSum), 0, SIZEOF(a_udiMagAllwSum));
					
					FOR udi := 1 TO 3 DO
						//Priority
						a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + a_udiMagAllwPriority[udi];
						//Enable
						IF pa_bMagDis[udi] = FALSE THEN
							a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] + 1000;
						END_IF
						//Magazine Clamped
						IF a_bMagAllwMagClamped[udi] = TRUE THEN
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
						//Customized Width Change 
						IF bAutoRcpEn THEN
							IF pa_bMagChangeOverBlk[udi] = TRUE  THEN
								a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] - 1000;	
							END_IF
							IF  p_bMcParamMESEn THEN
								IF a_iMagMESAcptCond[udi] = 0 AND  a_bMagAllwMagPresent [udi] THEN
									a_udiMagAllwSum[udi]	:= a_udiMagAllwSum[udi] - 1000;	
								END_IF
							END_IF
						END_IF
					END_FOR
					
					udiMagAllwGo	:= 99;
					
					FOR udi := 1 TO 3 DO
						IF (a_udiMagAllwSum[udi] >= 6000 AND a_udiMagAllwSum[udi] < 7000 AND pa_bMagRej[usiMagConv] = FALSE)	//Enable + Magazine Clamped + Magazine Present + Magazine Available
							OR (a_udiMagAllwSum[udi] >= 12000 AND pa_bMagRej[usiMagConv] = TRUE) THEN							//Reject + Enable + Magazine Clamped + Magazine Present + Magazine Available
							
							IF udiMagAllwGo <> 99 THEN
								//Priority
								IF a_udiMagAllwSum[udi] > a_udiMagAllwSum[udiMagAllwGo] THEN
									udiMagAllwGo	:= udi;
								END_IF
							ELSE
								udiMagAllwGo	:= udi;
							END_IF
							
						END_IF
						
					END_FOR
					
					IF udiMagAllwGo = 99 THEN
						
						FOR udi := 1 TO 3 DO
							IF (a_udiMagAllwSum[udi] >= 5500 AND a_udiMagAllwSum[udi] < 7000 AND pa_bMagRej[usiMagConv] = FALSE)	//Enable + Magazine Clamped + Magazine Present + Magazine Empty
								OR (a_udiMagAllwSum[udi] >= 11500 AND pa_bMagRej[usiMagConv] = TRUE) THEN							//Reject + Enable + Magazine Clamped + Magazine Present + Magazine Empty
								
								IF udiMagAllwGo <> 99 THEN
									//Priority
									IF a_udiMagAllwSum[udi] > a_udiMagAllwSum[udiMagAllwGo] THEN
										udiMagAllwGo	:= udi;
									END_IF
								ELSE
									udiMagAllwGo	:= udi;
								END_IF
								
							END_IF
							
						END_FOR
						
					END_IF
					
					
					IF p_bRlsMag = TRUE THEN
						eGotoOpsStep	:= MagConvULStepMagExitMnl;
					ELSIF (p_bDISOTAGVReady OR 
						 pa_bMagChangeOverBlk[p_usiMagConv] )
						AND (p_eCustomerReq = Siemens OR p_eCustomerReq = We_Fabricate) THEN
						eGotoOpsStep	:= MagConvULStepMagExitClampCtrl;	
					ELSIF p_tyLocalBufferStat.bBffrFull = TRUE AND p_bOutShutterExtended OR (p_bUSAllow = FALSE AND NOT(bAutoRcpEn)) THEN
					//	eGotoOpsStep    := MagConvULStepMagFullDSComm;
						eGotoOpsStep	:= MagConvULStepMagExitClampCtrl;
					ELSIF NOT(p_bUSAllow) AND bAutoRcpEn AND  udiMagAllwGo = p_usiMagConv THEN
						//do nothing when blocking
						sStepTxt	:= 'Comparing Mag: Waiting available magazine to change width';
						bPaused	:= p_bStop;
					ELSIF  p_bAllwChgWidth AND bAutoRcpEn THEN
						eGotoOpsStep	:= 	MagConvULStepMagAWEngage;
					ELSIF p_bAllwChgSlot AND bAutoRcpEn THEN	
						eGotoOpsStep	:= 	MagConvULStepMtyBffr;
					ELSE
						
						IF (p_bUSAllow = TRUE) AND (udiMagAllwGo <> 99) THEN
							
							IF udiMagAllwGo = p_usiMagConv THEN
								bMagBffrAvl		:= TRUE;
//								IF NOT(bAutoRcpEn AND p_tyLocalBufferStat.bBffrMty = TRUE) THEN
									eGotoOpsStep	:= MagConvULStepNxtLoadBffr;
//								ELSE
//									eGotoOpsStep	:= MagConvULStepMtyBffr;
//								END_IF
								
								bPaused	:= p_bStop OR p_bStep;
							ELSE
								bPaused	:= p_bStop;
							END_IF
							
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
					END_IF
				MagConvULStepMtyBffr:
					sStepTxt	:= 'Resetting Buffer Setting';
					eBufferAct := BufferActSetMty;
					
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActSetMty THEN
						eBufferAct		:= BufferActIdle;
						eGotoOpsStep	:= MagConvULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF	
				MagConvULStepNxtLoadBffr:
					sStepTxt	:= 'Computing Next Load Buffer';
					
					eBufferAct	:= BufferActNxtLoad;
					
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActNxtLoad THEN
						eBufferAct		:= BufferActIdle;
						eGotoOpsStep	:= MagConvULStepBffrUSComm;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvULStepBffrUSComm:
					sStepTxt	:= 'Communicating Buffer Upstream';
					
					eUSSMEMAAct	:= SMEMAActRun;
					
					IF p_bUSSMEMATransporting = TRUE THEN
						eGotoOpsStep	:= MagConvULStepBffrEntBrd;
						IF p_eNtParamProjMagBuffferActLoad = BufferActLoadWhenStarted
							THEN
								
							eBufferAct	:= BufferActLoad;
						END_IF
					ELSIF p_bRlsMag = TRUE AND (p_bOpsTravLifAllwExitMag OR p_eCustomerReq <> Siemens) THEN
						bMagBffrAvl		:= FALSE;
						eUSSMEMAAct		:= SMEMAActIdle;
						eGotoOpsStep	:= MagConvULStepMagExitMnl;
						
					ELSIF  (p_bAllwChgWidth AND NOT(p_bMcParamAutoRcpDis) ) OR p_bUSAllow = FALSE  THEN
						bMagBffrAvl		:= FALSE;
						eUSSMEMAAct		:= SMEMAActIdle;
						eGotoOpsStep	:= MagConvULStepMagCmp;
						
						bPaused	:= p_bStop OR p_bStep;
						
					ELSIF (p_tyLocalBufferStat.bBffrFull = TRUE ) //AND p_bOutShutterExtended OR p_eCustomerReq = Siemens 
						OR (p_bDISOTAGVReady AND p_bOpsTravLifAllwExitMag) THEN //OR  p_bUSAllow = FALSE THEN
						bMagBffrAvl		:= FALSE;
						eUSSMEMAAct		:= SMEMAActIdle;
						//	eGotoOpsStep    := MagConvULStepMagFullDSComm;
						eGotoOpsStep    := MagConvULStepMagExitClampCtrl;
					ELSE
					
						IF pa_bMagDis[usiMagConv] = TRUE THEN		//Checking Magazine Enable
							bMagBffrAvl		:= FALSE;
							eGotoOpsStep	:= MagConvULStepMagCmp;
							
							bPaused	:= p_bStop OR p_bStep;
						ELSE
							bPaused	:= p_bStop;
						END_IF
						
						IF bPaused = TRUE OR pa_bMagDis[usiMagConv] = TRUE THEN
							eUSSMEMAAct	:= SMEMAActIdle;
						END_IF
						
					END_IF
					
				MagConvULStepBffrEntBrd:
					IF p_bUSSMEMATransporting AND EDGEPOS(p_bUSSMEMAConvStart) THEN
						sStepTxt	:= 'Transferring Board Into Magazine';
						IF p_eNtParamProjMagBuffferActLoad = BufferActLoadWhenStarted
							THEN
								
							eBufferAct	:= BufferActLoad;
						END_IF
					
					END_IF
						
					IF p_bUSSMEMATransporting AND EDGEPOS(p_bUSSMEMAConvStop) THEN
						sStepTxt	:= 'Stop Transferring';
						//Do Nothing
					END_IF
					
					//					IF p_bUSSMEMATransporting = FALSE
					//						THEN
					//						eGotoOpsStep	:= MagConvULStepBffrUSComm;
					//					END_IF
					
					IF (p_eUSSMEMAStatus = Done AND p_eUSSMEMAStat = SMEMAActRun)
						AND (p_eConvStat = ConvActExitPshr AND p_eConvStatus = Done)
						THEN
						eUSSMEMAAct		:= SMEMAActIdle;
						eGotoOpsStep	:= MagConvULStepLoadBffr;
					END_IF
			
				MagConvULStepLoadBffr:
					sStepTxt	:= 'Loading Buffer';
					
					eBufferAct	:= BufferActLoad;
					
					IF p_eBufferStatus = Done AND p_eBufferStat = BufferActLoad THEN
						eBufferAct		:= BufferActIdle;
						bMagBffrAvl		:= FALSE;
						eGotoOpsStep	:= MagConvULStepBffrStatChk;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				MagConvULStepMagExtMESStdByChk:
					sStepTxt	:= 'Mag StdBy for MES response Before Exiting';
					bWriteRFID := TRUE;
					fbWriteRFIDTO(IN:= bWriteRFID,PT := DINT_TO_TIME(p_diMcParamMESResponseTO) );
					IF p_tyResponseFromMES.bRFIDWriteComplete  THEN //Accept
						IF ePrevStepBeforeMESStdBy = MagConvULStepMagExitMnl THEN
							eGotoOpsStep := MagConvULStepMagExitMnl;
						ELSIF ePrevStepBeforeMESStdBy = MagConvULStepMagExitClampCtrl THEN
							eGotoOpsStep := MagConvULStepMagExitClampCtrl;
						END_IF
					ELSIF fbWriteRFIDTO.Q AND p_bRlsMag THEN 
						sStepTxt	:= 'MES response to Write RFID Timeout, Press Rls Mag to Manual Exit ';
						
						eGotoOpsStep := MagConvULStepMagExitMnl;
						
					END_IF

					bPaused	:= p_bStop OR p_bStep;
					
				MagConvULStepMagExitClampCtrl:
					sStepTxt	:= 'Extending Selection Clamp';

					eSelClampCtrl := PneuActExt;
					eMagAWEngageAct	:= PneuActRet;	
					ePrevExitStep := MagConvULStepMagExitClampCtrl;
					IF (p_eSelClampCtrlStat = PneuActExt AND p_eSelClampCtrlStatus = Done)
						OR (p_eMagAWEngageStat = PneuActRet AND p_eMagAWEngageStatus = Done) 
						THEN
						eMagAWEngageAct	:= PneuActIdle;
						eSelClampCtrl	:= PneuActIdle;
						eGotoOpsStep    := MagConvULStepMagExitSafeBarCtrl;
						bPaused	:= p_bStop OR p_bStep;
					END_IF
				
					
				MagConvULStepMagExitSafeBarCtrl:	
					IF p_bSafetyBarExtended = FALSE THEN
						eSafetyBarAct	:= PneuActExt;
					
						IF p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt THEN
							eSafetyBarAct	:= PneuActIdle;
							eGotoOpsStep    := MagConvULStepMagFullDSComm;
						
							bPaused	:= p_bStop OR p_bStep;
						END_IF
					ELSE
						eGotoOpsStep    := MagConvULStepMagFullDSComm;
					END_IF
					
					
				MagConvULStepMagFullDSComm:
					sStepTxt	:= 'Communicating AGV Machine And Ready Exit';
					
					eAGVMagAct	:= AGVMagActExit;
					IF bMagAutoEx THEN
						eDSSOTAct	:= SOTActRun;
					ELSE
						eDSSOTAct	:= SOTActIdle;
					END_IF
					
					IF p_bAGVMagMcRunRdy = TRUE THEN
						eGotoOpsStep	:= MagConvULStepMagFullExit;
						
					ELSIF p_bRlsMag = TRUE  
						OR (p_tyLocalBufferStat.bBffrFull AND p_bDIOutShutterClosedRS2 ) //p_bOutShutterExtended ) 
						OR (pa_bMagChangeOverBlk[p_usiMagConv] = TRUE AND bAutoRcpEn)
						OR (p_bUSAllow = FALSE AND NOT(bAutoRcpEn) )THEN 
						eAGVMagAct		:= AGVMagActIdle;
						eGotoOpsStep	:= MagConvULStepMagExitMnl;
						
					ELSE
						bPaused	:= p_bStop;
						
						IF bPaused = TRUE THEN
							eAGVMagAct	:= AGVMagActIdle;
						END_IF
						
					END_IF
					
				MagConvULStepMagFullExit:
					sStepTxt	:= 'Magazine Conveyor Exiting Magazine';
					
					eMagConv2ClpAct	:= MagConv2ClpActExitClpr;
					eSelClampCtrl	:= PneuActExt;
					
					IF ((p_eAGVMagStatus = Done AND p_eAGVMagStat = AGVMagActExit) 
						OR (p_eDSSOTStatus = Done AND p_eDSSOTStat = SOTActRun))
						AND (p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActExitClpr) 
						AND (p_eSelClampCtrlStatus = Done AND p_eSelClampCtrlStat = PneuActExt) 
						THEN
						eDSSOTAct			:= SOTActIdle;
						eAGVMagAct			:= AGVMagActIdle;
						eMagConv2ClpAct		:= MagConv2ClpActIdle;
						eSelClampCtrl		:= PneuActIdle;
						eGotoOpsStep		:= MagConvULStepMagExitedAGVWait;
						bMagSizeLarge := FALSE;
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvULStepMagExitedAGVWait:
					sStepTxt  := 'Magazine Exited and wait for AGV Leave';
					
					IF bAIVInPos = FALSE OR p_bBufferMagRemoved THEN
						ePrevExitStep 		:= MagConvULStepNA;
						iMagMESAcptCond 	:= 0;
						eGotoOpsStep        := MagConvULStepMagUSComm;
						eDSSOTAct			:= SOTActIdle;
					
					END_IF
					
					bPaused   := p_bStop OR p_bStep;
					
				MagConvULStepMagExitMnl:
					sStepTxt	:= 'Magazine Conveyor Exiting Magazine Manually';
					
					IF p_bProjLifTravMnlLoad = FALSE THEN
						eMagConv2ClpAct	:= MagConv2ClpActPreExitClpr;
						eSelClampCtrl	:= PneuActExt;
						eSafetyBarAct	:= PneuActExt;
					ELSE
						eGotoOpsStep		:= MagConvULStepMagExitedWait; //no roller
					END_IF
					ePrevExitStep := MagConvULStepMagExitMnl;
					IF ((p_eMagConv2ClpStatus = Done AND p_eMagConv2ClpStat = MagConv2ClpActPreExitClpr) OR EDGENEG(p_bDIMagFixedClampSen) )
						AND (p_eSelClampCtrlStatus = Done AND p_eSelClampCtrlStat = PneuActExt)
						AND (p_eSafetyBarStatus = Done AND p_eSafetyBarStat = PneuActExt)
						THEN
						eSelClampCtrl	:= PneuActIdle;
						eSafetyBarAct	:= PneuActIdle;
						eMagConv2ClpAct		:= MagConv2ClpActIdle;
						eGotoOpsStep		:= MagConvULStepMagExitedWait;
						
						bPaused	:= p_bStop OR p_bStep;
					END_IF
					
				MagConvULStepMagExitedWait:
					sStepTxt	:= 'Magazine Exited And Waiting For Remove';
					eAGVMagAct 	:= AGVMagActExit;
					IF bMagAutoEx THEN
						eDSSOTAct	:= SOTActRun;
					ELSE
						eDSSOTAct	:= SOTActIdle;
					END_IF
					
					bMagExitedWait	:= TRUE;
					
					fbEntSenOff(IN:= p_bLocalMagEntrySen = FALSE AND (NOT((p_bLocalBufferMagPresent OR p_bMag2OrientationChkSen1) AND p_bProjLifTravMnlLoad)));
					IF fbMagRemovedTm.Q OR fbEntSenOff.Q THEN
						bMagExitedWait	:= FALSE;
						ePrevExitStep 		:= MagConvULStepNA;
						iMagMESAcptCond 	:= 0;
						eGotoOpsStep	:= MagConvULStepMagUSComm;
						eDSSOTAct	:= SOTActIdle;
						
					ELSIF p_bNewMag = TRUE THEN
						bMagExitedWait	:= FALSE;
						eAGVMagAct 	:= AGVMagActIdle;
						ePrevExitStep 		:= MagConvULStepNA;
						iMagMESAcptCond 	:= 0;
						eGotoOpsStep	:= MagConvULStepMagEntMnl;
						eDSSOTAct			:= SOTActIdle;
					END_IF
					
					IF p_bAGVMagMcRunRdy = TRUE THEN
						eGotoOpsStep 	:= MagConvULStepMagFullExit;
					ELSIF p_bDSSOTConvStart= TRUE THEN
						eGotoOpsStep 	:= MagConvULStepMagFullExit;
					END_IF
					
					
					bPaused	:= p_bStop OR p_bStep;
				
			END_CASE
			
		END_IF
		
	END_IF
	
	bNewMagAllw	:= eOpsStep = MagConvULStepMagUSComm;
				
	bRlsMagAllw	:= ((eOpsStep = MagConvULStepMagCmp 
					OR eOpsStep = MagConvULStepBffrUSComm 
					OR eOpsStep = MagConvULStepMagFullDSComm
					OR eOpsStep = MagConvULStepBffrEntBrd
					OR (eOpsStep = MagConvULStepMagEntMESStdByChk AND fbReadRFIDTO.Q ) 
					OR (eOpsStep = MagConvULStepMagExtMESStdByChk AND fbWriteRFIDTO.Q) )
					);
	bEjectMESStep		:= 	eGotoOpsStep =  MagConvULStepMagExitMnl;
//	bEjectMESStep		:= 	eOpsStep = MagConvULStepMagEntMESStdByChk OR eOpsStep = MagConvULStepMagExtMESStdByChk	; //MES
//	bEjectMagNotAllw	:= NOT((eOpsStep = MagConvULStepMagEntMESStdByChk AND fbReadRFIDTO.Q)
//						OR (eOpsStep = MagConvULStepMagExtMESStdByChk AND fbWriteRFIDTO.Q));

	
	Act_OpsInfo;
	
	//Operation State
	bOpsInitDone		:= eOpsStep > MagConvULStepInitMagConv;
	bStepMagExitedWait	:= eOpsStep = MagConvULStepMagExitedWait;						
	bStepMagVerification := eOpsStep = MagConvULStepVerifyMag;
	bStepMagFullExit := eOpsStep = MagConvULStepMagFullExit;
	bStepMagUSCom := eOpsStep = MagConvULStepMagUSComm;	
	
	bAGVComm2Rdy				:= (eOpsStep = MagConvULStepMagUSComm OR eOpsStep = MagConvULStepMagFullDSComm OR eOpsStep = MagConvULStepMagExitedWait
									OR eOpsStep = MagConvULStepMagEnt OR eOpsStep = MagConvULStepMagFullExit) AND p_bAGVMagMcRunRdy;
	
	bStepOpsMagAWDone 			:= eOpsStep = MagConvULStepMagAWMov AND eGotoOpsStep = MagConvULStepMagAWDisengage; 
	bStepOpsPitchUpdated		:= eOpsStep = MagConvULStepMtyBffr AND eGotoOpsStep = MagConvULStepMagCmp; 
	bStepPLCGrab				:= p_tyLocalBufferStat.bBffrMty AND EDGEPOS(p_bMagPresentSen);
END_ACTION
