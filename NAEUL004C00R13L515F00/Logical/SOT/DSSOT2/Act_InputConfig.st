(** 2021-04-20 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link

	tylocalDSSOT.In.bLinkProjMag1ConvPrep := g_tyNtParamCurr.bProjMag1ConvPrep;
	tylocalDSSOT.In.bLinkProjMagConvLane1Prep := g_tyNtParamCurr.bProjMagConvLane1Prep;
	tylocalDSSOT.In.bLinkProjTCPAGVSigPrep := g_tyNtParamCurr.bProjTCPAGVSigPrep;

	
	//Pass Data To Internal Use
	tylocalDSSOT.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	tylocalDSSOT.In.bManual := g_tyUIOut.bManuallMod;
	tylocalDSSOT.In.diTransferOutTO := g_tyMcParamCurr.tTranInErrDlyTm;
	tylocalDSSOT.In.bEn := g_tyMcParamCurr.bAGVComEn;
//	tylocalDSSOT.In.bVirtualEn := g_tyUIVSOTDSEn;
//	tylocalDSSOT.In.bDSBVirtual := g_tyUIVSOTDSB;
	tylocalDSSOT.In.tRstDlyTm := g_tyNtParamCurr.tDSSOT1RstDlyTm;
	tylocalDSSOT.In.tSigInChkTm := g_tyNtParamCurr.tDSSOT1SigInChkTm;
	tylocalDSSOT.In.sProgNm := g_tyNtParamCurr.sDSSOT1ProgNm;

	
	tylocalDSSOT.In.bMagSizeLarge := g_tyOpsMagConvUL1.bMagSizeL;
	
	(* Always Change If Project Change *)
	IF tylocalDSSOT.In.bLinkOpsRun = TRUE THEN
		IF tylocalDSSOT.In.bLinkProjMag1ConvPrep THEN
			tylocalDSSOT.In.eAct := g_tyOpsMagConvUL1DSSOTAct;
		ELSIF tylocalDSSOT.In.bLinkProjMagConvLane1Prep THEN
			tylocalDSSOT.In.eAct := g_tyOpsOutMagConvDSSOTAct;	
		ELSE
			tylocalDSSOT.In.eAct := eAct ;
		END_IF
	ELSE
		tylocalDSSOT.In.eAct := eAct ;
	END_IF
END_ACTION
