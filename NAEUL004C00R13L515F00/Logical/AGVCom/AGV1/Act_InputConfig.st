ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalAGV.In.bLinkOpsRun := g_tyOps.bRun;
	
	tylocalAGV.In.tyLinkBufferStat := g_tyBuffer1.tyBufferStat;
	tylocalAGV.In.bLinkAGVOnline := g_tyAGV.bInternalAGVOnline;
	tylocalAGV.In.tyLinkAGVtoDTMag := g_tyAGV.tyAGVToDTMag;

	
	//Pass Data To Internal Use
//	tylocalAGV.In.eAct := g_tyOpsMagConvUL1AGVMagAct;
	tylocalAGV.In.udiRstErr	:= g_tyRstErrOut.udiRstErr;
	tylocalAGV.In.bPrep := g_tyNtParamCurr.bProjAGVPrep;
	tylocalAGV.In.sProgNm := g_tyNtParamCurr.sAGVMag1ProgNm;
	
	tylocalAGV.In.diTxInTimeOut := g_tyMcParam.tMag1ConvRunTmOut;
	tylocalAGV.In.diTxOutTimeOut := g_tyMcParam.tMag1ConvRunTmOut;
	
	tylocalAGV.In.eDirection := g_tyNtParamCurr.bProjMagConvDir;
	tylocalAGV.In.bBufferMagPresent := g_tyDInput.bMagPresentSen1;
	tylocalAGV.In.bMagConvLftSen := g_tyDInput.bMagPresentSen1;
	tylocalAGV.In.bMagConvRgtSen := g_tyDInput.bMagConvEntSen1;
	tylocalAGV.In.bMagConvMtrIn := g_tyMagConv2Clp1.bMtrSigOnOrLToR;
	tylocalAGV.In.bMagConvMtrOut := g_tyMagConv2Clp1.bMtrDirOrRToL;
	

	tylocalAGV.In.bAGVInPosSen1	:= g_tyDInput.bMag1AIVInPosSen1;
	tylocalAGV.In.bAGVInPosSen2	:= g_tyDInput.bMag1AIVInPosSen2;
	
	tylocalAGV.In.bNtParamAGVInPosSenPrep := g_tyNtParamCurr.bProjAIVInPosSenPrep;
	
	tylocalAGV.In.bSOTRcvOk := g_tyDInput.bSOT1Receive;
	tylocalAGV.In.bSOTErr := g_tyDInput.bSOT1AIVError;
	tylocalAGV.In.bSOTRdy := g_tyDInput.bSOT1AIVReady;
	tylocalAGV.In.bSOTAvailable := g_tyDInput.bSOT1AIVAvailable;
	tylocalAGV.In.bEn := g_tyMcParam.AGVComEn;

	
	
	IF g_tyNtParamCurr.bProjMag1ConvPrep THEN
		tylocalAGV.In.eAct := tyOpsMagConvUL1.eAGVMagAct;
	ELSIF g_tyNtParamCurr.bProjMagConvLane1Prep THEN
		//	tylocalAGV.In.eAct := tyOpsInMagConvAGVMagAct;
	ELSE
		tylocalAGV.In.eAct := eAct;
	END_IF
	
	IF EDGENEG(g_tyOps.bRun) THEN
		tylocalAGV.In.eAct	:= AGVMagActIdle;
	END_IF
END_ACTION
