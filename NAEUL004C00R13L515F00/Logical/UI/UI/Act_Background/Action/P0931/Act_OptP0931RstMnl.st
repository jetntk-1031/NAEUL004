
ACTION Act_OptP0931RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagConv2Clp2Status = Error)) THEN
		
		eMagConv2Clp2Act	:= MagConv2ClpActIdle;
		eMagConvSelClp2Act	:= PneuActIdle;
		//Magazine Conveyor
		//FB
		tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0931MagConv2.tyFB.tyBtnEnt.bValue				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bValue				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnStop.bValue				:= TRUE;
		
		tyP0931MagConv2.tyFB.tyBtnEnt.bRtLk					:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnExit.bRtLk				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0931MagConv2.tyFB.tyBtnEnt.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnExit.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Direct
		tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl				:= FALSE;
		
		tyP0931MagConv2.tyDC.tyBtnMagIn.bValue				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnMagOut.bValue				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnStop.bValue				:= TRUE;
		
		tyP0931MagConv2.tyDC.tyBtnMagIn.bRtLk				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnMagOut.bRtLk				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnStop.bRtLk				:= TRUE;
		
		tyP0931MagConv2.tyDC.tyBtnMagIn.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnMagOut.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0	:= TRUE;
		
		//Magazine Clamper
		//FB
		//Fixed
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl		:= FALSE;
		
		tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue			:= FALSE;
		tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue			:= FALSE;
		
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyFB.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
		//Direct
		//Fixed
		tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl			:= FALSE;
		
		tyP0931MagConv2.tyDC.tyBtnFixedClamp.bValue				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bValue			:= FALSE;
		
		//Remote
		tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl			:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl		:= FALSE;
		
		tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bValue			:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bValue			:= FALSE;
		
		//Selection
		tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl			:= FALSE;
		
		tyP0931MagConv2.tyDC.tyBtnSelClamp.bValue				:= FALSE;
		tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bValue				:= FALSE;
		
		tyP0931MagConv2.tyDC.tyBtnFixedClamp.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnRemoteClamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat.0	:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnSelClamp.uiMaskRtStat.0		:= TRUE;
		tyP0931MagConv2.tyDC.tyBtnSelUnclamp.uiMaskRtStat.0		:= TRUE;
		
		tyP0931MagConv2.tyCom.tyBtnSwitch.uiMaskRtStat.0		:= TRUE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0931MagConv2.tyCom.tyBtnSwitch.bValue := FALSE;
		
		IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyrWithoutSelClamp.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyrWithoutSelClamp.uiRtStat));
		ELSE
			
			fUIInRtStatHide(ADR(tyP0931MagConv2.tyDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0931MagConv2.tyFB.tyLyr.uiRtStat));
		END_IF
	END_IF
END_ACTION
