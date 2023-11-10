
ACTION Act_OptP0206IOMonitor:
	
	IF tyP0206OpsMagConv1.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0206OpsMagConv1.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0206OpsMagConv1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0206OpsMagConv1.tyNaviHide);
		
	ELSIF tyP0206OpsMagConv1.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0206OpsMagConv1.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0206OpsMagConv1.tyNaviBack);
		
	END_IF
	
	IF tyP0206OpsMagConv1.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnSafetyRlySig.bValue			:= p_tyDI.bSafetyRlySig;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnEStop.bValue				:= p_tyDI.bEStopSig;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnCoverSWSig.bValue			:= p_tyDI.bCoverSWSig;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTopEntSen.bValue			:= p_tyDI.bInMagConvEntSen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTopMidSen.bValue			:= p_tyDI.bInMagConvMidSen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTopExtSen.bValue			:= p_tyDI.bInMagConvExtSen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnBtmEntSen.bValue			:= p_tyDI.bOutMagConvEntSen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnBtmMidSen.bValue			:= p_tyDI.bOutMagConvMidSen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnBtmExtSen.bValue			:= p_tyDI.bOutMagConvExtSen;

		//Digital Output
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnSafetyRlyRst.bValue			:= p_tyDO.bSafetyRlyRst;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTLGreen.bValue				:= p_tyDO.bTLGreen;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTLAmber.bValue				:= p_tyDO.bTLAmber;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnTLRed.bValue				:= p_tyDO.bTLRed;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnBuzzer.bValue				:= p_tyDO.bBuzzer;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnEntStprRet.bValue			:= p_tyDO.bEntTopStprUnblkCtrl;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnMidStprExt.bValue			:= p_tyDO.bMidTopStprUnblkCtrl;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnExtStprRet.bValue			:= p_tyDO.bExtTopStprUnblkCtrl;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnMidStprExt1.bValue			:= p_tyDO.bMidBtmStprUnblkCtrl;
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnExtStprRet1.bValue			:= p_tyDO.bExtBtmStprUnblkCtrl;

	END_IF
	
END_ACTION
