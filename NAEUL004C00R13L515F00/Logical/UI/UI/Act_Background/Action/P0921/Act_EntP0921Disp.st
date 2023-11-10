
ACTION Act_EntP0921Disp:
	
	//Access Address
	p_tyC0003DualMask ACCESS ADR(tyP0921InletNOutletShutter.tyDualMaskHide);

	//Add_2022.12.12
	IF NOT p_tyNtParamCurr.bProjOutletShut2Prep OR NOT p_tyNtParamCurr.bProjOutletShut3Prep THEN
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviBack);
	ELSE
		p_tyC0004Navi ACCESS ADR (tyP0921InletNOutletShutter.tyNaviLyr1);
	END_IF
		
	//	p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviBack);
	//	p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviLyr1);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0921InletNOutletShutter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0921InletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterCom);
	p_tyP0921InletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDC);
	p_tyP0921InletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterFB);
	p_tyP0921InletShutterDis ACCESS ADR(tyP0921InletNOutletShutter.tyInletShutterDis);
	
	p_tyP0921OutletShutterCom ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterCom);
	p_tyP0921OutletShutterDC ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterDC);
	p_tyP0921OutletShutterFB ACCESS ADR(tyP0921InletNOutletShutter.tyOutletShutterFB);
	

	
	//Display
//	tyP0921InletNOutletShutter.tyInletShutterDis.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletShutPrep AND p_tyMcParamCurr.bInShutterDis);
	
END_ACTION
