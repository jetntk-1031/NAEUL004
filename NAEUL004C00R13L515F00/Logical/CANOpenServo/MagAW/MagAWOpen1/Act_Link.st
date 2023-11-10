(** 2019-03-29 **)
ACTION Act_Link:
	
	IF p_bManual = TRUE THEN
		p_diGoWidth ACCESS p_UIMnlMagAW1GoWidth;
		p_diMoveVelInUMPS ACCESS p_UIMnlMagAW1NomSpd;
	ELSE
		p_diMoveVelInUMPS ACCESS p_NtParamMagAW1AutoSpd;
		IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN
			p_diGoWidth ACCESS p_diAutoRcpMag1Width;
		ELSE
			p_diGoWidth ACCESS p_ProdRcpCurrRcp1Width;
		END_IF
	END_IF
	
	p_bInterruptSensor	:= (p_bLinkOpsRun OR eStat = MagAWActEngage) AND NOT p_bLinkDIMagPresentSen;
	
END_ACTION
