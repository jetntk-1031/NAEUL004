
ACTION Act_EntP0206Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0206OpsMagConv1.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0206OpsMagConv1.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0206OpsMagConv1.tyRcpPopUp);
	
	p_tyP0206OpsMagConv1 ACCESS ADR(tyP0206OpsMagConv1.tyOps);
	p_tyP0206MagConvIOMonitor1 ACCESS ADR(tyP0206OpsMagConv1.tyIOMonitor);
	p_tyP0206MagConvBypsInitConv1 ACCESS ADR(tyP0206OpsMagConv1.tyBypsInitConv);
	
	//Display
	fUIInRtStatHide(ADR(tyP0206OpsMagConv1.tyIOMonitor.tyLyr.uiRtStat));
	
	tyP0206OpsMagConv1.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	
	
END_ACTION
