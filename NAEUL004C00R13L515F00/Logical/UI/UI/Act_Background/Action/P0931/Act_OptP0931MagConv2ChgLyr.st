
ACTION Act_OptP0931MagConv2ChgLyr:

	IF p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0931MagConv2.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0931MagConv2.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
