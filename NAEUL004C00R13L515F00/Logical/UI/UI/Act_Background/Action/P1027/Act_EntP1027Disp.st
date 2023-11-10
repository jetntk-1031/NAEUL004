
ACTION Act_EntP1027Disp: 
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP1027McSetOpCon.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR (tyP1027McSetOpCon.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1027McSetOpCon ACCESS ADR(tyP1027McSetOpCon.tyParam);
	
	//Backup Param
	tyP1027McSetOpCon.tyParamBkUp	:= tyP1027McSetOpCon.tyParam;
	
END_ACTION
