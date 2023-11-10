
ACTION Act_OptP1026LifterMask: 

	// Interlock Power
	IF p_bLifterBtmAxisErr = TRUE AND p_bLifterBtmPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE THEN
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
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmPwrOn = FALSE OR p_bLifterBtmIsHomed = FALSE THEN
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));
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
	
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));
	
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));	
		
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));	

		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));	
	
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl = TRUE OR tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
		
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat));
	
		
	ELSIF tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat));
	
		
	ELSIF tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl = TRUE THEN
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
	IF p_bLifterBtmAxisErr = TRUE OR p_bLifterBtmIsHomed = FALSE OR p_bLifterBtmFwdLmtSen = TRUE OR p_bLifterBtmRevLmtSen = TRUE THEN
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterPosA.tyBtn1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP1026McSetTeach.tyTeachLifterPosB.tyBtn1.uiMaskRtStat));
	END_IF
	
END_ACTION
