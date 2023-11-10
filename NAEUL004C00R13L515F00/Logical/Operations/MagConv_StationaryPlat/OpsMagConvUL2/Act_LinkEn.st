(** 2019-01-11 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	bAutoRcpEn := p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis);
END_ACTION
