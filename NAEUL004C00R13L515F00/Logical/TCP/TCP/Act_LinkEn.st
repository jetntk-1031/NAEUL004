(** 2019-03-15 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	bEn := p_eLinkAGVComProtocol = McSetAGVTCPEnableTCP;
	
	IF p_bEn THEN
		bRun := TRUE;
	ELSE 
		bRun := FALSE;
	END_IF

	
END_ACTION
