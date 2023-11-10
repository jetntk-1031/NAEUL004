
ACTION Act_EntP0932Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0932MagConv3.tyFullMaskHide);
	
//	p_tyC0004Navi ACCESS ADR(tyP0932MagConv3.tyNaviBack);
	
	p_tyC0004Navi ACCESS ADR(tyP0932MagConv3.tyNavi3Lyr3);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0932MagConv3.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0932Mag3ConvCom ACCESS ADR(tyP0932MagConv3.tyCom);
	p_tyP0932Mag3ConvDC ACCESS ADR(tyP0932MagConv3.tyDC);
	p_tyP0932Mag3ConvFB ACCESS ADR(tyP0932MagConv3.tyFB);
	
	tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 235;
	

	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	ELSE
		IF tyP0932MagConv3.tyCom.tyBtnSwitch.bValue THEN
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
		END_IF
	END_IF

	
END_ACTION
