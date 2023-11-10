(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diMoveVelInUMPS ACCESS p_UIMnlTravNomSpd;
	ELSE
		p_diMoveVelInUMPS ACCESS p_NtParamTravAutoSpd;
	END_IF


	IF p_bProjInletShutPrep = TRUE AND p_bInShutterDis = FALSE AND p_bLinkOpsTravLifULInDSPos = FALSE AND (p_bOps OR p_bManual) THEN
	
		IF (p_bInletShutterCloseRS = FALSE AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen
			THEN
			p_bInterruptSensor1 := TRUE;
		ELSE
			p_bInterruptSensor1 := FALSE;	
		END_IF
	ELSE
		p_bInterruptSensor1 := FALSE;	
	END_IF
	

	IF p_bProjOutletShutPrep = TRUE AND p_bLinkOpsTravLifULInDSPos = FALSE THEN
		IF ((p_bOutletShutterCloseRS = FALSE OR p_bOutletShutterCloseRS2 = FALSE OR p_bOutletShutterCloseRS3 = FALSE) AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen
			THEN
			p_bInterruptSensor2 := TRUE;
		ELSE
			p_bInterruptSensor2 := FALSE;	
		END_IF
	ELSE
		p_bInterruptSensor2 := FALSE;	
	END_IF
	
	
	IF p_bDIConvLftSen OR p_bDIConvClrSen THEN
		p_bInterruptSensor3 := TRUE;
	ELSE
		p_bInterruptSensor3 := FALSE;
	END_IF
	
	
	//Add

	
	IF NOT p_bOps THEN
		p_bInterruptSensor1	:= FALSE;
		p_bInterruptSensor2 := FALSE;

	END_IF
	
	
	IF p_bLinkNtParamProjUsFixToFixRail THEN
		p_diBPos := p_diAPos + p_diLinkFixtoFixPosIn - p_tyProdRcpCurrRcp.diWidthInUM;
	ELSE
		p_diBPos := p_diLinkMcParamTravPosB;
	END_IF	
	
	IF p_bLinkTravGotoChkPt THEN // To Check the Magazine Width - Offset of Traverser
		p_diDPos := p_diLinkDPos + p_diLinkTravGotoChkPtDist1;
		p_diEPos := p_diLinkEPos + p_diLinkTravGotoChkPtDist2;
		p_diFPos := p_diLinkFPos + p_diLinkTravGotoChkPtDist3;
	ELSE
		p_diDPos := p_diLinkDPos;
		p_diEPos := p_diLinkEPos;
		p_diFPos := p_diLinkFPos;
	END_IF
		
//	p_bInterruptSensor3 := p_bLinkSafetyRelay = FALSE;
	
END_ACTION
