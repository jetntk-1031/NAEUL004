(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	IF p_bLinkOpsRun THEN
		p_bDis := p_bLinkMcParamInShutDis AND p_bLinkInitOpsTravULDone;
	ELSE
		p_bDis := FALSE;
	END_IF
	
END_ACTION
