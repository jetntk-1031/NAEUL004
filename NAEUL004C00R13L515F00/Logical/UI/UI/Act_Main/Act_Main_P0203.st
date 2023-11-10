(** 2018-12-21 **)
ACTION Act_Main_P0203:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 800;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 500;
		ELSE
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 200;
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 700;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 900;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 600;
		ELSE
			tyP0203OpsMag2.tyOps.tyBitmapMc.uiValueIdx	:= 300;
		END_IF
	END_IF
	
	//AIV
//	tyP0203OpsMag2.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
//	tyP0203OpsMag2.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	tyP0203OpsMag2.tyOps.tyTxtLblAIV.uiRtStat.0		:= TRUE;
	tyP0203OpsMag2.tyOps.tyBtnAIVWifi.uiRtStat.0	:= TRUE;
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0203OpsMag2.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBAB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBABStat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUSBB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bOvenInfoExtdPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 8;
	ELSE
		tyP0203OpsMag2.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	IF p_tyNtParamCurr.tyDISettings.diUBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAAStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBAAStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBABStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUBABStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen2.uiRtStat));
	END_IF
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnUSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfoSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag2ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrOut.uiRtStat));
	END_IF
		
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnMagSelUnClampCtrl.uiRtStat.0	:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0203OpsMag2.tyOps.tyBitmapMc.usiValueIdx	:= 200;
	ELSE
		tyP0203OpsMag2.tyOps.tyBitmapMc.usiValueIdx	:= 0;
	END_IF
	
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane2Prep));
	tyP0203OpsMag2.tyOps.tyBtnUnloadMag.uiMaskRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane2Prep)) ;
	tyP0203OpsMag2.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane2Prep));
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSenPB.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSenPBLED.uiRtStat.0		:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	
	tyP0203OpsMag2.tyIOMonitor.tyBtnMag2DetSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	tyP0203OpsMag2.tyChgMag.tyLyr.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane2Prep);
	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN //Siemen
		tyP0203OpsMag2.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 25;
	END_IF
	
	
END_ACTION
