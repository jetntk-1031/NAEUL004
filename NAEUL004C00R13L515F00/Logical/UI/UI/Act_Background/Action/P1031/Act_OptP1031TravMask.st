
ACTION Act_OptP1031TravMask: 

	// Interlock Power
	IF p_bTravAxisErr = TRUE AND p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat));
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE OR p_bTravIsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRearLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnFrontLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));

	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl = TRUE OR tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl = TRUE OR tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl = TRUE  THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Interlock Button Get
	IF p_bTravAxisErr = TRUE OR p_bTravIsHomed = FALSE OR p_bTravFwdLmtSen = TRUE OR p_bTravRevLmtSen = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn1.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn1.uiMaskRtStat));
	END_IF
	
END_ACTION
