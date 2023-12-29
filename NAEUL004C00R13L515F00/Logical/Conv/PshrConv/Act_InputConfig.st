(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link

	
	tylocalPshrConv.In.bLinkUIBypsInitConv := g_tyUIOpsByps.bInitConv;
	tylocalPshrConv.In.bLinkDISafetyRlySig := g_tyDInput.bSafetyRlySig;
	tylocalPshrConv.In.bLinkDIRgtSen := g_tyDInput.bConvRgtSen;
	tylocalPshrConv.In.bLinkDIClrSen := g_tyDInput.bConvClrSen;
//	tylocalPshrConv.In.usiLinkMcParamProdSelMcMod := g_tyProdRcpCurrRcp1McMod;
	tylocalPshrConv.In.eLinkOpsTravLifPosGo := g_tyOpsTravLifUL.eTravLifPosGo;
	tylocalPshrConv.In.eLinkMcParamUSCommAMod := g_tyMcParamCurr.eUSCommAMod;
	tylocalPshrConv.In.eLinkMcParamUSCommBMod := g_tyMcParamCurr.eUSCommBMod;
	tylocalPshrConv.In.bLinkPshrRetSen := g_tyDInput.bPusherRetRS;
	tylocalPshrConv.In.bLinkPshrRetSlwSen := g_tyDInput.bPusherRetSlwSen;
	
	//Pass Data To Internal Use
	tylocalPshrConv.In.udiRstErr := g_tyRstErr.bReset;
	tylocalPshrConv.In.bManual := g_tyUIOut.bManualMod;
	tylocalPshrConv.In.bOnDirMod := g_tyNtParamCurr.bPshrConvOnDirMod;
	tylocalPshrConv.In.diInitTm := g_tyMcParamCurr.tConvInitTm;
	tylocalPshrConv.In.tMtrOffDlyTm := g_tyNtParamCurr.tPshrConvMtrOffDlyTm;
	tylocalPshrConv.In.diTxInTimeOut := g_tyMcParamCurr.tTranInErrDlyTm;
	tylocalPshrConv.In.eDirection := g_tyNtParamCurr.bProjConvDir;
	tylocalPshrConv.In.sProgNm := g_tyNtParamCurr.sPshrConvProgNm;
	tylocalPshrConv.In.tPshrExtTO := g_tyNtParamCurr.tPshrConvPshrExtTO;
	tylocalPshrConv.In.tPshrRetTO := g_tyNtParamCurr.tPshrConvPshrRetTO;
	tylocalPshrConv.In.bLeftSen := g_tyDInput.bConvLftSen;
	tylocalPshrConv.In.bMiddleSen := g_tyDInput.bConvMidSen;
	tylocalPshrConv.In.bPshrExtSen := g_tyDInput.bPusherExtRS;
//	tylocalPshrConv.In.bPshrRetSen := g_tyDInput.bPusherRetSlwSen;
	
	tylocalPshrConv.In.bSelfTest := g_tyOpsTravLifUL.bSelfTest;
	
	tylocalPshrConv.In.bNtParamAutoRcpPrep := g_tyNtParamCurr.bAutoRcpPrep;
	tylocalPshrConv.In.bMcParamAutoRcpDis  := g_tyMcParamCurr.bAutoRcpDisable;
	(* Always Change If Project Change *)
	
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalPshrConv.In.eAct := g_tyOpsTravLifUL.eConvAct;
	ELSIF tylocalPshrConv.In.bManual = TRUE THEN
		tylocalPshrConv.In.eAct := g_tyUIOut.eMnlAct.ePshrConvAct;
	ELSE
		tylocalPshrConv.In.eAct := eAct;
	END_IF
END_ACTION
