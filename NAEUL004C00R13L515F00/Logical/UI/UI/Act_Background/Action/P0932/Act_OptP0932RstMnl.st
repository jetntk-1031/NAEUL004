
ACTION Act_OptP0932RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagConv2Clp3Status = Error)) THEN
		
		eMagConv2Clp3Act	:= MagConv2ClpActIdle;
		eMagConvSelClp3Act	:= PneuActIdle;
		//Magazine Conveyor
		//FB
		tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0932MagConv3.tyFB.tyBtnEnt.bValue				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bValue				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0932MagConv3.tyFB.tyBtnEnt.bRtLk					:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0932MagConv3.tyFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Direct
		tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0932MagConv3.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnStop.bValue				:= TRUE;
		
		tyP0932MagConv3.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0932MagConv3.tyDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Magazine Clamper
		//FB
		//Fixed
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl		:= FALSE;
		
		tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue			:= FALSE;
		tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue			:= FALSE;
		
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyFB.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0932MagConv3.tyDC.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl			:= FALSE;
		
		tyP0932MagConv3.tyDC.tyBtnSelClamp.bValue				:= FALSE;
		tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bValue				:= FALSE;
		
		tyP0932MagConv3.tyDC.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0932MagConv3.tyDC.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0932MagConv3.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0932MagConv3.tyCom.tyBtnSwitch.bValue := FALSE;
		
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			
			fUIInRtStatHide(ADR(tyP0932MagConv3.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0932MagConv3.tyFB.tyLyr.uiRtStat));
		END_IF
	END_IF
	
END_ACTION
