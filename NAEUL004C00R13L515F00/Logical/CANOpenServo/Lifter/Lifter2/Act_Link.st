(** 2019-03-29 **)
ACTION Act_Link:
	
//	p_bInterruptSensor1  	:= NOT p_bLinkLifterSafetySen1;
//	p_bInterruptSensor2		:= NOT p_bLinkLifterSafetySen2;	 
	IF p_bLinkProjLifterMagPlatform THEN
	
		p_diASltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diBSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
		p_diCSltToSltDist ACCESS p_MagRcpCurrRcpSltToSlt;
	ELSE
		
		p_diASltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diBSltToSltDist	:= p_diLinkSltToSltDist * -1;
		p_diCSltToSltDist	:= p_diLinkSltToSltDist * -1;
	
	END_IF
	
	IF p_bManual = TRUE THEN
		p_diGoBSlt ACCESS p_UIMnlLifter2Mag2GoSlt;
		p_diMoveVelInUMPS ACCESS p_UIMnlLifter2NomSpd;
	ELSE
		p_diGoBSlt ACCESS p_Buffer2NxtLoadSlt;
		p_diMoveVelInUMPS ACCESS p_NtParamLifterAutoSpd;
	END_IF
	
END_ACTION
