
ACTION Act_OptP0926RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifterMagConvStatus = Error)) THEN
		
		eLifterMagConvAct	:= MagConvActIdle;
		
		//Lifter Mag Conveyor
		//FB
		tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0926LifterMagConv.tyFB.tyBtnEnter.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnExit.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnStop.bValue					:= TRUE;
			
		tyP0926LifterMagConv.tyFB.tyBtnEnter.bRtLk					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnExit.bRtLk					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnStop.bRtLk					:= TRUE;
	
		tyP0926LifterMagConv.tyFB.tyBtnEnter.uiMaskRtStat.0			:= TRUE;
		tyP0926LifterMagConv.tyFB.tyBtnExit.uiMaskRtStat.0			:= TRUE;
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
			
		//Direct
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bValue					:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.bRtLk					:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnStop.bRtLk					:= TRUE;
			
		tyP0926LifterMagConv.tyDC.tyBtnMagIn.uiMaskRtStat.0			:= TRUE;
		tyP0926LifterMagConv.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
		
		//Mag Clamper
		//FB
		tyP0926LifterMagConv.tyFB.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bRtCompl				:= FALSE;
			
		tyP0926LifterMagConv.tyFB.tyBtnClamp.bValue					:= FALSE;
		tyP0926LifterMagConv.tyFB.tyBtnUnclamp.bValue				:= FALSE;
				
		tyP0926LifterMagConv.tyFB.tyBtnClamp.uiMaskRtStat.0			:= TRUE;
		tyP0926LifterMagConv.tyFB.tyBtnUnclamp.uiMaskRtStat.0		:= TRUE;
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
			
		//Direct
		tyP0926LifterMagConv.tyDC.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bRtCompl				:= FALSE;
		
		tyP0926LifterMagConv.tyDC.tyBtnClamp.bValue					:= FALSE;
		tyP0926LifterMagConv.tyDC.tyBtnUnclamp.bValue				:= FALSE;
		
		tyP0926LifterMagConv.tyDC.tyBtnClamp.uiMaskRtStat.0			:= TRUE;
		tyP0926LifterMagConv.tyDC.tyBtnUnclamp.uiMaskRtStat.0		:= TRUE;
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN
		
		tyP0926LifterMagConv.tyCom.tyBtnDCCtrl.bValue	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0926LifterMagConv.tyFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0926LifterMagConv.tyDC.tyLyr.uiRtStat));
		
	END_IF
		
END_ACTION
