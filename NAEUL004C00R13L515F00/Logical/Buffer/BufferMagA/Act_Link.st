(** 2019-01-30 **)
ACTION Act_Link:
	
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) AND p_eNtParamAutoRcpPrecededBy = PrecededBySelf THEN //AutoRcp Ignored Follower
		p_usiMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp0McMod;
	ELSE
		p_usiMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;	
	END_IF
	

	
END_ACTION
