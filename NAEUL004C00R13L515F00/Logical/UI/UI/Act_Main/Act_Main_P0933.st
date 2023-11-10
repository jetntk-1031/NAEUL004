
ACTION Act_Main_P0933:
	
	//Display
	tyP0933PushConv.tyFB.tyNumExtSpd.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyFB.tyNumExtTorqPercent.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
	tyP0933PushConv.tyDC.tyBtnSpdBinBit0.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyDC.tyBtnSpdBinBit1.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyDC.tyBtnSpdBinBit2.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
	tyP0933PushConv.tyDC.tyBtnSigOn.uiRtStat.0	:=  NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyDC.tyBtnAlarmRst.uiRtStat.0:=  NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
	//Display
	tyP0933PushConv.tyFB.tyNumExtSpd.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMin;
	tyP0933PushConv.tyFB.tyNumExtSpd.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtSpd.diMax;
	
	tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValueMin	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMin;
	tyP0933PushConv.tyFB.tyNumExtTorqPercent.diValueMax	:= p_tyNtParamCurr.tyProdRcpMtrPshrExtTorq.diMax;
	
	tyP0933PushConv.tyCom.tyBtnExtSlwSen.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyCom.tyBtnRetSlwSen.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyCom.tyBtnAlarmSig.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyCom.tyBtnTorqueSig.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
	tyP0933PushConv.tyDC.tyBtnAlarmRst.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	tyP0933PushConv.tyDC.tyBtnSigOn.uiRtStat.0 := NOT p_tyNtParamCurr.bProjMotorizedPusherPrep;
	
	tyP0933PushConv.tyCom.tyBtnAntiJamSen.uiRtStat.0 := p_tyNtParamCurr.tyDISettings.diPshrAntiJam = 0;
	tyP0933PushConv.tyCom.tyBtnAlarmSig.uiRtStat.0	 := p_tyNtParamCurr.tyDISettings.diMtrPshrAlmSig = 0;
	tyP0933PushConv.tyCom.tyBtnTorqueSig.uiRtStat.0  := p_tyNtParamCurr.tyDISettings.diMtrPshrTorqueSig = 0;
	
END_ACTION
