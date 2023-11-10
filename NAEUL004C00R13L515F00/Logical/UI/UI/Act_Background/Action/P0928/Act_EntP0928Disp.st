
ACTION Act_EntP0928Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0928MagConv.tyFullMaskHide);
	
	//p_tyC0004Navi ACCESS ADR(tyP0928MagConv.tyNaviBack);
	
	p_tyC0004Navi ACCESS ADR(tyP0928MagConv.tyNavi2Lyr);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0928MagConv.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0928MagConvCom ACCESS ADR(tyP0928MagConv.tyCom);
	p_tyP0928MagConvTopDC ACCESS ADR(tyP0928MagConv.tyTopDC);
	p_tyP0928MagConvTopFB ACCESS ADR(tyP0928MagConv.tyTopFB);
	p_tyP0928MagConvBtmDC ACCESS ADR(tyP0928MagConv.tyBtmDC);
	p_tyP0928MagConvBtmFB ACCESS ADR(tyP0928MagConv.tyBtmFB);

	
	IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue AND tyP0928MagConv.tyTopFB.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0928MagConv.tyCom.tyBtnSwitch.bValue AND tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat = FALSE THEN
		
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE AND tyP0928MagConv.tyTopDC.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));
		
	ELSIF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE AND tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat = FALSE THEN
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));

	END_IF
	

END_ACTION
