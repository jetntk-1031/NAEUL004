
ACTION Act_OptP0207IOMonitor:
	
	IF tyP0207OpsMagConv2.tyOps.tyHotspotIOMonitor.bRtCompl = TRUE THEN
		tyP0207OpsMagConv2.tyOps.tyHotspotIOMonitor.bRtCompl	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0207OpsMagConv2.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0207OpsMagConv2.tyNaviHide);
		
	ELSIF tyP0207OpsMagConv2.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0207OpsMagConv2.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
		
		fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyIOMonitor.tyLyr.uiRtStat));
		
		p_tyC0004Navi ACCESS ADR(tyP0207OpsMagConv2.tyNaviBack);
		
	END_IF
	
	IF tyP0207OpsMagConv2.tyIOMonitor.tyLyr.uiRtStat.0 = FALSE THEN
		
		//Digital Input
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnSafetyRlySig.bValue			:= p_tyDI.bSafetyRlySig;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnEStop.bValue				:= p_tyDI.bEStopSig;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnCoverSWSig.bValue			:= p_tyDI.bCoverSWSig;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTopEntSen.bValue			:= p_tyDI.bInMagConv2EntSen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTopMidSen.bValue			:= p_tyDI.bInMagConv2MidSen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTopExtSen.bValue			:= p_tyDI.bInMagConv2ExtSen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnBtmEntSen.bValue			:= p_tyDI.bOutMagConv2EntSen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnBtmMidSen.bValue			:= p_tyDI.bOutMagConv2MidSen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnBtmExtSen.bValue			:= p_tyDI.bOutMagConv2ExtSen;

		//Digital Output
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnSafetyRlyRst.bValue			:= p_tyDO.bSafetyRlyRst;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTLGreen.bValue				:= p_tyDO.bTLGreen;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTLAmber.bValue				:= p_tyDO.bTLAmber;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnTLRed.bValue				:= p_tyDO.bTLRed;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnBuzzer.bValue				:= p_tyDO.bBuzzer;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnEntStprRet.bValue			:= p_tyDO.bEntTopStprUnblkCtrl2;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnMidStprExt.bValue			:= p_tyDO.bMidTopStprUnblkCtrl2;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnExtStprRet.bValue			:= p_tyDO.bExtTopStprUnblkCtrl2;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnMidStprExt1.bValue			:= p_tyDO.bMidBtmStprUnblkCtrl2;
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnExtStprRet1.bValue			:= p_tyDO.bExtBtmStprUnblkCtrl2;

	END_IF
	
END_ACTION
