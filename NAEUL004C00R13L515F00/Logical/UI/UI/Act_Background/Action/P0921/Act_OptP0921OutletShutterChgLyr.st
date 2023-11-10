
ACTION Act_OptP0921OutletShutterChgLyr:
	
	IF	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bRtCompl THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB.tyLyr.uiRtStat));
		END_IF	
		
	END_IF
	

END_ACTION
