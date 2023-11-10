(** 2018-12-21 **)
ACTION Act_Main_P0204:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 800;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 500;
		ELSE
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 200;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 700;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 600;
		ELSE
			tyP0204OpsMag3.tyOps.tyBitmapMc.uiValueIdx	:= 0;
		END_IF
	END_IF
	
	//AIV
//	tyP0204OpsMag3.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
//	tyP0204OpsMag3.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0204OpsMag3.tyOps.tyTxtLblAIV.uiRtStat.0		:= TRUE;
	tyP0204OpsMag3.tyOps.tyBtnAIVWifi.uiRtStat.0	:= TRUE;
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0204OpsMag3.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBAB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBABStat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUSBB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bOvenInfoExtdPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0204OpsMag3.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 8;
	ELSE
		tyP0204OpsMag3.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAAStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBAAStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBABStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUBABStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen3 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen2.uiRtStat));
	END_IF
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnUSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfoSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag3ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrOut.uiRtStat));
	END_IF
	
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelUnClampCtrl.uiRtStat.0	:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;

	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0204OpsMag3.tyOps.tyBtnUnloadMag.uiMaskRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform  ;
	tyP0204OpsMag3.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSenPB.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSenPBLED.uiRtStat.0		:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	
	tyP0204OpsMag3.tyIOMonitor.tyBtnMag3DetSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN //Siemen
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 25;
	END_IF
END_ACTION
