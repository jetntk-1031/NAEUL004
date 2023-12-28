(** 2019-03-29 **)
ACTION Act_Link:
	IF g_tyNtParamCurr.bAutoRcpPrep AND NOT(g_tyMcParamCurr.bAutoRcpDisable) THEN //AutoRcp Ignored Follower
		tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;
		tylocalOvenInfoA.In.diMinBffr ACCESS p_ProdRcpCurrRcp0MinReqFreeBffr;
	ELSE
		tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp1McMod;
		tylocalOvenInfoA.In.diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	END_IF
	
	tylocalOvenInfoA.In.bBGRun	:= tylocalOvenInfoA.In.bLinkOpsStatusRun
					AND (tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModUnloadFrontLnA OR tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModRejFrontLnA
					OR tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModRejFrontLnARev OR tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModUnloadDualLnAB
					OR tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnA OR tylocalOvenInfoA.In.usiLinkProdRcpCurrRcpMcMod = ULModRejDualLnB);
	

	tylocalOvenInfoA.In.bCntDown 	:= tylocalOvenInfoA.In.eLinkOpsTravLifPosGo = TravLifULPosUS1 AND tylocalOvenInfoA.In.eLinkConvStat = ConvActEnt AND tylocalOvenInfoA.In.bLinkConvHvBrd = TRUE;
	
END_ACTION
