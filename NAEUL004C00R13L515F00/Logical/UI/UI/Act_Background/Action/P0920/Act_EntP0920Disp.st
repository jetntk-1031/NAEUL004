
ACTION Act_EntP0920Disp:
	
	//Access Address
	p_tyC0002FullMask ACCESS ADR(tyP0920MtrNPneuCtrl.tyFullMaskHide);
	
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0920MtrNPneuCtrl.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0920MtrNPneuCtrl ACCESS ADR(tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl);
	
	p_tyP0920MtrNPneuCtrlPneu ACCESS ADR(tyP0920MtrNPneuCtrl.tyMtrNPneuCtrlPneu);
	
	//Display
	//Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAW.uiMaskRtStat.0	:= NOT(p_tyNtParamCurr.bAWPrep AND p_tyMcParamCurr.bAWDis);
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnAWPushPul.uiMaskRtStat.0	:= NOT(p_tyNtParamCurr.bAWPusherPrep AND p_tyMcParamCurr.bAWPusherDis);
	//Magazine Auto Width
	tyP0920MtrNPneuCtrl.tyMtrNPneuCtrl.tyBtnMagAW.uiMaskRtStat.0	:= NOT(p_tyNtParamCurr.bProjMagAWPrep AND p_tyMcParamCurr.bMagAWDis);

END_ACTION
