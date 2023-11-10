(** 2019-04-26 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	//p_bDis	:= (p_bLinkStartupRun = TRUE);
	p_bPrep	:= p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis);
	
	
	
END_ACTION
