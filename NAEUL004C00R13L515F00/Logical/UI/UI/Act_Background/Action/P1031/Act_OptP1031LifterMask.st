
ACTION Act_OptP1031LifterMask: 

	// Interlock Power
	IF p_bLifterBtmAxisErr = TRUE AND p_bLifterBtmPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE OR p_bLifterBtmIsHomed = FALSE THEN
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnDownLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnUpLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl = TRUE OR tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl = TRUE OR tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Interlock Button Get
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmIsHomed = FALSE OR p_bLifterBtmFwdLmtSen = TRUE OR p_bLifterBtmRevLmtSen = TRUE THEN
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn1.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn1.uiMaskRtStat));
	END_IF
	
END_ACTION
