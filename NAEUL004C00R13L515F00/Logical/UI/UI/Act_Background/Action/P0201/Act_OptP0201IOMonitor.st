
ACTION Act_OptP0201IOMonitor:
	
	IF tyP0201OpsTravLifter.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;

		fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviHide);
		
	ELSIF tyP0201OpsTravLifter.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat));
		
		IF bUITravLifShowIOMonitor2 THEN
			fUIInRtStatOff(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyLyr.uiRtStat));
		ELSE
			p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviBack);
		END_IF
		
	ELSIF tyP0201OpsTravLifter.tyIOMonitor1.tyHotspotClose.bRtCompl = TRUE THEN	
		tyP0201OpsTravLifter.tyIOMonitor1.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0201OpsTravLifter.tyIOMonitor1.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0201OpsTravLifter.tyNaviBack);
	END_IF
	
	IF tyP0201OpsTravLifter.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlySig.bValue			:= p_tyDI.bSafetyRlySig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnEStop.bValue					:= p_tyDI.bEStopSig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnCoverSWSig.bValue				:= p_tyDI.bCoverSWSig;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAA.bValue					:= p_tyDI.bUBAA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAB.bValue					:= p_tyDI.bUBAB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBAAStat.bValue				:= p_tyDI.bUBAAStat;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUBABStat.bValue				:= p_tyDI.bUBABStat;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrExtRS.bValue				:= p_tyDI.bPusherExtRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrRetRS.bValue				:= p_tyDI.bPusherRetRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvLftSen.bValue				:= p_tyDI.bConvLftSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvMidSen.bValue				:= p_tyDI.bConvMidSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvRgtSen.bValue				:= p_tyDI.bConvRgtSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnConvClrSen.bValue				:= p_tyDI.bConvClrSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigA.bValue			:= p_tyDI.bOvenInfeedSigA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfeedSigB.bValue			:= p_tyDI.bOvenInfeedSigB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnLifterTmBeltSen.bValue		:= p_tyDI.bLifterTimingBeltSen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterOpenSen.bValue	:= p_tyDI.bInShutterOpenRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletShutterCloseSen.bValue	:= p_tyDI.bInShutterCloseRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen.bValue	:= p_tyDI.bOutShutterOpenRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen.bValue	:= p_tyDI.bOutShutterCloseRS;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen2.bValue	:= p_tyDI.bOutShutterOpenRS2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen2.bValue	:= p_tyDI.bOutShutterCloseRS2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterOpenSen3.bValue	:= p_tyDI.bOutShutterOpenRS3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutletShutterCloseSen3.bValue	:= p_tyDI.bOutShutterCloseRS3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnAntiJamSen.bValue				:= p_tyDI.bPshrAntiJam;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInletStopperASensor.bValue	:= p_tyDI.bInletStopperASen;
		

		//Digital Output
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnSafetyRlyRst.bValue			:= p_tyDO.bSafetyRlyRst;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLGreen.bValue				:= p_tyDO.bTLGreen;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLAmber.bValue				:= p_tyDO.bTLAmber;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnTLRed.bValue					:= p_tyDO.bTLRed;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnBuzzer.bValue					:= p_tyDO.bBuzzer;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUSBA.bValue					:= p_tyDO.bUSBA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnUSBB.bValue					:= p_tyDO.bUSBB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfoSigA.bValue			:= p_tyDO.bOvenInfoSigA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOvenInfoSigB.bValue			:= p_tyDO.bOvenInfoSigB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrExtCtrl.bValue			:= p_tyDO.bPusherExtCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnStopperUnBlkCtrlA.bValue		:= p_tyDO.bStopperUnBlkCtrlA;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnStopperUnBlkCtrlB.bValue		:= p_tyDO.bStopperUnBlkCtrlB;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterOpenCtrl.bValue		:= p_tyDO.bInShutterOpenCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnInShutterCloseCtrl.bValue		:= p_tyDO.bInShutterCloseCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl.bValue		:= p_tyDO.bOutShutterOpenCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl.bValue	:= p_tyDO.bOutShutterCloseCtrl;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl2.bValue	:= p_tyDO.bOutShutterOpenCtrl2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl2.bValue	:= p_tyDO.bOutShutterCloseCtrl2;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterOpenCtrl3.bValue	:= p_tyDO.bOutShutterOpenCtrl3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnOutShutterCloseCtrl3.bValue	:= p_tyDO.bOutShutterCloseCtrl3;
		tyP0201OpsTravLifter.tyIOMonitor.tyBtnPshrMtrOn.bValue				:= p_tyDO.bPusherConvMtrOn;

	ELSIF tyP0201OpsTravLifter.tyIOMonitor1.tyLyr.uiRtStat.0 = FALSE THEN	
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnScannerComplSig.bValue		:= p_tyDI.diScanComplSig;
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBPresentSen.bValue			:= p_tyDI.diPCBScanSen;
				
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnTrigScannerSig.bValue		:= p_tyDO.diScanTrigSig;
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag1.bValue			:= p_tyDO.diMag1ExitPCB;
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag2.bValue			:= p_tyDO.diMag2ExitPCB;
		tyP0201OpsTravLifter.tyIOMonitor1.tyBtnPCBExitMag3.bValue			:= p_tyDO.diMag3ExitPCB;
	END_IF
	
END_ACTION
