
ACTION Act_EntP0204Disp:
	
	//Access Address
	p_tyC0004Navi ACCESS ADR(tyP0204OpsMag3.tyNaviBack);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0204OpsMag3.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0011RcpPopUp ACCESS ADR(tyP0204OpsMag3.tyRcpPopUp);
	
	p_tyP0204Ops ACCESS ADR(tyP0204OpsMag3.tyOps);
	p_tyP0204IOMonitor ACCESS ADR(tyP0204OpsMag3.tyIOMonitor);
	p_tyP0204BypsInitConv ACCESS ADR(tyP0204OpsMag3.tyBypsInitConv);
	p_tyP0204Param ACCESS ADR(tyP0204OpsMag3.tyParam);
	
	//Display
	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyIOMonitor.tyLyr.uiRtStat));
	fUIInRtStatHide(ADR(tyP0204OpsMag3.tyParam.tyLyr.uiRtStat));
	
	tyP0204OpsMag3.tyOps.tyBtnChgParam.uiRtStat.0	:= NOT(p_tyMcParamCurr.bChgParamEn);
	
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.usiTxtIdx	:= 44;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.usiTxtIdx:= 44;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.usiTxtIdx	:= 0;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.usiTxtIdx:= 0;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.usiTxtIdx:= 34;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.usiTxtIdx:= 0;
	ELSE 
		//	tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClmpRS.usiTxtIdx	:= 74;
		tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedUnclmpRS.usiTxtIdx:= 44;
		//	tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtClmpRS.usiTxtIdx	:= 51;
		//	tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RmtUnclmpRS.usiTxtIdx:= 50;
			tyP0204OpsMag3.tyIOMonitor.tyBtnMag3FixedClampCtrl.usiTxtIdx:= 34;
		//	tyP0204OpsMag3.tyIOMonitor.tyBtnMag3RemoteClampCtrl.usiTxtIdx:= 19;	
	
	END_IF
	
	tyP0204OpsMag3.tyParam.tyNumMaxSlt.diValueMax	:= p_tyMagRcpCurrRcp.diTtlSlt;
	
END_ACTION
