
ACTION Act_EntP0940Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0940CommCtrl.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyP0940CommCtrlUSSMEMAA ACCESS ADR(tyP0940CommCtrl.tyUSSMEMAA);
	p_tyP0940CommCtrlUSSMEMAB ACCESS ADR(tyP0940CommCtrl.tyUSSMEMAB);
	p_tyP0940CommCtrlSOT ACCESS ADR(tyP0940CommCtrl.tySOT);
	p_tyP0940CommDMCRFID ACCESS ADR(tyP0940CommCtrl.tyDMCRFID);
	//Upstream Line A
	IF p_tyMcParamCurr.tyUSCommASMEMA.bStatSigSetGd = TRUE THEN
		tyP0940CommCtrl.tyUSSMEMAA.tyBtnUBAStat.usiTxtIdx	:= 0;
	ELSE
		tyP0940CommCtrl.tyUSSMEMAA.tyBtnUBAStat.usiTxtIdx	:= 1;
	END_IF
	
	tyP0940CommCtrl.tyUSSMEMAA.tyBtnUBAStat.uiRtStat.0	:= NOT(p_tyMcParamCurr.tyUSCommASMEMA.eSelection = SMEMASelIPC9851Ext);
	
	//Upstream Line B
	IF p_tyMcParamCurr.tyUSCommBSMEMA.bStatSigSetGd = TRUE THEN
		tyP0940CommCtrl.tyUSSMEMAB.tyBtnUBAStat.usiTxtIdx	:= 0;
	ELSE
		tyP0940CommCtrl.tyUSSMEMAB.tyBtnUBAStat.usiTxtIdx	:= 1;
	END_IF
	
	tyP0940CommCtrl.tyUSSMEMAB.tyBtnUBAStat.uiRtStat.0	:= NOT(p_tyMcParamCurr.tyUSCommBSMEMA.eSelection = SMEMASelIPC9851Ext);
	
	CASE p_tyMcParamCurr.eAGVComProtocol OF
		McSetAGVCommOPCUA:
			tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 0;
			
		McSetAGVCommHardIO:
			tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 1;
			
		McSetAGVCommDisabled:
			tyP0940CommCtrl.tySOT.tyTxtAIVCommProtocol.usiValueIdx := 2;
	
	END_CASE
	
END_ACTION
