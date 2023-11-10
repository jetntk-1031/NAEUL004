
ACTION Act_OptP0204IOMonitor:
	
	IF tyP0204OpsMag3.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0204OpsMag3.tyNaviHide);
		
	ELSIF tyP0204OpsMag3.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0204OpsMag3.tyNaviBack);
		
	END_IF
	
	IF tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUBAA.bValue						:= p_tyDI.bUBAA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUBAB.bValue						:= p_tyDI.bUBAB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUBAAStat.bValue					:= p_tyDI.bUBAAStat;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUBABStat.bValue					:= p_tyDI.bUBABStat;
		tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigA.bValue			:= p_tyDI.bOvenInfeedSigA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfeedSigB.bValue			:= p_tyDI.bOvenInfeedSigB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.bValue			:= p_tyDI.bMag3FixedClampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.bValue		:= p_tyDI.bMag3FixedUnclampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.bValue			:= p_tyDI.bMag3RemoteClampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.bValue			:= p_tyDI.bMag3RemoteUnclampRS;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3PresentSen.bValue			:= p_tyDI.bMagPresentSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen1.bValue			:= p_tyDI.bMag3AIVInPosSen1;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3AIVInPosSen2.bValue			:= p_tyDI.bMag3AIVInPosSen2;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3OrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
		
		tyP0204OpsMag3.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag3SelUnClampRS;
	
		tyP0204OpsMag3.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen3;
//		tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen3;
		tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSen.bValue				:= p_tyDI.bCurtainSen;
		tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSenPB.bValue				:= p_tyDI.bCurtainSenPB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3DetSen.bValue				:= p_tyDI.bMag3FixedClampSen;
		
		//MagHeightCheckSensor
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
			tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.bValue			:= p_tyDI.bMagConvHeightSen3;
		ELSE
			tyP0204OpsMag3.tyIOMonitor.tyBtnHeightSen.bValue			:= p_tyDI.bHighMagDetSen3;
		END_IF
		
		//Digital Output
		tyP0204OpsMag3.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0204OpsMag3.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0204OpsMag3.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUSBA.bValue						:= p_tyDO.bUSBA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnUSBB.bValue						:= p_tyDO.bUSBB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfoSigA.bValue				:= p_tyDO.bOvenInfoSigA;
		tyP0204OpsMag3.tyIOMonitor.tyBtnOvenInfoSigB.bValue				:= p_tyDO.bOvenInfoSigB;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.bValue		:= p_tyDO.bMag3FixedClampCtrl;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.bValue		:= p_tyDO.bMag3RemoteClampCtrl;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrIn.bValue			:= p_tyDO.bMag3ConvMtrIn;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3ConvMtrOut.bValue			:= p_tyDO.bMag3ConvMtrOut;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag3SelClampCtrl;
		//tyP0204OpsMag3.tyIOMonitor.tyBtnMagSelUnClampCtrl.bValue		:= p_tyDO.bMag3SelUnClampCtrl;
		tyP0204OpsMag3.tyIOMonitor.tyBtnCurtainSenPBLED.bValue			:= p_tyDO.bBypCurtainPBLED;
	END_IF
	
END_ACTION
