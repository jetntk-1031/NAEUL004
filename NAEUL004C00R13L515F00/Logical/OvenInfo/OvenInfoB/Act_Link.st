(** 2019-03-29 **)
ACTION Act_Link:

	IF g_tyNtParamCurr.bAutoRcpPrep AND NOT(g_tyMcParamCurr.bAutoRcpDisable) THEN //AutoRcp Ignored Follower
		tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;
		tylocalOvenInfoB.In.diMinBffr ACCESS p_ProdRcpCurrRcp0MinReqFreeBffr;
	ELSE
		tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
		tylocalOvenInfoB.In.diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	END_IF
	
	tylocalOvenInfoB.In.bBGRun := 	tylocalOvenInfoB.In.bLinkOpsStatusRun
					AND (tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModUnloadRearLnB OR tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModRejRearLnB
					OR tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModRejRearLnBRev OR tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModUnloadDualLnAB
					OR tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnA OR tylocalOvenInfoB.In.usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnB);
	
	tylocalOvenInfoA.In.bCntDown	:= p_eLinkOpsTravLifPosGo = TravLifULPosUS2 AND p_eLinkConvStat = ConvActEnt AND p_bLinkConvHvBrd = TRUE;
	

END_ACTION
