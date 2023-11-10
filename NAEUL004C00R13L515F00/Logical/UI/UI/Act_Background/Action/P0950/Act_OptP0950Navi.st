
ACTION Act_OptP0950Navi: 
	
	IF tyP0950Simu.tySimu.tyBtnNavLeft.bRtCompl OR tyP0950Simu.tySimu.tyBtnNavRight.bRtCompl THEN
		tyP0950Simu.tyAGVToMc.tyBtnNavLeft.bRtCompl := FALSE;
		tyP0950Simu.tySimu.tyBtnNavRight.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyLyr1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyLyr2.uiRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimuBffrCycleTm.tyLyr.uiRtStat));
	ELSIF tyP0950Simu.tySimuBffrCycleTm.tyBtnNavRight.bRtCompl OR tyP0950Simu.tySimuBffrCycleTm.tyBtnNavLeft.bRtCompl THEN
		tyP0950Simu.tyAGVToMc.tyBtnNavRight.bRtCompl  := FALSE;
		tyP0950Simu.tySimuBffrCycleTm.tyBtnNavLeft.bRtCompl  := FALSE;
		
		fUIInRtStatHide(ADR(tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0950Simu.tySimuBffrCycleTm.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyLyr1.uiRtStat));
		fUIInRtStatOff(ADR(tyP0950Simu.tySimu.tyLyr2.uiRtStat));
//	ELSIF tyP0950Simu.tySimuBffrCycleTm.tyBtnNavRight.bRtCompl OR tyP0950Simu.tySimu.tyBtnNavLeft.bRtCompl THEN
//		tyP0950Simu.tySimuBffrCycleTm.tyBtnNavRight.bRtCompl  := FALSE;
//		tyP0950Simu.tySimu.tyBtnNavLeft.bRtCompl  := FALSE;
//		
//		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyLyr1.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0950Simu.tySimu.tyLyr2.uiRtStat));
//		fUIInRtStatHide(ADR(tyP0950Simu.tySimuBffrCycleTm.tyLyr.uiRtStat));
//		fUIInRtStatOff(ADR(tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat));
	END_IF 
	
END_ACTION
