
ACTION Act_OptP0927RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifterMagConv2Status = Error)) THEN
		
		eLifterMagConv2Act	:= MagConvActIdle;
		
		//Lifter Mag Conveyor
		//FB
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnExit.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bValue					:= TRUE;
			
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.bRtLk					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnExit.bRtLk					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnStop.bRtLk					:= TRUE;
	
		tyP0927LifterMagConv2.tyFB.tyBtnEnter.uiMaskRtStat.0			:= TRUE;
		tyP0927LifterMagConv2.tyFB.tyBtnExit.uiMaskRtStat.0			:= TRUE;
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
			
		//Direct
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bValue					:= TRUE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.bRtLk					:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.bRtLk					:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnStop.bRtLk					:= TRUE;
			
		tyP0927LifterMagConv2.tyDC.tyBtnMagIn.uiMaskRtStat.0			:= TRUE;
		tyP0927LifterMagConv2.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
		
		//Mag Clamper
		//FB
		tyP0927LifterMagConv2.tyFB.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bRtCompl				:= FALSE;
			
		tyP0927LifterMagConv2.tyFB.tyBtnClamp.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.bValue				:= FALSE;
				
		tyP0927LifterMagConv2.tyFB.tyBtnClamp.uiMaskRtStat.0			:= TRUE;
		tyP0927LifterMagConv2.tyFB.tyBtnUnclamp.uiMaskRtStat.0		:= TRUE;
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
			
		//Direct
		tyP0927LifterMagConv2.tyDC.tyBtnClamp.bRtCompl				:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bRtCompl				:= FALSE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnClamp.bValue					:= FALSE;
		tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.bValue				:= FALSE;
		
		tyP0927LifterMagConv2.tyDC.tyBtnClamp.uiMaskRtStat.0			:= TRUE;
		tyP0927LifterMagConv2.tyDC.tyBtnUnclamp.uiMaskRtStat.0		:= TRUE;
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN
		
		tyP0927LifterMagConv2.tyCom.tyBtnDCCtrl.bValue	:= FALSE;
		
		fUIInRtStatOff(ADR(tyP0927LifterMagConv2.tyFB.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0927LifterMagConv2.tyDC.tyLyr.uiRtStat));
		
	END_IF
		
END_ACTION
