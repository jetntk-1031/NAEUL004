
ACTION Act_OptP0921OutletShutterChgLyr3:
	
	IF	tyP0921InletNOutletShutter.tyOutletShutterCom3.tyBtnSwitch.bRtCompl THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom3.tyBtnSwitch.bRtCompl := FALSE;
		
		IF tyP0921InletNOutletShutter.tyOutletShutterCom3.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC3.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB3.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0921InletNOutletShutter.tyOutletShutterDC3.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0921InletNOutletShutter.tyOutletShutterFB3.tyLyr.uiRtStat));
		END_IF	
		
	END_IF
	

END_ACTION
