(** 2020-08-06 **)
ACTION Act_InitLocal:
	
//Input Reference Link To Local Variable
	p_sMagRcpNm ACCESS ADR(sMagRcpNm);
	p_bUIProdAccData ACCESS ADR(bUIProdAccData);
	p_bUIProdUpdtData ACCESS ADR(bUIProdUpdtData);
	p_bUIMagAccData ACCESS ADR(bUIMagAccData);
	pa_tyProdRcpList ACCESS ADR(a_tyProdRcpList);
	p_tyCurrProdRcp ACCESS ADR(tyCurrProdRcp);
	p_sCurrMagRcpNm ACCESS ADR(sCurrMagRcpNm);
	p_bAccNewRcpCond ACCESS ADR(bAccNewRcpCond);
	p_bUpdtNewRcpCond ACCESS ADR(bUpdtNewRcpCond);
	p_bAutoUpdtData ACCESS ADR(bAutoUpdtData);
	p_sInfoMsg ACCESS ADR(sInfoMsg);
	p_bInternalUse ACCESS ADR(bInternalUse);
	p_tyInternalReqProdRcp ACCESS ADR(tyInternalReqProdRcp);
	p_bNewBrdEnteredCond ACCESS ADR(bNewBrdEnteredCond);
	p_bOldBrdExitedCond ACCESS ADR(bOldBrdExitedCond);
	p_bRlsBrd ACCESS ADR(bRlsBrd);
	p_bInternalReqProdRcpDiff ACCESS ADR(bInternalReqProdRcpDiff);
	p_bUpdtProdRcpDiff ACCESS ADR(bUpdtProdRcpDiff);
	p_bRlsBrdProdRcpDiff ACCESS ADR(bRlsBrdProdRcpDiff);
	p_tyFollower ACCESS ADR(tyFollower);
	
	
	
END_ACTION
