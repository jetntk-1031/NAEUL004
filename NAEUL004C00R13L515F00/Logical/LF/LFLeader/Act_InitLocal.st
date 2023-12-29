(** 2020-08-06 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_eAct ACCESS ADR(eAct);

	p_sReqProdRcpNm ACCESS ADR(sReqProdRcpNm);
	p_diReqProdWidth ACCESS ADR(diReqProdWidth);
	p_sReqMagRcpNm ACCESS ADR(sReqMagRcpNm);

	p_sLeaderProgTagNm ACCESS ADR(sLeaderProgTagNm);
	p_sFollowerProgTagNm ACCESS ADR(sFollowerProgTagNm);
	

	p_bWidth2Prep ACCESS ADR(bWidth2Prep);
	p_bLFSeqStayActive ACCESS ADR(bLFSeqStayActive);
	
END_ACTION
