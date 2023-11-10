
ACTION Act_EntP0939Disp:
	
	//Access Address
	p_tyC0001MotionStd ACCESS ADR(tyP0939Lifter2.tyMotionStd);
	
	p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0939Lifter2.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0939Lifter2.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0939Lifter ACCESS ADR(tyP0939Lifter2.tyLifter);
	
//	p_tyP0939InOutletShutterFB ACCESS ADR(tyP0939Lifter2.tyInOutletShutterFB);
	
	//Display
	tyP0939Lifter2.tyMotionStd.tyBtnPwr.bValue	:= p_bLifter2PwrOn;
	
	tyP0939Lifter2.tyLifter.tyNumNewSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
