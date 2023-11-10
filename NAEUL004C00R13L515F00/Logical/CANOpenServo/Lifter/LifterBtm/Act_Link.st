(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bLinkProjLifterMagPlatform THEN
	
		p_diASltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diBSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diCSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	ELSE
		
		p_diASltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diBSltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diCSltToSltDist	:= p_diLinkSltToSltDist * -1;
	
	END_IF
		
	p_bInterruptSensor1	:= NOT p_bLinkDILifterTimingBeltSen;
	p_bInterruptSensor2	:= NOT p_bLinkDILifterSafetyLmtSW1;// OR p_bLinkSafetyRelay = FALSE;
	p_bInterruptSensor3	:= NOT p_bLinkDILifterSafetyLmtSW2;
	
	IF p_bProjInletShutPrep = TRUE 
		AND p_bLinkOpsTravLifULInDSPos = FALSE 
		AND p_bLinkProjLifterMagPlatform = FALSE AND p_bInShutterDis = FALSE AND (p_bOps OR p_bManual)
		THEN
	
		IF (p_bInletShutterCloseRS = FALSE AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen
			THEN
			p_bInterruptSensor4 := TRUE; //no retract slow sensor
		ELSE
			p_bInterruptSensor4 := FALSE;	
		END_IF
	ELSE
		p_bInterruptSensor4 := FALSE;	
	END_IF
	

	IF p_bProjOutletShutPrep = TRUE AND p_bLinkOpsTravLifULInDSPos = FALSE THEN
		IF ((p_bOutletShutterCloseRS = FALSE OR p_bOutletShutterCloseRS2 = FALSE OR p_bOutletShutterCloseRS3 = FALSE) AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen
			THEN
			p_bInterruptSensor5 := TRUE;
		ELSE
			p_bInterruptSensor5 := FALSE;	
		END_IF
	ELSE
		p_bInterruptSensor5 := FALSE;	
	END_IF
	
	
	IF (NOT(p_bLinkProjLifterMagPlatform) AND p_bDIConvLftSen) OR p_bDIConvClrSen  THEN
		p_bInterruptSensor6 := TRUE;
	ELSE
		p_bInterruptSensor6 := FALSE;
	END_IF
	
	IF NOT p_bOps THEN
		p_bInterruptSensor4 := FALSE;
		p_bInterruptSensor5 := FALSE;
	END_IF
	
	
	IF p_bManual = TRUE THEN
		p_diGoASlt ACCESS p_UIMnlLifterBtmMag1GoSlt;
		p_diGoBSlt ACCESS p_UIMnlLifterBtmMag2GoSlt;
		p_diGoCSlt ACCESS p_UIMnlLifterBtmMag3GoSlt;
		
		p_diMoveVelInUMPS ACCESS p_UIMnlLifterBtmNomSpd;
		
	ELSE
		IF p_bLinkOpsTravLifULMagWidthChk AND p_usiOpsTravLifULMagWidthChkStep > 5 THEN //go slot 1 when toptoBtm and magWidthChk
			p_diGoASlt ACCESS ADR(diGoASlt);
			p_diGoBSlt ACCESS ADR(diGoASlt);
			p_diGoCSlt ACCESS ADR(diGoASlt);
		ELSE
			p_diGoASlt ACCESS p_Buffer1NxtLoadSlt;
			p_diGoBSlt ACCESS p_Buffer2NxtLoadSlt;
			p_diGoCSlt ACCESS p_Buffer3NxtLoadSlt;
		END_IF
		IF p_bLinkProjLifterMagPlatform AND p_bLinkProjMagConvLane1Prep = FALSE THEN
			p_diMoveVelInUMPS ACCESS ADR(diMoveVelInUMPS);//50000 in open area
		ELSE
			p_diMoveVelInUMPS ACCESS p_NtParamLifterAutoSpd;
		END_IF
	END_IF
	
	IF tyParamOut.bPosDiff = FALSE THEN
		tyParamOutDriver.uiCtrlword_6040.4	:= FALSE;
	END_IF
	
	
	
END_ACTION
