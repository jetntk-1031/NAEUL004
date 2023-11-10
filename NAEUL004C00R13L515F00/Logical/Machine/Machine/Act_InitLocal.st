(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiRstErr ACCESS ADR(udiRstErr);
	
	p_bOpsRun ACCESS ADR(bOpsRun);
	p_diProdRcpCurrRcpWidth ACCESS ADR(diProdRcpCurrRcpWidth);
	p_diMagRcpCurrRcpMaxWidth ACCESS ADR(diMagRcpCurrRcpMaxWidth);
	
	p_sProgNm ACCESS ADR(sProgNm);
	p_bNtSettingsLoadDone ACCESS ADR(bNtSettingsLoadDone);
	
END_ACTION
