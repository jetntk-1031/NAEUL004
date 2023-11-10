
ACTION Act_OptP1026TravMask: 

	// Interlock Power
	IF p_bTravAxisErr = TRUE AND p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat));
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bTravAxisErr = TRUE OR p_bTravPwrOn = FALSE OR p_bTravIsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnRearLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	END_IF
	
	IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnFrontLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));
	
	ELSIF tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat));	
		
	END_IF
	
	//Axis Error
	IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl = TRUE  THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Interlock Button Get
	IF p_bTravAxisErr = TRUE OR p_bTravIsHomed = FALSE OR p_bTravFwdLmtSen = TRUE OR p_bTravRevLmtSen = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachTravPosA.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachTravPosB.tyBtn1.uiMaskRtStat));
	END_IF
	
END_ACTION
