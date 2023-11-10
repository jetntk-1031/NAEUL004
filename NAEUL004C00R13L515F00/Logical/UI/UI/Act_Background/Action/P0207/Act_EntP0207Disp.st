
ACTION Act_EntP0207Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0207OpsMagConv2.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0207OpsMagConv2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0207OpsMagConv2.tyRcpPopUp);
	
	p_tyP0207OpsMagConv2 ACCESS ADR(tyP0207OpsMagConv2.tyOps);
	p_tyP0207MagConvIOMonitor2 ACCESS ADR(tyP0207OpsMagConv2.tyIOMonitor);
	p_tyP0207MagConvBypsInitConv2 ACCESS ADR(tyP0207OpsMagConv2.tyBypsInitConv);
	
	//Display
	fUIInRtStatHide(ADR(tyP0207OpsMagConv2.tyIOMonitor.tyLyr.uiRtStat));
	
	tyP0207OpsMagConv2.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	
	
END_ACTION
