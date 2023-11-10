(** 2019-04-16 **)
ACTION Act_Background:
	
	//Reset bPaused
	IF EDGENEG(p_bStop OR p_bStep) THEN
		bPaused	:= FALSE;
	END_IF
	
	IF eStatus <> Error AND p_bRun = TRUE THEN
		IF (p_bEn = TRUE) AND (p_bDis = FALSE) THEN
			Act_OpsRun;
		ELSE
			bPaused	:= p_bStop OR p_bStep;
		END_IF
		
		IF EDGEPOS(p_bEn = FALSE OR p_bDis = TRUE) THEN
			Act_OpsRst;
		END_IF
		
	ELSIF eStatus <> Error THEN
		sStepTxt	:= 'Stop';
	ELSE
		sStepTxt	:= 'Error';
	END_IF
	
	//Reset
	IF EDGENEG(p_bRun) OR EDGEPOS(eStatus = Error) THEN
		Act_OpsInitial;
		Act_OpsRst;
	END_IF
	
	//Reset Error
	IF (eStatus = Error) AND bRstErr THEN
		eStatus		:= Idle;
		udiStatus	:= 0;
	END_IF
	

	//Always Run & Update
	IF p_bBufferMagPresent2 = FALSE
		OR (EDGENEG(p_bMcParamMagAWDis) AND p_tyBufferStat2.bBffrMty)
		THEN
		bMagAWDone	:= FALSE;
		
	END_IF
	
	IF (EDGENEG(p_bMcParamMagAWDis) AND p_tyBufferStat2.bBffrMty = FALSE)
		THEN
			bMagExitedWait:= TRUE;
			bNewMagVerified := FALSE;
	END_IF
	
//	IF  (EDGENEG(p_bMcParamAutoRcpDis) OR EDGEPOS(p_bMcParamAutoRcpDis))AND p_tyBufferStat3.bBffrMty = FALSE THEN
//		bMagExitedWait:= TRUE;
//		ePrevExitStep := MagConvULStepMagExitMnl;
//	END_IF
	IF p_usiUIHcomModchanged <> usiPrevHcomModchanged THEN //Flush out Magazine
		ePrevExitStep := MagConvULStepMagExitMnl;
		usiPrevHcomModchanged := p_usiUIHcomModchanged;
	END_IF 
	
	fbMagRemovedTm(IN:= p_bMagPresentSen = FALSE AND p_bMagEntrySen = FALSE AND p_bDIMagFixedClampSen = FALSE AND p_bBufferMagRemoved);
	IF fbMagRemovedTm.Q  THEN
		iMagMESAcptCond 	:= 0;
		bMagExitedWait := FALSE;
		ePrevExitStep := MagConvULStepNA;
	END_IF

END_ACTION
