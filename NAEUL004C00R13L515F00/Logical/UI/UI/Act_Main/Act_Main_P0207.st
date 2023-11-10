(** 2021-05-14 **)
ACTION Act_Main_P0207:
	
	//Display
	IF p_tyNtParamCurr.bProjMagConvLane2Prep THEN
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnEntStprExt.uiRtStat :=  NOT (p_bStopper1TwoCtrlOut2);
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnMidStprRet.uiRtStat :=  NOT (p_bStopper2TwoCtrlOut2);
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnExtStprExt.uiRtStat :=  NOT (p_bStopper3TwoCtrlOut2);
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnMidStprRet1.uiRtStat :=  NOT (p_bStopper4TwoCtrlOut2);
		tyP0207OpsMagConv2.tyIOMonitor.tyBtnExtStprExt1.uiRtStat :=  NOT (p_bStopper5TwoCtrlOut2);
	END_IF
	
END_ACTION
