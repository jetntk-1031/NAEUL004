(** 2018-12-21 **)
ACTION Act_Main_P0201:
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBABStat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUSBB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnStopperUnBlkCtrlB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bOvenInfoExtdPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bProjInletShutPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bProjOutletShutPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.bProjOutletShut2Prep = FALSE THEN	
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl2.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl2.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.bProjOutletShut3Prep = FALSE THEN	
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl3.uiRtStat));
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl3.uiRtStat));
	END_IF
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 8;
	ELSE
		tyP0201OpsTravLifter.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAAStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAAStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBABStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBABStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPusherExtRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrExtRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diPusherRetRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrRetRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvLftSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvLftSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvRgtSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvRgtSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvMidSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvMidSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diConvClrSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvClrSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterTmBeltSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diInShutterOpenRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diInShutterCloseRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterOpenRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterCloseRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterCloseRS2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOutShutterCloseRS3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen3.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDISettings.diPshrAntiJam = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnAntiJamSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagWidthChkSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnMagWidthChk.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diInletStopperASen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletStopperASensor.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diScanComplSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnScannerComplSig.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDISettings.diPCBScanSen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBPresentSen.uiRtStat));
	END_IF
	
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	END_IF

	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF

	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnUSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfoSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diPusherExtCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrExtCtrl.uiRtStat));
	END_IF

	IF p_tyNtParamCurr.tyDOSettings.diStopperUnblkCtrlA = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnStopperUnBlkCtrlA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diStopperUnblkCtrlB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnStopperUnBlkCtrlB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diInShutterOpenCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diInShutterCloseCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterOpenCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOutShutterCloseCtrl3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl3.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diPushConvMtrOn = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrMtrOn.uiRtStat));
	END_IF
	//scanner
	IF p_tyNtParamCurr.tyDOSettings.diScanTrigSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnTrigScannerSig.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDOSettings.diMag1ExitPCB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag1.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDOSettings.diMag2ExitPCB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag2.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDOSettings.diMag3ExitPCB = 0 THEN
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag3.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDOSettings.diScanTrigSig <> 0 
		OR p_tyNtParamCurr.tyDOSettings.diMag1ExitPCB <> 0
		OR p_tyNtParamCurr.tyDOSettings.diMag2ExitPCB <> 0
		OR p_tyNtParamCurr.tyDOSettings.diMag3ExitPCB <> 0
		OR p_tyNtParamCurr.tyDISettings.diPCBScanSen <> 0
		OR p_tyNtParamCurr.tyDISettings.diScanComplSig <> 0 THEN
		bUITravLifShowIOMonitor2 := TRUE;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 800;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 500;
		ELSE
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 200; //Replace with 293 
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 700;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 900;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 600;
		ELSE
			tyP0201OpsTravLifter.tyOps.tyBitmapMc.uiValueIdx	:= 300;
		END_IF
	END_IF
	
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtSpd.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0201OpsTravLifter.tyOps.tyNumMtrPshrExtTorq.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0201OpsTravLifter.tyOps.tyNumPshrOffset.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;

	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN //Siemen
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 25;
	END_IF
		
	
END_ACTION
