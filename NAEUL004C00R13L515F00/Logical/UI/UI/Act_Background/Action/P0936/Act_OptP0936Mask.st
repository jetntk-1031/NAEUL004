
ACTION Act_OptP0936Mask: 

	// Interlock Power
	IF p_bTravAxisErr = TRUE AND p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnPwr.uiMaskRtStat));
		tyP0936Trav.tyMotionStd.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE OR p_bTravIsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));	
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0936Trav.tyMotionStd.tyBtnRearLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	IF tyP0936Trav.tyMotionStd.tyBtnFrontLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));		
		
	ELSIF tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));		
		
	ELSIF tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));		
		
	ELSIF tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtCompl = TRUE OR tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));		
		
	ELSIF tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtCompl = TRUE OR tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));		
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));	
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));	
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));	
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));		
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat));	
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat));	
		fUIInRtStatOff(ADR(tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat));		
		
	END_IF
	
	//Axis Error
	IF tyP0936Trav.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0936Trav.tyMotionStd.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0936Trav.tyMotionStd.tyBtnRst.uiMaskRtStat));
	END_IF
	
END_ACTION
