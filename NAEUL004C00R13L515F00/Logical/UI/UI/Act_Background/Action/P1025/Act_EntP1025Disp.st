
ACTION Act_EntP1025Disp: 
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP1025McSetScan.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0006Set ACCESS ADR(tyCommon.tySet);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR (tyP1025McSetScan.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP1025McSetScan ACCESS ADR(tyP1025McSetScan.tyScan);
	
	//Backup Param
	tyP1025McSetScan.tyScanBkUp	:= tyP1025McSetScan.tyScan;
	
END_ACTION
