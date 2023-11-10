
ACTION Act_OptP0921Navi:
	
	IF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE OR
		 tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		
		eChgPage		:= UIP0920MtrNPneuCtrl;
			
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnBack.bValue	 := FALSE;
		
		
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnBack.bValue	 := FALSE;
		
		tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bRtCompl := FALSE;
		tyP0921InletNOutletShutter.tyNaviBack.tyBtnBack.bValue	 := FALSE;
		
		
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnRgt.bRtCompl THEN
		
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr2);
		
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom2);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2);
		p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis2);
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom3);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC3);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB3);
		
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnRgt.bRtCompl := FALSE;
		
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnLeft.bRtCompl THEN
		
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr2);
		
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom2);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC2);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB2);
		p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDis2);
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom3);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC3);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB3);
		
		tyP0921InletNOutletShutter.tyNaviLyr1.tyBtnLeft.bRtCompl := FALSE;
		
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnRgt.bRtCompl THEN
		
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr1);
		
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
		p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis);
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
		
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnRgt.bRtCompl := FALSE;
		
	ELSIF tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnLeft.bRtCompl THEN
		
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr1);
		
		p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
		p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
		p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
		p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis);
		
		p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
		p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
		p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
		
		tyP0921InletNOutletShutter.tyNaviLyr2.tyBtnLeft.bRtCompl := FALSE;	

	END_IF
		
	
END_ACTION
