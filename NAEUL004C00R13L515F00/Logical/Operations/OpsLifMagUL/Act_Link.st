(** 2018-12-11 **)
ACTION Act_Link:
	
	//Upstream Allowed
	
	p_bUSAllow	:=  p_bLinkFollower2USAllow AND p_sProdRcpCurrRcp1Name = p_sProdRcpCurrRcp2Name;// OR p_bLinkTravULUSWidthChkBrdExist ;
	
	
	//Lifter status
	IF p_bMagConvLanePrep AND p_bMagConvLane2Prep THEN
		IF usiMag1Rdy = LifterLoadPos AND p_bLinkDIInMagConvExtSen THEN
			usiMag1Rdy := LifterLoadRdyTrans;
		ELSIF usiMag1Rdy = LifterUnloadPos AND p_bLinkDIOutMagConvEntSen = FALSE AND p_bLinkDIOutMagConvMidSen = FALSE 
			AND p_bOpsOutMagConvStepInitDone AND p_bLinkOpsOutMagConvStepWaitRmv = FALSE THEN
			usiMag1Rdy := LifterUnloadRdyTrans;
		END_IF
		
		
		IF p_usiMag2Rdy = LifterLoadPos AND p_bLinkDIInMagConv2ExtSen THEN
			p_usiMag2Rdy := LifterLoadRdyTrans;
		ELSIF p_usiMag2Rdy = LifterUnloadPos AND p_bLinkDIOutMagConv2EntSen = FALSE AND p_bLinkDIOutMagConv2MidSen = FALSE 
			AND p_bOpsOutMagConv2StepInitDone AND p_bLinkOpsOutMagConv2StepWaitRmv = FALSE THEN
			p_usiMag2Rdy := LifterUnloadRdyTrans;
		END_IF
	END_IF
END_ACTION