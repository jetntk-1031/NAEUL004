
ACTION Act_OptP0927LifterMagConvChgLyr:
	
	IF tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bRtCompl THEN
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bRtCompl := FALSE;
		
		IF tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyLyr.uiRtStat));
		END_IF		
		
	END_IF

END_ACTION
