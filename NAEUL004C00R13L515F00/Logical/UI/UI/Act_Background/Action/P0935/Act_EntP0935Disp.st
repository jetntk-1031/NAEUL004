
ACTION Act_EntP0935Disp:
	
	//Access Address
	p_tyC0001MotionStd ACCESS ADR(tyP0935Lifter.tyMotionStd);
	
	p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0935Lifter.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0935Lifter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0935Lifter ACCESS ADR(tyP0935Lifter.tyLifter);
	
	p_tyP0935InOutletShutterFB ACCESS ADR(tyP0935Lifter.tyInOutletShutterFB);
	
	//Display
	tyP0935Lifter.tyMotionStd.tyBtnPwr.bValue	:= p_bLifterBtmPwrOn;
	
	tyP0935Lifter.tyLifter.tyNumNewSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
