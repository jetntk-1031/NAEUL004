
ACTION Act_EntP0930Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0930MagConv1.tyFullMaskHide);
	
	//p_tyC0004Navi ACCESS ADR(tyP0930MagConv1.tyNaviBack);
	
	CASE p_tyNtParamCurr.eProjMag OF
		ULMagDual:
			p_tyC0004Navi ACCESS ADR(tyP0930MagConv1.tyNavi2Lyr1);
		ULMagTriple:
			p_tyC0004Navi ACCESS ADR(tyP0930MagConv1.tyNavi3Lyr1);
	END_CASE
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0930MagConv1.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0930Mag1ConvCom ACCESS ADR(tyP0930MagConv1.tyCom);
	p_tyP0930Mag1ConvDC ACCESS ADR(tyP0930MagConv1.tyDC);
	p_tyP0930Mag1ConvFB ACCESS ADR(tyP0930MagConv1.tyFB);
	

	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 103;
		END_IF
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 105;
		END_IF
	ELSE
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 233;
	END_IF
	
	tyP0930MagConv1.tyFullMaskAWMotorEngage.tyBtnMask.bRtLk			:=FALSE;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0930MagConv1.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0930MagConv1.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF
END_ACTION
