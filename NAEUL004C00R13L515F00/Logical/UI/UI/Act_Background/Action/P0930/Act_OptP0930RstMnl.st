
ACTION Act_OptP0930RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagConv2Clp1Status = Error)) THEN
		
		eMagConv2Clp1Act	:= MagConv2ClpActIdle;
		eMagConvSelClp1Act	:= PneuActIdle;
		//Magazine Conveyor
		//FB
		tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0930MagConv1.tyFB.tyBtnEnt.bValue				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnExit.bValue				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0930MagConv1.tyFB.tyBtnEnt.bRtLk					:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0930MagConv1.tyFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Direct
		tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0930MagConv1.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnStop.bValue				:= TRUE;
		
		tyP0930MagConv1.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0930MagConv1.tyDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Magazine Clamper
		//FB
		//Top
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Top
		tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl		:= FALSE;
		
		tyP0930MagConv1.tyFB.tyBtnSelClamp.bValue			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bValue			:= FALSE;
		
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyFB.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;

		
		tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Top
		tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl			:= FALSE;
		
		tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue				:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue				:= FALSE;
		
		tyP0930MagConv1.tyDC.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0930MagConv1.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0930MagConv1.tyCom.tyBtnSwitch.bValue := FALSE;
		
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			
			fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0930MagConv1.tyFB.tyLyr.uiRtStat));
		END_IF
	END_IF
	
END_ACTION
