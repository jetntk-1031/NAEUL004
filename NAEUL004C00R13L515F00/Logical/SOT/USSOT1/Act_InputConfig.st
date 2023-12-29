(** 2021-04-20 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
//	tylocalUSSOT.In.bLinkOpsRun := g_tyOpsRun;
	tylocalUSSOT.In.bLinkSOTReadyOnFirst := g_tyNtParamCurr.bSOTReadyOnFirst;
	tylocalUSSOT.In.bLinkProjMag1ConvPrep := g_tyNtParamCurr.bProjMag1ConvPrep;
	tylocalUSSOT.In.bLinkProjMagConvLane1Prep := g_tyNtParamCurr.bProjMagConvLane1Prep;
	tylocalUSSOT.In.bLinkProjTCPAGVSigPrep := g_tyNtParamCurr.bProjTCPAGVSigPrep;
	
	//Pass Data To Internal Use
	tylocalUSSOT.In.udiRstErr := g_tyRstErrOut.udiRstErr;
	tylocalUSSOT.In.bManual := g_tyUIOut.bOut.bManualMod;
	tylocalUSSOT.In.diTransferInTO := g_tyMcParamCurr.tTranInErrDlyTm;
	tylocalUSSOT.In.bEn := g_tyMcParamCurr.bAGVComEn;
//	tylocalUSSOT.In.bVirtualEn := g_tyUIOut.bVSOTUSEn;
//	tylocalUSSOT.In.bUBAVirtual := g_tyUIOut.bVSOTUBA;
	tylocalUSSOT.In.tRstDlyTm := g_tyNtParamCurr.bUSSOT1RstDlyTm;
	tylocalUSSOT.In.tSigInChkTm := g_tyNtParamCurr.bUSSOT1SigInChkTm;
	tylocalUSSOT.In.sProgNm := g_tyNtParamCurr.bUSSOT1ProgNm;

	
	(* Always Change If Project Change *)
	IF g_tyOps.bRun = TRUE THEN
		IF tylocalUSSOT.In.bLinkProjMag1ConvPrep THEN
			tylocalUSSOT.In.eAct := g_tyOpsMagConvUL1.eUSSOTAct;	
		ELSE
			tylocalUSSOT.In.eAct := eAct;
		END_IF
	ELSE
		tylocalUSSOT.In.eAct := eAct;
	END_IF
END_ACTION
