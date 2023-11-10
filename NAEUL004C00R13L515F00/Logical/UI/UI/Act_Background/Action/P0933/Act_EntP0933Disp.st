
ACTION Act_EntP0933Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0933PushConv.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0933PushConv.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0933PushConv.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0933PushConvCom ACCESS ADR(tyP0933PushConv.tyCom);
	p_tyP0933PushConvDC ACCESS ADR(tyP0933PushConv.tyDC);
	p_tyP0933PushlConvFB ACCESS ADR(tyP0933PushConv.tyFB);
	
	//Display
	tyP0933PushConv.tyFB.tyNumExtSpd.diValue			:= p_tyProdRcpCurrRcp0.diMtrPshrExtSpd;
	tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValue	:= p_tyProdRcpCurrRcp0.diMtrPshrExtTorq;
	
END_ACTION
