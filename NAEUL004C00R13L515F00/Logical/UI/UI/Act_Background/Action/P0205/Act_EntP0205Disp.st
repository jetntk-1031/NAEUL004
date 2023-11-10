
ACTION Act_EntP0205Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0205OpsAIV.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0205OpsAIV.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0205IOMonitor ACCESS ADR(tyP0205OpsAIV.tyIOMonitor);

	
	tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge1.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled OR p_tyMcParamCurr.eAGVComProtocol = McSetAGVTCPEnableTCP ;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge2.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled OR p_tyMcParamCurr.eAGVComProtocol = McSetAGVTCPEnableTCP ;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge3.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled OR p_tyMcParamCurr.eAGVComProtocol = McSetAGVTCPEnableTCP ;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapAIVSLarge4.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled OR p_tyMcParamCurr.eAGVComProtocol = McSetAGVTCPEnableTCP ;
		
	tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge1.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge2.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge3.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled;
	tyP0205OpsAIV.tyIOMonitor.tyBitmapMagSLarge4.uiRtStat.0 := p_tyMcParamCurr.bAIVSizeDisabled;
	
	CASE p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyP0205OpsAIV.tyIOMonitor.tyTxtAIVCommProtocol.usiValueIdx := 0;
			
		McSetAGVCommHardIO:
			tyP0205OpsAIV.tyIOMonitor.tyTxtAIVCommProtocol.usiValueIdx := 1;
			
		McSetAGVCommDisabled:
			tyP0205OpsAIV.tyIOMonitor.tyTxtAIVCommProtocol.usiValueIdx := 2;
			
		McSetAGVTCPEnableTCP:
			tyP0205OpsAIV.tyIOMonitor.tyTxtAIVCommProtocol.uiRtStat := TRUE;
		McSetAGVTCPDisableTCP:
			tyP0205OpsAIV.tyIOMonitor.tyTxtAIVCommProtocol.uiRtStat := TRUE;
	END_CASE
	
END_ACTION
