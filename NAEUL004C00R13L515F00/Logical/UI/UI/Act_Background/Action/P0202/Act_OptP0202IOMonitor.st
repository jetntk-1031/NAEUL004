
ACTION Act_OptP0202IOMonitor:
	
	IF tyP0202OpsMag1.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0202OpsMag1.tyNaviHide);
		
	ELSIF tyP0202OpsMag1.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0202OpsMag1.tyNaviBack);
		
	END_IF
	
	IF tyP0202OpsMag1.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUBAA.bValue						:= p_tyDI.bUBAA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUBAB.bValue						:= p_tyDI.bUBAB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUBAAStat.bValue					:= p_tyDI.bUBAAStat;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUBABStat.bValue					:= p_tyDI.bUBABStat;
		tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigA.bValue			:= p_tyDI.bOvenInfeedSigA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfeedSigB.bValue			:= p_tyDI.bOvenInfeedSigB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClmpRS.bValue			:= p_tyDI.bMag1FixedClampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedUnclmpRS.bValue		:= p_tyDI.bMag1FixedUnclampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtClmpRS.bValue			:= p_tyDI.bMag1RemoteClampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RmtUnclmpRS.bValue			:= p_tyDI.bMag1RemoteUnclampRS;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1PresentSen.bValue			:= p_tyDI.bMagPresentSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen1.bValue			:= p_tyDI.bMag1AIVInPosSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1AIVInPosSen2.bValue			:= p_tyDI.bMag1AIVInPosSen2;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1OrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
		
		tyP0202OpsMag1.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag1SelUnClampRS;
	
		tyP0202OpsMag1.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen1;
		tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSen.bValue				:= p_tyDI.bCurtainSen;
		tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSenPB.bValue				:= p_tyDI.bCurtainSenPB;		
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1DetSen.bValue				:= p_tyDI.bMag1FixedClampSen;
		
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0202OpsMag1.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen1;
	ELSE
		tyP0202OpsMag1.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bHighMagDetSen1;
	END_IF		
		
		//Digital Output
		tyP0202OpsMag1.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0202OpsMag1.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0202OpsMag1.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUSBA.bValue						:= p_tyDO.bUSBA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnUSBB.bValue						:= p_tyDO.bUSBB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfoSigA.bValue				:= p_tyDO.bOvenInfoSigA;
		tyP0202OpsMag1.tyIOMonitor.tyBtnOvenInfoSigB.bValue				:= p_tyDO.bOvenInfoSigB;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1FixedClampCtrl.bValue		:= p_tyDO.bMag1FixedClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1RemoteClampCtrl.bValue		:= p_tyDO.bMag1RemoteClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrIn.bValue			:= p_tyDO.bMag1ConvMtrIn;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMag1ConvMtrOut.bValue			:= p_tyDO.bMag1ConvMtrOut;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag1SelClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnMagSelUnClampCtrl.bValue		:= p_tyDO.bMag1SelUnClampCtrl;
		tyP0202OpsMag1.tyIOMonitor.tyBtnCurtainSenPBLED.bValue			:= p_tyDO.bBypCurtainPBLED;
	END_IF
	
END_ACTION
