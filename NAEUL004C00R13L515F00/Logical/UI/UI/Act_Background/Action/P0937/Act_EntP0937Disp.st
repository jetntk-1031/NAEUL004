
ACTION Act_EntP0937Disp: 
	
	// Access Address
	p_tyC0001MotionStd ACCESS ADR(tyP0937AWPushOrPuller.tyMotionStd);
	
	p_tyC0002FullMask ACCESS ADR(tyP0937AWPushOrPuller.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0937AWPushOrPuller.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0937AWPushOrPuller.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0937AWPushOrPuller ACCESS ADR(tyP0937AWPushOrPuller.tyAW);
	
	p_tyP0937InOutletShutterFB ACCESS ADR(tyP0937AWPushOrPuller.tyInOutletShutterFB);
	
	// Display
	tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.diValue		:= p_tyProdRcpCurrRcp0.diWidthInUM;
	
	tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bValue		:= p_bAWPushOrPullerPwrOn;
	
	fbLmtRstTm(IN := FALSE);
	

END_ACTION
