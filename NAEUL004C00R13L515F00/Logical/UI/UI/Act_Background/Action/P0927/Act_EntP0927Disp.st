
ACTION Act_EntP0927Disp:
	
	// Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0927LifterMagConv2.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0927LifterMagConv2.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0927LifterMagConv2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0927LifterMagConvCom ACCESS ADR(tyP0927LifterMagConv2.tyCom);
	p_tyP0927LifterMagConvDC ACCESS ADR(tyP0927LifterMagConv2.tyDC);
	p_tyP0927LifterMagConvFB ACCESS ADR(tyP0927LifterMagConv2.tyFB);
	
	
	// Display
//	IF p_tyDI.bMag1FixedClampRS = TRUE THEN
//		tyP0927LifterMagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 0;
//	ELSE
//		tyP0927LifterMagConv2.tyCom.tyBitmapMc.usiValueIdx	:= 1;
//	END_IF
	
END_ACTION
