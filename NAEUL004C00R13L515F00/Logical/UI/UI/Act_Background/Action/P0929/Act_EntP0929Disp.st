
ACTION Act_EntP0929Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0929MagConv2.tyFullMaskHide);
	
	//p_tyC0004Navi ACCESS ADR(tyP0929MagConv2.tyNaviBack);
	
	p_tyC0004Navi ACCESS ADR(tyP0929MagConv2.tyNavi2Lyr);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0929MagConv2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0929MagConv2Com ACCESS ADR(tyP0929MagConv2.tyCom);
	p_tyP0929MagConv2TopDC ACCESS ADR(tyP0929MagConv2.tyTopDC);
	p_tyP0929MagConv2TopFB ACCESS ADR(tyP0929MagConv2.tyTopFB);
	p_tyP0929MagConv2BtmDC ACCESS ADR(tyP0929MagConv2.tyBtmDC);
	p_tyP0929MagConv2BtmFB ACCESS ADR(tyP0929MagConv2.tyBtmFB);
	
	IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue AND tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue AND tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat = FALSE THEN
		
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE AND tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE AND tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));

	END_IF
	

	
END_ACTION
