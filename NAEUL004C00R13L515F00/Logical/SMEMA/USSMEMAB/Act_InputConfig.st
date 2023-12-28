(** 2019-04-09 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalUSSMEMA.In.udiRstErr := g_tyRstErr.bReset;
	tylocalUSSMEMA.In.tyParam := g_tyMcParamCurr.tyUSCommBSMEMA;
	tylocalUSSMEMA.In.diTransferInTO := g_tyMcParamCurr.diTranInErrDlyTmInMS;
	tylocalUSSMEMA.In.bLeftSen := g_tyDInput.bConvLftSen;
	tylocalUSSMEMA.In.bRightSen := g_tyDInput.bConvRgtSen;
	tylocalUSSMEMA.In.bUBA := g_tyDInput.bUBAB;
	tylocalUSSMEMA.In.bUBAStat := g_tyDInput.bUBABStat;
	tylocalUSSMEMA.In.bVirtualEn := g_tyUIOut.bVSMEMAUSBEn;
	tylocalUSSMEMA.In.bUBAVirtual := g_tyUIOut.bVSMEMAUBAB;
	tylocalUSSMEMA.In.bUBAStatVirtual := g_tyUIOut.bVSMEMAUBABStat;
	tylocalUSSMEMA.In.tRstDlyTm := g_tyNtParamCurr.tUSSMEMABRstDlyTm;
	tylocalUSSMEMA.In.tSigInChkTm := g_tyNtParamCurrt.tUSSMEMAASigInChkTm;
	tylocalUSSMEMA.In.sProgNm := g_tyNtParamCurr.sUSSMEMAAProgNm;

	//Ready Receive
	IF g_tyNtParamCurr.bUSWidthChkPrep AND g_tyMcParamCurr.bUSWidthChkEn THEN
		tylocalUSSMEMA.In.bRdyRcv	:= (g_tyDInput.bnput.bUSWidthChkSen = TRUE) AND (g_tyPshrConv.bHvBrd = FALSE) AND (g_tyOpsTravLifUL.eTravLifULPosGo = TravLifULPosUS2);
	ELSE
		tylocalUSSMEMA.In.bRdyRcv	:= (g_tyPshrConv.bHvBrd = FALSE) AND (g_tyOpsTravLifUL.eTravLifULPosGo = TravLifULPosUS2) AND g_tyOps.bTravLifULUSComm;
	END_IF
	
	//Receive Complete Signal
	//	tylocalUSSMEMA.In.bComplSigOn	:= tylocalUSSMEMA.In.bLeftSen = FALSE;
	IF EDGENEG(tylocalUSSMEMA.In.bLeftSen) THEN
		tylocalUSSMEMA.In.bComplSigOn	:= TRUE;
	END_IF
	
	IF tylocalUSSMEMA.Out.eStat <> SMEMAActRun THEN
		tylocalUSSMEMA.In.bComplSigOn	:= FALSE;
	END_IF
	
	//Direction
	tylocalUSSMEMA.In.bDirLToR	:= g_tyNtParamCurr.eProjConvDir = ConvDirLToR OR g_tyNtParamCurr.eProjConvDir = ConvDirRToL;
	
	IF g_tyOps.bRun = TRUE THEN
		tylocalUSSMEMA.In.eAct := g_tyOpsTravLifUL.eUSSMEMAAct2;
	ELSIF g_tyUIOut.Out.bManualMod = TRUE THEN
		tylocalUSSMEMA.In.eAct := g_tyUIOut.eMnlAct.eUSSMEMABAct;
	ELSE
		tylocalUSSMEMA.In.eAct ACCESS ADR(eAct);
	END_IF
	
END_ACTION
