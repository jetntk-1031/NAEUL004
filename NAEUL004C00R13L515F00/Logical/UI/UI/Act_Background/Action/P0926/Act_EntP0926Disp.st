
ACTION Act_EntP0926Disp:
	
	// Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0926LifterMagConv.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0926LifterMagConv.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0926LifterMagConv.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0926LifterMagConvCom ACCESS ADR(tyP0926LifterMagConv.tyCom);
	p_tyP0926LifterMagConvDC ACCESS ADR(tyP0926LifterMagConv.tyDC);
	p_tyP0926LifterMagConvFB ACCESS ADR(tyP0926LifterMagConv.tyFB);
	
	
	// Display
//	IF p_tyDI.bMag1FixedClampRS = TRUE THEN
//		tyP0926LifterMagConv.tyCom.tyBitmapMc.usiValueIdx	:= 0;
//	ELSE
//		tyP0926LifterMagConv.tyCom.tyBitmapMc.usiValueIdx	:= 1;
//	END_IF
	
END_ACTION
