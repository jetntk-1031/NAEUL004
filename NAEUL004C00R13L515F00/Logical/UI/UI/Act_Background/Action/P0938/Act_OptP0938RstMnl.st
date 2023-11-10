
ACTION Act_OptP0938RstMnl:
	
	(*Magazine Auto Width 1*)
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagAWOpen1Status = Error)) THEN
		
		eMagAWOpen1Act	:= MagAWActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl					:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnGo.bValue					:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnGo.bRtLk						:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		
		tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bValue			:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtLk			:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat.0	:= FALSE;
		
		tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtCompl		:= FALSE;
		
		tyP0938MagAW.tyMotionStd1.tyBtnPwr.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue				:= TRUE;
		tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnRst.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue			:= FALSE;
		
		tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk				:= TRUE;
		tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtLk			:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtLk			:= FALSE;
		
		tyP0938MagAW.tyMotionStd1.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag1AWEngageStatus = Error)) THEN
		
		eMag1AWEngageAct	:= PneuActIdle;
		
		tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue		:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
		tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue		:= FALSE;
		
	END_IF
	
	
	
	(*Magazine Auto Width 2*)
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagAWOpen2Status = Error)) THEN
		
		eMagAWOpen2Act	:= MagAWActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl					:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnGo.bValue					:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnGo.bRtLk						:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		
		tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bValue			:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtLk			:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat.0	:= FALSE;
		
		tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtCompl		:= FALSE;
		
		tyP0938MagAW.tyMotionStd2.tyBtnPwr.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue				:= TRUE;
		tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnRst.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue			:= FALSE;
		
		tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk				:= TRUE;
		tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtLk			:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtLk			:= FALSE;
		
		tyP0938MagAW.tyMotionStd2.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag2AWEngageStatus = Error)) THEN
		
		eMag2AWEngageAct	:= PneuActIdle;
		
		tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue		:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
		tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue		:= FALSE;
		
	END_IF
	
	
	
	(*Magazine Auto Width 3*)
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMagAWOpen3Status = Error)) THEN
		
		eMagAWOpen3Act	:= MagAWActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl					:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnGo.bValue					:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnGo.bRtLk						:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		
		tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bValue			:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtLk			:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat.0	:= FALSE;
		
		tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtCompl				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtCompl			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtCompl		:= FALSE;
		
		tyP0938MagAW.tyMotionStd3.tyBtnPwr.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue				:= TRUE;
		tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnRst.bValue				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue			:= FALSE;
		
		tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk				:= TRUE;
		tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtLk			:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtLk			:= FALSE;
		
		tyP0938MagAW.tyMotionStd3.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat		:= FALSE;
		tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eMag3AWEngageStatus = Error)) THEN
		
		eMag3AWEngageAct	:= PneuActIdle;
		
		tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl		:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue		:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
		tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue		:= FALSE;
		
	END_IF
	
END_ACTION
