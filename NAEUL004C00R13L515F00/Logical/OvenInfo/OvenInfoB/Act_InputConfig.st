ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)

	//Pass Data To Link
	tylocalOvenInfoB.In.bLinkOpsStatusRun :=  g_tyOps.bStatusRun;
	//	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp2McMod;
	tylocalOvenInfoB.In.eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	tylocalOvenInfoB.In.eLinkConvStat := g_tyPshrConv.eStat;
	tylocalOvenInfoB.In.bLinkConvHvBrd := g_tyPshrConv.bHvBrd;


	tylocalOvenInfoB.In.eAct := g_tyUIOut.eOvenInfoBAct;
	//tylocalOvenInfoB.In.bPrep := g_tyNtParam.bOvenInfoPrep;
	tylocalOvenInfoB.In.bEn := g_tyMcParamCurr.bOvenEn;
	tylocalOvenInfoB.In.bPrepExtdd := g_tyNtParam.bOvenInfoExtdPrep;
	tylocalOvenInfoB.In.bEnExtdd := g_tyMcParamCurr.bExtdOvenEn;
	tylocalOvenInfoB.In.bManual := g_tyUIOut.bMnlMod;
	tylocalOvenInfoB.In.diBffrMtySlt  := g_tyBufferMagB.diBffrMtySlt;
	//tylocalOvenInfoB.In.diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	tylocalOvenInfoB.In.diAddBffr := g_tyMcParamCurr.diOvenMaxBffr;
	tylocalOvenInfoB.In.diSetBrdInOven := g_tyUIOut.diOvenInfoSetBrdInOvenB;
	tylocalOvenInfoB.In.bCntUp := g_tyDInput.bOvenInfeedSigB;
	


		

	//Link bPrep, bEn & bDis
	tylocalOvenInfoB.In.bPrep	:= g_tyNtParamCurr.bOvenInfoPrep AND g_tyNtParamCurr.bProjLaneBPrep;

END_ACTION
