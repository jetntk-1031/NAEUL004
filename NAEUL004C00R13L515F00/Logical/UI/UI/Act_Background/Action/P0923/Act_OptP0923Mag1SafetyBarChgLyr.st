
ACTION Act_OptP0923Mag1SafetyBarChgLyr:
	
	IF tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnSwitch.bRtCompl THEN
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag1SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag1SafetyBarFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag1SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag1SafetyBarFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
END_ACTION
