(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diGoWidth ACCESS p_UIMnlAWGoWidth;
		p_diMoveVelInUMPS ACCESS p_UIMnlAWNomSpd;
	ELSE
		IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis)  THEN 
			CASE p_eNtParamAutoRcpPrecededBy OF 
				PrecededBySelf:
					p_diGoWidth ACCESS p_diAutoRcpTravLifWidth;
				PrecededByF1:
					p_diGoWidth ACCESS p_ProdRcpCurrRcp1Width;
			END_CASE
		ELSE
			p_diGoWidth ACCESS p_ProdRcpCurrRcp1Width;
		END_IF
		p_diMoveVelInUMPS ACCESS p_NtParamAWAutoSpd;
	END_IF
		
	
	IF p_bProjInletShutPrep = TRUE AND p_bInShutterDis = FALSE AND (p_bOps OR p_bManual) THEN
		IF (p_bInletShutterCloseRS = FALSE AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen THEN
			bInterruptSensor1 := TRUE;
		ELSE
			bInterruptSensor1 := FALSE;	
		END_IF
	ELSE
		bInterruptSensor1 := FALSE;	
	END_IF
		
	IF p_bProjOutletShutPrep = TRUE AND (p_bOps OR p_bManual)THEN
		IF ((p_bOutletShutterCloseRS = FALSE OR p_bOutletShutterCloseRS2 = FALSE OR p_bOutletShutterCloseRS3 = FALSE) AND NOT p_bOps) OR p_bPusherRetSen = FALSE OR p_bPusherExtSen THEN
			bInterruptSensor2 := TRUE;
		ELSE
			bInterruptSensor2 := FALSE;	
		END_IF
	ELSE
		bInterruptSensor2 := FALSE;	
	END_IF
	
	IF NOT p_bOps THEN
		bInterruptSensor1	:= FALSE;
		bInterruptSensor2   := FALSE;
		p_bInterruptSensor	:= FALSE;
	END_IF
	
	p_bInterruptSensor := bInterruptSensor2 OR bInterruptSensor1;// OR p_bLinkSafetyRelay = FALSE;
	
	
	
END_ACTION
