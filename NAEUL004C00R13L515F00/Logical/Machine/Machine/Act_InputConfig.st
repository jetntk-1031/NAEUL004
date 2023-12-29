(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	
	//Pass Data To Internal Use

	tylocalMachine.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	tylocalMachine.In.diProdRcpCurrRcpWidth ACCESS p_ProdRcpCurrRcp0Width;
	tylocalMachine.In.diMagRcpCurrRcpMaxWidth ACCESS p_MagRcpCurrRcpMagMaxBrdWidth;
	tylocalMachine.In.sProgNm := g_tyNtParamCurr.sMcParamProgNm;

	
	(* Always Change If Project Change *)
	
END_ACTION
