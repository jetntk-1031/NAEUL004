
ACTION Act_OptP0203IOMonitor:
	
	IF tyP0203OpsMag2.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0203OpsMag2.tyNaviHide);
		
	ELSIF tyP0203OpsMag2.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0203OpsMag2.tyNaviBack);
		
	END_IF
	
	IF tyP0203OpsMag2.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlySig.bValue				:= p_tyDI.bSafetyRlySig;
		tyP0203OpsMag2.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0203OpsMag2.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUBAA.bValue						:= p_tyDI.bUBAA;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUBAB.bValue						:= p_tyDI.bUBAB;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUBAAStat.bValue					:= p_tyDI.bUBAAStat;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUBABStat.bValue					:= p_tyDI.bUBABStat;
		tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigA.bValue			:= p_tyDI.bOvenInfeedSigA;
		tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfeedSigB.bValue			:= p_tyDI.bOvenInfeedSigB;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClmpRS.bValue			:= p_tyDI.bMag2FixedClampRS;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedUnclmpRS.bValue		:= p_tyDI.bMag2FixedUnclampRS;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtClmpRS.bValue			:= p_tyDI.bMag2RemoteClampRS;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RmtUnclmpRS.bValue			:= p_tyDI.bMag2RemoteUnclampRS;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvEntrySen.bValue			:= p_tyDI.bMagConvEntSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2PresentSen.bValue			:= p_tyDI.bMagPresentSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen1.bValue			:= p_tyDI.bMag2AIVInPosSen1;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2AIVInPosSen2.bValue			:= p_tyDI.bMag2AIVInPosSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen1.bValue	:= p_tyDI.bMag2OrientChkSen1;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2OrientationChkSen2.bValue	:= p_tyDI.bMag2OrientChkSen2;
		
		tyP0203OpsMag2.tyIOMonitor.tyBtnSelUnclampRS.bValue				:= p_tyDI.bMag2SelUnClampRS;
	
		tyP0203OpsMag2.tyIOMonitor.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen2;
//		tyP0203OpsMag2.tyIOMonitor.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMagSmallSen.bValue				:= p_tyDI.bMagConvSmallMagSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMagLargeSen.bValue				:= p_tyDI.bMagConvLargeMagSen2;
		tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSen.bValue				:= p_tyDI.bCurtainSen;
		tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSenPB.bValue				:= p_tyDI.bCurtainSenPB;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2DetSen.bValue				:= p_tyDI.bMag2FixedClampSen;
		
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
			tyP0203OpsMag2.tyIOMonitor.tyBtnHeightSen.bValue			:= p_tyDI.bMagConvHeightSen2;
		ELSE
			tyP0203OpsMag2.tyIOMonitor.tyBtnHeightSen.bValue			:= p_tyDI.bHighMagDetSen2;
		END_IF
			
		//Digital Output
		tyP0203OpsMag2.tyIOMonitor.tyBtnSafetyRlyRst.bValue				:= p_tyDO.bSafetyRlyRst;
		tyP0203OpsMag2.tyIOMonitor.tyBtnTLGreen.bValue					:= p_tyDO.bTLGreen;
		tyP0203OpsMag2.tyIOMonitor.tyBtnTLAmber.bValue					:= p_tyDO.bTLAmber;
		tyP0203OpsMag2.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0203OpsMag2.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUSBA.bValue						:= p_tyDO.bUSBA;
		tyP0203OpsMag2.tyIOMonitor.tyBtnUSBB.bValue						:= p_tyDO.bUSBB;
		tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfoSigA.bValue				:= p_tyDO.bOvenInfoSigA;
		tyP0203OpsMag2.tyIOMonitor.tyBtnOvenInfoSigB.bValue				:= p_tyDO.bOvenInfoSigB;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2FixedClampCtrl.bValue		:= p_tyDO.bMag2FixedClampCtrl;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2RemoteClampCtrl.bValue		:= p_tyDO.bMag2RemoteClampCtrl;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrIn.bValue			:= p_tyDO.bMag2ConvMtrIn;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMag2ConvMtrOut.bValue			:= p_tyDO.bMag2ConvMtrOut;
		tyP0203OpsMag2.tyIOMonitor.tyBtnMagSelClampCtrl.bValue			:= p_tyDO.bMag2SelClampCtrl;
		//tyP0203OpsMag2.tyIOMonitor.tyBtnMagSelUnClampCtrl.bValue		:= p_tyDO.bMag2SelUnClampCtrl;
		tyP0203OpsMag2.tyIOMonitor.tyBtnCurtainSenPBLED.bValue			:= p_tyDO.bBypCurtainPBLED;
	END_IF
	
END_ACTION
