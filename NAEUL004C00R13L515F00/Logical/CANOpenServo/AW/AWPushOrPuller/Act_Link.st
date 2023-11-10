(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diMoveVelInUMPS ACCESS p_UIMnlAWPushOrPullerNomSpd;
		IF p_diLinkMnlGoWidth < p_diWidthAtHmPos THEN
			p_diGoWidth := p_diWidthAtHmPos;
		ELSE
			p_diGoWidth	:= p_diLinkMnlGoWidth;
		END_IF
			
	ELSE
		p_diGoWidth := (p_diLinkProdSelWidth/2) + p_diLinkPshrOffset;
		
		p_diMoveVelInUMPS ACCESS p_NtParamAWPushPulAutoSpd;
		
		IF p_diGoWidth <= p_diWidthAtHmPos THEN
			p_diGoWidth := p_diWidthAtHmPos + 3000;
		ELSE
			p_diGoWidth := (p_diLinkProdSelWidth/2) + p_diLinkPshrOffset;
			
		END_IF
		
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
	
	p_bInterruptSensor := bInterruptSensor2 OR bInterruptSensor1;
	
END_ACTION
