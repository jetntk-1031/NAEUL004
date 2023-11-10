
ACTION Act_OptP1026Lifter2Mask: 

	// Interlock Power
	IF p_bLifter2AxisErr = TRUE AND p_bLifter2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bLifter2AxisErr = TRUE OR p_bLifter2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bLifter2AxisErr = TRUE OR p_bLifter2PwrOn = FALSE OR p_bLifter2IsHomed = FALSE THEN
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnDownLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	END_IF
	
	IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnUpLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));
	
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));	
		
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));	

		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));	
	
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat));
	
		
	ELSIF tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	
		
	ELSIF tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));		
		
	END_IF
	
	//Axis Error
	IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Interlock Button Get
	IF p_bLifter2AxisErr = TRUE OR p_bLifter2IsHomed = FALSE OR p_bLifter2FwdLmtSen = TRUE OR p_bLifter2RevLmtSen = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn1.uiMaskRtStat));
	END_IF
	
END_ACTION
