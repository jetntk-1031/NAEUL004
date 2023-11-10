
ACTION Act_OptP0923Mag3SafetyBarChgLyr:
	
	IF tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnSwitch.bRtCompl THEN
		tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag3SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag3SafetyBarFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0923SafetyBar.tyMag3SafetyBarDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0923SafetyBar.tyMag3SafetyBarFB.tyLyr.uiRtStat));
		END_IF
		
	END_IF
	
END_ACTION
