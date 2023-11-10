
ACTION Act_EntP0922Disp:
	
	//Access Address
	p_tyC0003DualMask ACCESS ADR(tyP0922Stopper.tyDualMaskHide);
	
	p_tyC0004Navi ACCESS ADR(tyP0921InletNOutletShutter.tyNaviBack);

	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0921InletNOutletShutter.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	IF (p_tyNtParamCurr.bProjStopperAPrep OR p_tyNtParamCurr.bProjStopperBPrep ) THEN
		p_tyP0922StopperACom ACCESS ADR(tyP0922Stopper.tyStopperACom);
		p_tyP0922StopperADC ACCESS ADR(tyP0922Stopper.tyStopperADC);
		p_tyP0922StopperAFB ACCESS ADR(tyP0922Stopper.tyStopperAFB);
		p_tyP0922StopperADis ACCESS ADR(tyP0922Stopper.tyStopperADis);
		
		p_tyP0922StopperBCom ACCESS ADR(tyP0922Stopper.tyStopperBCom);
		p_tyP0922StopperBDC ACCESS ADR(tyP0922Stopper.tyStopperBDC);
		p_tyP0922StopperBFB ACCESS ADR(tyP0922Stopper.tyStopperBFB);
		p_tyP0922StopperBDis ACCESS ADR(tyP0922Stopper.tyStopperBDis);

	ELSIF p_tyNtParamCurr.bProjInletStopperPrep THEN
		
		p_tyP0922StopperACom ACCESS ADR(tyP0922Stopper.tyInStopperCom);
		p_tyP0922StopperADC ACCESS ADR(tyP0922Stopper.tyInStopperDC);
		p_tyP0922StopperAFB ACCESS ADR(tyP0922Stopper.tyInStopperFB);
		p_tyP0922StopperADis ACCESS ADR(tyP0922Stopper.tyInStopperDis);
		
		p_tyP0922StopperBCom ACCESS ADR(tyP0922Stopper.tyStopperBCom); //can be replaced by other if needed
		p_tyP0922StopperBDC ACCESS ADR(tyP0922Stopper.tyStopperBDC); //can be replaced by other if needed
		p_tyP0922StopperBFB ACCESS ADR(tyP0922Stopper.tyStopperBFB); //can be replaced by other if needed
		p_tyP0922StopperBDis ACCESS ADR(tyP0922Stopper.tyStopperBDis); //can be replaced by other if needed
	END_IF
	//Display
	tyP0922Stopper.tyStopperADis.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperAPrep AND p_tyMcParamCurr.bStopperADis);
	
	tyP0922Stopper.tyStopperBDis.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperBPrep AND p_tyMcParamCurr.bStopperBDis);
	
	tyP0922Stopper.tyInStopperDis.tyLyr.uiRtStat.0   := NOT(p_tyNtParamCurr.bProjInletStopperPrep AND p_tyMcParamCurr.bInStopperDis);
END_ACTION
