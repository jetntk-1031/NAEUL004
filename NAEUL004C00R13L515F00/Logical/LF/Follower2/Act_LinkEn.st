(** 2019-04-26 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	p_bDis	:= (p_bLinkStartupRun = TRUE);
	p_bPrep := NOT(p_bCustomizedWidthPrep) OR p_bMcParamAutoRcpDis; 
END_ACTION
