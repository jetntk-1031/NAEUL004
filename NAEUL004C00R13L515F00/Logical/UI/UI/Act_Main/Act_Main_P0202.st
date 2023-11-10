(** 2018-12-21 **)
ACTION Act_Main_P0202:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 800;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 500;
		ELSE			
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 200;	
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 700;	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 900;
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 600;
		ELSE
			tyP0202OpsMag1.tyOps.tyBitmapMc.uiValueIdx	:= 300;
		END_IF
	END_IF
	
	//AIV
	//tyP0202OpsMag1.tyOps.tyTxtLblAIV.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjAGVPrep;
	//tyP0202OpsMag1.tyOps.tyBtnAIVWifi.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjAGVPrep;
	
	tyP0202OpsMag1.tyOps.tyTxtLblAIV.uiRtStat.0		:= TRUE;
	tyP0202OpsMag1.tyOps.tyBtnAIVWifi.uiRtStat.0	:= TRUE;
	//tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjBtnInsertRmvMag);
	//tyP0202OpsMag1.tyOps.tyBitmapChgMag.uiRtStat.0:= NOT(p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	tyP0202OpsMag1.tyOps.tyBitmapChgMag.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyNtParamCurr.bProjBtnInsertRmvMag);
	
	
	//Display
	IF p_tyNtParamCurr.bProjLaneBPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBAB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBABStat.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUSBB.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.bOvenInfoExtdPrep = FALSE THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	//Change Parameter
	IF p_tyNtParamCurr.bProjLaneBPrep THEN
		tyP0202OpsMag1.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 8;
	ELSE
		tyP0202OpsMag1.tyParam.tyDrpDnMcMode.usiValueMaxIdx	:= 2;
	END_IF
	
	//Digital Input Used
	IF p_tyNtParamCurr.tyDISettings.diSafetyRlySig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlySig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diEStopSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnEStop.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diCoverSWSig = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnCoverSWSig.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBAA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAAStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBAAStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBAB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBAB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diUBABStat = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUBABStat.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diOvenInfeedSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1FixedClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1FixedUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagConvEntSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvEntrySen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMagPresentSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1PresentSen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen2.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen1.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen2.uiRtStat));
	END_IF
	
	//Digital Output Selected
	IF p_tyNtParamCurr.tyDOSettings.diSafetyRlyRst = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlyRst.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLGreen = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLGreen.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLAmber = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diTLRed = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnTLRed.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diBuzzer = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnBuzzer.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUSBA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diUSBB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnUSBB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigA = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfoSigA.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diOvenInfoSigB = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfoSigB.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1FixedClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1RemoteClampCtrl = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1ConvMtrIn = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrIn.uiRtStat));
	END_IF
	
	IF p_tyNtParamCurr.tyDOSettings.diMag1ConvMtrOut = 0 THEN
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrOut.uiRtStat));
	END_IF
	
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelClampCtrl.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnHeightSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnCAB717Sen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelUnClampCtrl.uiRtStat.0	:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane1Prep)) ;
	tyP0202OpsMag1.tyOps.tyBtnUnloadMag.uiMaskRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane1Prep)) ;
	tyP0202OpsMag1.tyOps.tyBitmapUnloadMag.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLifterMagPlatform AND NOT(p_tyNtParamCurr.bProjMagConvLane1Prep));
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
	tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSenPB.uiRtStat.0			:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSenPBLED.uiRtStat.0		:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	tyP0202OpsMag1.tyIOMonitor.tyBtnMag1DetSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	tyP0202OpsMag1.tyChgMag.tyLyr.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane1Prep);
	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN //Siemen  
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.usiTxtIdx := 25;
	END_IF
	

END_ACTION

