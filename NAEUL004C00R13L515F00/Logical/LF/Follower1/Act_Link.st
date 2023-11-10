(** 2019-07-04 **)
ACTION Act_Link:
	
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	p_sInfoMsg	:= '';
		
	//Accept New Recipe Condition (Before Loaded New Recipe)
	p_bAccNewRcpCond	:= (p_bLinkOpsRun = TRUE) AND (p_bLinkOpsTravLifULInitDone = TRUE) AND (p_bLinkPshrConvHvBrd = FALSE);
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;
	
	//Recipe Different
	p_bInternalReqProdRcpDiff	:= memcmp(ADR(p_tyCurrProdRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	
	
END_ACTION
