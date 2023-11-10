(** 2019-03-29 **)
ACTION Act_Link:
	IF p_bNtParamAutoRcpPrep AND NOT(p_bMcParamAutoRcpDis) THEN //AutoRcp Ignored Follower
		p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;
		p_diMinBffr ACCESS p_ProdRcpCurrRcp0MinReqFreeBffr;
	ELSE
		p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
		p_diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	END_IF
	
	p_bBGRun	:= p_bLinkOpsStatusRun
					AND (p_usiLinkProdRcpCurrRcpMcMod = ULModUnloadRearLnB OR p_usiLinkProdRcpCurrRcpMcMod = ULModRejRearLnB
					OR p_usiLinkProdRcpCurrRcpMcMod = ULModRejRearLnBRev OR p_usiLinkProdRcpCurrRcpMcMod = ULModUnloadDualLnAB
					OR p_usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnA OR p_usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnB);
	
	p_bCntDown	:= p_eLinkOpsTravLifPosGo = TravLifULPosUS2 AND p_eLinkConvStat = ConvActEnt AND p_bLinkConvHvBrd = TRUE;
	

END_ACTION
