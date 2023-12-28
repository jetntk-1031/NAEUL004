
ACTION Act_InputConfig:
	

		
	//Pass Data To Link
	tylocalOvenInfoA.In.bLinkOpsStatusRun :=  g_tyOps.bStatusRun;
	//	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp2McMod;
	tylocalOvenInfoA.In.eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	tylocalOvenInfoA.In.eLinkConvStat := g_tyPshrConv.eStat;
	tylocalOvenInfoA.In.bLinkConvHvBrd := g_tyPshrConv.bHvBrd;

	//Pass Data To Internal Use
	tylocalOvenInfoA.In.eAct := g_tyUIOut.eOvenInfoAAct;
	tylocalOvenInfoA.In.bPrep := g_tyNtParam.bOvenInfoPrep;
	tylocalOvenInfoA.In.bEn := g_tyMcParamCurr.bOvenEn;
	tylocalOvenInfoA.In.bPrepExtdd := g_tyNtParam.bOvenInfoExtdPrep;
	tylocalOvenInfoA.In.bEnExtdd := g_tyMcParamCurr.bExtdOvenEn;
	tylocalOvenInfoA.In.bManual := g_tyUIOut.bMnlMod;
	tylocalOvenInfoA.In.diBffrMtySlt  := g_tyBufferMagA.diBffrMtySlt;
	//tylocalOvenInfoA.In.diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	tylocalOvenInfoA.In.diAddBffr := g_tyMcParamCurr.diOvenMaxBffr;
	tylocalOvenInfoA.In.diSetBrdInOven := g_tyUIOut.diOvenInfoSetBrdInOvenA;
	tylocalOvenInfoA.In.bCntUp := g_tyDInput.bOvenInfeedSigA;


	tylocalOvenInfoA.In.bNtParamAutoRcpPrep := g_tyNtParam.bAutoRcpPrep;
	tylocalOvenInfoA.In.bMcParamAutoRcpDis  := g_tyMcParamCurr.bAutoRcpDisable;
	(* Always Change If Project Change *)
		


END_ACTION
