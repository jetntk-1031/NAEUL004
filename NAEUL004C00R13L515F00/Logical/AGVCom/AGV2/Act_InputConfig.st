ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	tylocalAGV.In.bLinkOpsRun := g_tyOps.bRun;
	
	tylocalAGV.In.tyLinkBufferStat := g_tyBuffer2.tyBufferStat;
	tylocalAGV.In.bLinkAGVOnline := g_tyAGV.bInternalAGVOnline;
	tylocalAGV.In.tyLinkAGVtoDTMag := g_tyAGV.tyAGVToDTMag;

	
	//Pass Data To Internal Use
//	tylocalAGV.In.eAct := g_tyOpsMagConvUL2AGVMagAct;
	tylocalAGV.In.udiRstErr	:= g_tyRstErrOut.udiRstErr;
	tylocalAGV.In.bPrep := g_tyNtParamCurr.bProjAGVPrep;
	tylocalAGV.In.sProgNm := g_tyNtParamCurr.sAGVMag2ProgNm;
	
	tylocalAGV.In.diTxInTimeOut := g_tyMcParam.tMag2ConvRunTmOut;
	tylocalAGV.In.diTxOutTimeOut := g_tyMcParam.tMag2ConvRunTmOut;
	
	tylocalAGV.In.eDirection := g_tyNtParamCurr.bProjMagConvDir;
	tylocalAGV.In.bBufferMagPresent := g_tyDInput.bMagPresentSen2;
	tylocalAGV.In.bMagConvLftSen := g_tyDInput.bMagPresentSen2;
	tylocalAGV.In.bMagConvRgtSen := g_tyDInput.bMagConvEntSen2;
	tylocalAGV.In.bMagConvMtrIn := g_tyMagConv2Clp2.bMtrSigOnOrLToR;
	tylocalAGV.In.bMagConvMtrOut := g_tyMagConv2Clp2.bMtrDirOrRToL;
	

	tylocalAGV.In.bAGVInPosSen1	:= g_tyDInput.bMag2AIVInPosSen1;
	tylocalAGV.In.bAGVInPosSen2	:= g_tyDInput.bMag2AIVInPosSen2;
	
	tylocalAGV.In.bNtParamAGVInPosSenPrep := g_tyNtParamCurr.bProjAIVInPosSenPrep;
	
	tylocalAGV.In.bSOTRcvOk := g_tyDInput.bSOT2Receive;
	tylocalAGV.In.bSOTErr := g_tyDInput.bSOT2AIVError;
	tylocalAGV.In.bSOTRdy := g_tyDInput.bSOT2AIVReady;
	tylocalAGV.In.bSOTAvailable := g_tyDInput.bSOT2AIVAvailable;
	tylocalAGV.In.bEn := g_tyMcParam.AGVComEn;

	
	
	IF g_tyNtParamCurr.bProjMag2ConvPrep THEN
		tylocalAGV.In.eAct := tyOpsMagConvUL2.eAGVMagAct;
	ELSIF g_tyNtParamCurr.bProjMagConvLane2Prep THEN
		//	tylocalAGV.In.eAct := tyOpsInMagConvAGVMagAct;
	ELSE
		tylocalAGV.In.eAct := eAct;
	END_IF
	
	IF EDGENEG(g_tyOps.bRun) THEN
		tylocalAGV.In.eAct	:= AGVMagActIdle;
	END_IF
END_ACTION
