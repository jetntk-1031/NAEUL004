ACTION Act_OpsStopper:

	//Additional Script for Inlet Stopper

	IF eOpsStep <> TravLifULStepUSComm AND eOpsStep <> TravLifULStepInitConv AND  eOpsStep <>  TravLifULStepEntBrd AND eOpsStep <> TravLifULStepStopperRet THEN
		IF  p_bStopperUnBlkCtrl THEN// AND p_bDIInletStopperASen = FALSE THEN //(p_bAWWidthPosDiff OR NOT(p_bUSAllow)) AND
			eInletStopperAct	:= PneuActExt;
		END_IF  	
	END_IF
	IF eOpsStep = TravLifULStepUSComm  THEN
		IF p_bStopperUnBlkCtrl = FALSE AND (p_bLocalUSSMEMATransporting = TRUE OR p_bLocalUSHermesTransporting = TRUE) THEN //AND p_bDIInletStopperASen = TRUE THEN
			eInletStopperAct	:= PneuActRet;
		ELSIF p_bStopperUnBlkCtrl = TRUE AND (p_bLocalUSSMEMATransporting = FALSE AND p_bLocalUSHermesTransporting =  FALSE) THEN
			eInletStopperAct	:= PneuActExt;
		END_IF 
	END_IF
	IF eOpsStep =  TravLifULStepInitConv OR eOpsStep =  TravLifULStepEntBrd THEN  //--> stopper sensor --> stopper --> inlet shutter --> inlet sensor
		IF EDGENEG(p_bDIInletStopperASen)  THEN
			bBrdOnStopperSen  := TRUE;
		END_IF
		fbInletStopperOffTim(IN := bBrdOnStopperSen,PT := DINT_TO_TIME(p_diMcParamInStprExtDelayTm) );
		
		IF p_bConvLftSen OR p_bConvRgtSen THEN
			bStopperBrdOnSen	:= TRUE;
		END_IF
		
		IF bStopperBrdOnSen   THEN
			IF NOT(p_bConvLftSen)   THEN
				eInletStopperAct	:= PneuActExt;
			END_IF
		END_IF
		IF bBrdOnStopperSen THEN
			IF fbInletStopperOffTim.Q THEN
				eInletStopperAct	:= PneuActExt;	
			END_IF
		END_IF
	END_IF


	IF p_bStopperUnBlkCtrl THEN //retract
		IF p_eInletStopperStatus = Done AND p_eInletStopperStat = PneuActRet THEN
			eInletStopperAct	:= PneuActIdle;
		END_IF
	END_IF
	
	IF p_bStopperUnBlkCtrl = FALSE THEN	//exted
		IF p_eInletStopperStatus = Done AND p_eInletStopperStat = PneuActExt THEN
			eInletStopperAct	:= PneuActIdle;
		END_IF
		bStopperBrdOnSen	:= FALSE;
		bBrdOnStopperSen	:= FALSE;
		fbInletStopperOffTim(IN := FALSE);
	END_IF
	
END_ACTION
