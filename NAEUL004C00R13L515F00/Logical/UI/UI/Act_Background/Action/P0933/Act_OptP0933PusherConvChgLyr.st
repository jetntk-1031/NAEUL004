
ACTION Act_OptP0933PusherConvChgLyr:
	

	
	
	IF tyP0933PushConv.tyCom.tyBtnSwitch.bRtCompl THEN
		tyP0933PushConv.tyCom.tyBtnSwitch.bRtCompl := FALSE;		
		IF tyP0933PushConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0933PushConv.tyFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyLyr.uiRtStat));
		END_IF	
		
	END_IF
		
	//Mask
	IF tyP0933PushConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PushConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PushConv.tyFB.tyBtnStop.bRtCompl
		OR tyP0933PushConv.tyDC.tyBtnAlarmRst.bValue OR tyP0933PushConv.tyDC.tyBtnBrake.bValue OR tyP0933PushConv.tyDC.tyBtnExt.bValue OR tyP0933PushConv.tyDC.tyBtnRet.bValue OR tyP0933PushConv.tyDC.tyBtnSigOn.bValue OR tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bValue OR tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bValue OR tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bValue THEN
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat));
	END_IF
	
END_ACTION
