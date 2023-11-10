
ACTION Act_OptP0926LifterMagConvChgLyr:
	
	IF tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bRtCompl THEN
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bRtCompl := FALSE;
		
		IF tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyLyr.uiRtStat));
		END_IF		
		
	END_IF

END_ACTION
