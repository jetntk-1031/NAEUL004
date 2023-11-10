
ACTION Act_OptP0939Mask: 

	// Interlock Power
	IF p_bLifter2AxisErr = TRUE AND p_bLifter2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnPwr.uiMaskRtStat));
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bLifter2AxisErr = TRUE OR p_bLifter2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bLifter2AxisErr = TRUE OR p_bLifter2PwrOn = FALSE OR p_bLifter2IsHomed = FALSE THEN
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSE
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0939Lifter2.tyMotionStd.tyBtnDownLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	IF tyP0939Lifter2.tyMotionStd.tyBtnUpLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));

	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtCompl = TRUE OR tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtCompl = TRUE OR tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));
	
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat));

	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat));
	
	END_IF
	
	//Axis Error
	IF tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyMotionStd.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0939Lifter2.tyMotionStd.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Next Slot
	IF p_diLifter2CurrSltA >= p_tyProdRcpCurrRcp0.diMaxSltValue THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat));
	END_IF
	
	//Previous Slot
	IF p_diLifter2CurrSltA <= p_tyProdRcpCurrRcp0.diMinSltValue THEN
		fUIInRtStatOff(ADR(tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat));
	END_IF
	
END_ACTION
