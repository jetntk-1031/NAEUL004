(** 2021-05-14 **)
ACTION Act_Main_P0206:
	//Display
	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnEntStprExt.uiRtStat :=  NOT (p_bStopper1TwoCtrlOut);
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnMidStprRet.uiRtStat :=  NOT (p_bStopper2TwoCtrlOut);
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnExtStprExt.uiRtStat :=  NOT (p_bStopper3TwoCtrlOut);
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnMidStprRet1.uiRtStat :=  NOT (p_bStopper4TwoCtrlOut);
		tyP0206OpsMagConv1.tyIOMonitor.tyBtnExtStprExt1.uiRtStat :=  NOT (p_bStopper5TwoCtrlOut);
	END_IF

	
END_ACTION
