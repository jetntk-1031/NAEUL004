
ACTION Act_EntP0936Disp:
	
	//Access Address
	p_tyC0001MotionStd ACCESS ADR(tyP0936Trav.tyMotionStd);
	
	p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0936Trav.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0936Trav.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0936Trav ACCESS ADR(tyP0936Trav.tyTrav);
	
	p_tyP0936InOutletShutterFB ACCESS ADR(tyP0936Trav.tyInOutletShutterFB);
	
	//Display
	tyP0936Trav.tyMotionStd.tyBtnPwr.bValue	:= p_bTravPwrOn;
	
END_ACTION
