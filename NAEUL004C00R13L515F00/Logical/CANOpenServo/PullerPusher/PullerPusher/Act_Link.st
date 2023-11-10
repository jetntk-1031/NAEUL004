(** 2019-03-29 **)
ACTION Act_Link:
	
//	IF p_bManual = TRUE THEN
//		p_diMoveVelInUMPS ACCESS p_UIMnlPPNomSpd;
//		p_diJogVelInUMPS ACCESS p_UIMnlPPJogSpd;
//	ELSE
//		p_diMoveVelInUMPS ACCESS p_NtParamAWAutoSpd;
//	END_IF
	
//	IF p_bProjInletShutPrep = TRUE THEN
//
//		IF p_bInletShutterCloseRS
//			THEN
//			bInterruptSensor1 := TRUE;
//		ELSE
//			bInterruptSensor1 := FALSE;	
//		END_IF
//	ELSE
//		bInterruptSensor1 := FALSE;	
//	END_IF


//	IF p_bProjOutletShutPrep = TRUE THEN
//		IF p_bOutletShutterCloseRS AND p_eAct = PPActJogOpen 
//			THEN
//			bInterruptSensor2 := TRUE;
//		ELSE
//			bInterruptSensor2 := FALSE;	
//		END_IF
//	ELSE
//		bInterruptSensor2 := FALSE;	
//	END_IF

	
	
//	IF usiJogFwdStep = 40 AND p_eAct = PPActJogOpen THEN
//		p_bInterruptSensor	:= NOT p_bMagWidthChkSen;
//	END_IF
//	
//	IF usiJogRevStep = 40 AND p_eAct = PPActJogClose THEN
//		p_bInterruptSensor  := NOT p_bMagWidthChkSen;
//	END_IF
//	
//	IF p_eAct = PPActIdle OR p_eAct = PPActStop THEN
//		p_bInterruptSensor  := FALSE;
//	END_IF
	
//	p_bInterruptSensor := bInterruptSensor2 OR bInterruptSensor1;// OR p_bLinkSafetyRelay = FALSE;
	
	
END_ACTION
