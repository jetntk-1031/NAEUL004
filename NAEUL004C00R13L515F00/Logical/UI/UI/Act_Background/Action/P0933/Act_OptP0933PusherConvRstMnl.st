
ACTION Act_OptP0933RstMnl: 

	IF EDGEPOS((bManualMod = FALSE) OR (p_ePshrConvStatus = Error) OR (p_eMtrPshrStatus = Error))  THEN
		
		ePshrConvAct	:= ConvActIdle;
		eMtrPshrAct	:= MtrPshrActIdle;
		
		//FB - Motor
		tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExit.bRtCompl					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl				:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bRtCompl					:= FALSE;
		
		tyP0933PushConv.tyFB.tyBtnEnt.bValue					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExit.bValue					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnCylExit.bValue				:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bValue					:= TRUE;
		
		tyP0933PushConv.tyFB.tyBtnEnt.bRtLk						:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExit.bRtLk					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnCylExit.bRtLk					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0933PushConv.tyFB.tyBtnEnt.uiMaskRtStat.0			:= TRUE;
		tyP0933PushConv.tyFB.tyBtnExit.uiMaskRtStat.0			:= TRUE;
		tyP0933PushConv.tyFB.tyBtnCylExit.uiMaskRtStat.0		:= TRUE;
		tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//FB - Pneu
		tyP0933PushConv.tyFB.tyBtnExt.bRtCompl					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bRtCompl					:= FALSE;
		
		tyP0933PushConv.tyFB.tyBtnExt.bValue					:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bValue					:= FALSE;
		
		tyP0933PushConv.tyFB.tyBtnExt.uiMaskRtStat.0			:= TRUE;
		tyP0933PushConv.tyFB.tyBtnRet.uiMaskRtStat.0			:= TRUE;
		
		//DC - Motor
		tyP0933PushConv.tyDC.tyBtnStart.bRtCompl				:= FALSE;
		tyP0933PushConv.tyDC.tyBtnStop.bRtCompl					:= FALSE;
		
		tyP0933PushConv.tyDC.tyBtnStart.bValue					:= FALSE;
		tyP0933PushConv.tyDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0933PushConv.tyDC.tyBtnStart.bRtLk					:= FALSE;
		tyP0933PushConv.tyDC.tyBtnStop.bRtLk					:= TRUE;
		
		tyP0933PushConv.tyDC.tyBtnStart.uiMaskRtStat.0			:= TRUE;
		tyP0933PushConv.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//DC - Pneu
		tyP0933PushConv.tyDC.tyBtnExt.bRtCompl					:= FALSE;
		tyP0933PushConv.tyDC.tyBtnRet.bRtCompl					:= FALSE;
		
		tyP0933PushConv.tyDC.tyBtnExt.bValue					:= FALSE;
		tyP0933PushConv.tyDC.tyBtnRet.bValue					:= FALSE;
		
		tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat.0			:= TRUE;
		tyP0933PushConv.tyDC.tyBtnRet.uiMaskRtStat.0			:= TRUE;
		
		//DC
		tyP0933PushConv.tyDC.tyBtnExt.bRtCompl			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnRet.bRtCompl			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bRtCompl	:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bRtCompl	:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bRtCompl	:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSigOn.bRtCompl		:= FALSE;
		tyP0933PushConv.tyDC.tyBtnBrake.bRtCompl		:= FALSE;
		tyP0933PushConv.tyDC.tyBtnAlarmRst.bRtCompl		:= FALSE;
		
		tyP0933PushConv.tyDC.tyBtnExt.bValue			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnRet.bValue			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bValue		:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bValue		:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bValue		:= FALSE;
		tyP0933PushConv.tyDC.tyBtnSigOn.bValue			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnBrake.bValue			:= FALSE;
		tyP0933PushConv.tyDC.tyBtnAlarmRst.bValue		:= FALSE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0933PushConv.tyCom.tyBtnSwitch.bValue := FALSE;
		
		fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyFB.tyLyr.uiRtStat));
		
	END_IF
	
	eInShutterAct	:= PneuActIdle;
	eOutShutterAct	:= PneuActIdle;
		
	tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
	tyP0933PushConv.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
	tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
	tyP0933PushConv.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	
	
END_ACTION
