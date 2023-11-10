(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	IF p_bLinkOpsRun AND p_bPrep THEN
		p_bDis := p_bMagRcpCurrRcpSBarDisabled;
	ELSE
		p_bDis := FALSE;
	END_IF
		
	
END_ACTION
