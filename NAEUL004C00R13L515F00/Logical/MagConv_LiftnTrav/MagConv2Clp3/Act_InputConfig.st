(** 2019-10-30 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link

	
	tylocalMagConv2Clp.In.bLinkDISafetyRlySig := g_tyDInput.bSafetyRlySig;
	
	tylocalMagConv2Clp.In.bLinkMagSmallSen := g_tyDInput.bMagConvSmallMagSen3;
	tylocalMagConv2Clp.In.bLinkMagLargeSen := g_tyDInput.bMagConvLargeMagSen3;
	tylocalMagConv2Clp.In.bLinkFixClprUnClampSen := g_tyDInput.bMag3FixedUnclampRS;
	//	tylocalMagConv2Clp.In.bLinkFixClprClampSen := g_tyDInput.bMag3FixedClampRS; // Pneumatic Clamp Reed Switch
	tylocalMagConv2Clp.In.bLinkFixClprMagDetectSen := g_tyDInput.bMag3FixedClampSen; // Clamping Done Before Pneumatic Clamp Reed Switch for special Condition 
	tylocalMagConv2Clp.In.bLinkFixClprMagDetectSenPrep := g_tyNtParamCurr.bProjFixClpMagDSenPrep; // Fixed Clamp Detect Sensor Prep before Clamp RS
	
	
	tylocalMagConv2Clp.In.bLinkMagOpsStepMagFullExit := g_tyOpsMagConvUL3MagFullExit;  
	tylocalMagConv2Clp.In.bLinkDIMagEntSen := g_tyDInput.bMagConvEntSen3;
	//	tylocalMagConv2Clp.In.bLinkDO := g_tyDO;
	
	tylocalMagConv2Clp.In.bWidthChkSen := g_tyNtParamCurr.bCurtainSenPrep;
	tylocalMagConv2Clp.In.bWidthChkInterrupt := g_tyDInput.bCurtainSen;
	
	tylocalMagConv2Clp.In.bLinkNtParamMagModelAutoVerify := g_tyNtParamCurr.bProjMagAutoVerifyPrep;
	//	tylocalMagConv2Clp.In.tyDISettings := g_tyNtParamCurr.tyDISettings;
	//	tylocalMagConv2Clp.In.bLinkFixClprClampSen ACCESS ADR(bFixClprClampSen);//tylocalMagConv2Clp.In.DIMag1FixedSideDetect;//tylocalMagConv2Clp.In.DIMag1FixedClampRS; //initLocal at 1st

	//Pass Data To Internal Use
	tylocalMagConv2Clp.In.udiRstErr := g_tyRstErrReset;
	tylocalMagConv2Clp.In.bPrep := g_tyNtParamCurr.bProjMag3ConvPrep;
	tylocalMagConv2Clp.In.bManual := g_tyUIMnlMod;
	tylocalMagConv2Clp.In.bOnDirMod := g_tyNtParamCurr.bMagConv3OnDirMod;
	tylocalMagConv2Clp.In.diInitTm := g_tyMcParamCurr.tMag3ConvRunTmOut;
	tylocalMagConv2Clp.In.tMtrOffDlyTm := g_tyNtParamCurr.tMagConv3MtrOffDlyTm;
	tylocalMagConv2Clp.In.diTxInTimeOut := g_tyMcParamCurr.tMag3ConvRunTmOut;
	tylocalMagConv2Clp.In.diTxOutTimeOut := g_tyMcParamCurr.tMag3ConvRunTmOut;
	tylocalMagConv2Clp.In.eDirection := g_tyNtParamCurr.bProjMagConvDir;
	tylocalMagConv2Clp.In.sProgNm := g_tyNtParamCurr.sMagConv3ProgNm;
	tylocalMagConv2Clp.In.tClprClampTO := g_tyNtParamCurr.tMagConv3ClprClampTO;
	tylocalMagConv2Clp.In.tClprUnclampTO := g_tyNtParamCurr.tMagConv3ClprUnclampTO;
	//	tylocalMagConv2Clp.In.bLeftSen := g_tyDInput.bMagPresentSen3;
	tylocalMagConv2Clp.In.bRightSen	:= g_tyDInput.bMagPresentSen3;
	
	
	(* Always Change If Project Change *)
	
	
	IF g_tyOps.bRun THEN
		tylocalMagConv2Clp.In.eAct := g_tyOpsMagConvUL3.eMagConv2ClpAct;
	ELSIF tylocalMagConv2Clp.In.bManual = TRUE THEN
		tylocalMagConv2Clp.In.eAct := g_tyUIOut.eMnlAct.eMagConv2Clp3Act;
	ELSE
		tylocalMagConv2Clp.In.eAct := eAct;
	END_IF
	END_ACTION
