
ACTION Act_EntP0931Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskHide);
	
	//p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNaviBack);
	
	CASE p_tyNtParamCurr.eProjMag OF
		ULMagDual:
			p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNavi2Lyr2);
		ULMagTriple:
			p_tyC0004Navi ACCESS ADR(tyP0931MagConv2.tyNavi3Lyr2);
	END_CASE
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0931MagConv2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0931Mag2ConvCom ACCESS ADR(tyP0931MagConv2.tyCom);
	p_tyP0931Mag2ConvDC ACCESS ADR(tyP0931MagConv2.tyDC);
	p_tyP0931Mag2ConvFB ACCESS ADR(tyP0931MagConv2.tyFB);
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 103;
		END_IF
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 107;
		END_IF
	ELSE
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 234;
	END_IF

	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0931MagConv2.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF
END_ACTION
