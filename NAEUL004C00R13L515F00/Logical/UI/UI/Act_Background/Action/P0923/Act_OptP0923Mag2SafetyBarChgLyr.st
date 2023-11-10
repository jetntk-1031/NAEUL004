
ACTION Act_OptP0923Mag2SafetyBarChgLyr:
	
	IF tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnSwitch.bRtCompl THEN
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag2SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag2SafetyBarFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag2SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag2SafetyBarFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
END_ACTION
