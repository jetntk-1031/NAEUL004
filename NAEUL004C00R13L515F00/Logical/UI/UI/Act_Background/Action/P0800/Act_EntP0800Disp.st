
ACTION Act_EntP0800Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0800MagInfo.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0800MagInfo1 ACCESS ADR(tyP0800MagInfo.tyMagInfo1);
	p_tyP0800MagInfo2 ACCESS ADR(tyP0800MagInfo.tyMagInfo2);
	
END_ACTION
