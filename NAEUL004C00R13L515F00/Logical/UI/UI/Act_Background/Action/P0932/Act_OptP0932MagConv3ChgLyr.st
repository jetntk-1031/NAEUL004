
ACTION Act_OptP0932MagConv3ChgLyr:
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0932MagConv3.tyCom.tyBtnSwitch.bRtCompl := FALSE;
			
			IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0932MagConv3.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
