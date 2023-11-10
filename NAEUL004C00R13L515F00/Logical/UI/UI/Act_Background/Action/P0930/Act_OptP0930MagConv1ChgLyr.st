
ACTION Act_OptP0930MagConv1ChgLyr:
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep THEN
		IF tyP0930MagConv1.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0930MagConv1.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0930MagConv1.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSE
		IF tyP0930MagConv1.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0930MagConv1.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0930MagConv1.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
				fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
