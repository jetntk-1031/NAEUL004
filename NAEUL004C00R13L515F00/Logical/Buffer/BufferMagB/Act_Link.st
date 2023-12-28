(** 2019-01-30 **)
ACTION Act_Link:
	
	IF tylocalBufferMag.In.bNtParamAutoRcpPrep AND NOT(tylocalBufferMag.In.bMcParamAutoRcpDis) THEN //AutoRcp Ignored Follower
		tylocalBufferMag.In.usiProRcpProdSelMcMod ACCESS p_ProdRcpCurrRcp0McMod;
	ELSE
		tylocalBufferMag.In.usiProRcpProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;	
	END_IF
	

	
END_ACTION
