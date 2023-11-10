
ACTION Act_OptP0938Mask: 
	
	(*Magazine Auto Width 1*)
	//Interlock Power
	IF p_bMagAWOpen1AxisErr = TRUE AND p_bMagAWOpen1PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnPwr.uiMaskRtStat));
		tyP0938MagAW.tyMotionStd1.tyBtnPwr.bValue	:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	//Interlock Others Move
	IF p_bMagAWOpen1AxisErr = TRUE OR p_bMagAWOpen1PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock Move Absolute
	IF p_bMagAWOpen1AxisErr = TRUE OR p_bMagAWOpen1PwrOn = FALSE OR p_bMagAWOpen1IsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Engage
	IF p_bMagAWOpen1AxisErr = TRUE OR p_bMagAWOpen1PwrOn = FALSE OR p_tyDI.bMagPresentSen1 = FALSE OR tyP0938MagAW.tyMagAW1.tyBtnEngageRS.bValue = TRUE OR tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl = TRUE OR tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl = TRUE OR p_eMag1AWEngageStatus = Error THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0938MagAW.tyMotionStd1.tyBtnOpenLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
	END_IF
	
	IF tyP0938MagAW.tyMotionStd1.tyBtnCloseLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock When Moving
	IF tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnGo.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd1.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd1.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Pneumatic
	IF tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW1.tyBtnDisengage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW1.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW1.tyBtnDisengage.uiMaskRtStat));
	END_IF
	
	
	
	(*Magazine Auto Width 2*)
	//Interlock Power
	IF p_bMagAWOpen2AxisErr = TRUE AND p_bMagAWOpen2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnPwr.uiMaskRtStat));
		tyP0938MagAW.tyMotionStd2.tyBtnPwr.bValue	:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	//Interlock Others Move
	IF p_bMagAWOpen2AxisErr = TRUE OR p_bMagAWOpen2PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock Move Absolute
	IF p_bMagAWOpen2AxisErr = TRUE OR p_bMagAWOpen2PwrOn = FALSE OR p_bMagAWOpen2IsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Engage
	IF p_bMagAWOpen2AxisErr = TRUE OR p_bMagAWOpen2PwrOn = FALSE OR p_tyDI.bMagPresentSen2 = FALSE OR tyP0938MagAW.tyMagAW2.tyBtnEngageRS.bValue = TRUE OR tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl = TRUE OR tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl = TRUE OR p_eMag2AWEngageStatus = Error THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0938MagAW.tyMotionStd2.tyBtnOpenLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
	END_IF
	
	IF tyP0938MagAW.tyMotionStd2.tyBtnCloseLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock When Moving
	IF tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnGo.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd2.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd2.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Pneumatic
	IF tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW2.tyBtnDisengage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW2.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW2.tyBtnDisengage.uiMaskRtStat));
	END_IF
	
	
	
	(*Magazine Auto Width 3*)
	//Interlock Power
	IF p_bMagAWOpen3AxisErr = TRUE AND p_bMagAWOpen3PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnPwr.uiMaskRtStat));
		tyP0938MagAW.tyMotionStd3.tyBtnPwr.bValue	:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	//Interlock Others Move
	IF p_bMagAWOpen3AxisErr = TRUE OR p_bMagAWOpen3PwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock Move Absolute
	IF p_bMagAWOpen3AxisErr = TRUE OR p_bMagAWOpen3PwrOn = FALSE OR p_bMagAWOpen3IsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Engage
	IF p_bMagAWOpen3AxisErr = TRUE OR p_bMagAWOpen3PwrOn = FALSE OR p_tyDI.bMagPresentSen3 = FALSE OR tyP0938MagAW.tyMagAW3.tyBtnEngageRS.bValue = TRUE OR tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl = TRUE OR tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl = TRUE OR p_eMag3AWEngageStatus = Error THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0938MagAW.tyMotionStd3.tyBtnOpenLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
	END_IF
	
	IF tyP0938MagAW.tyMotionStd3.tyBtnCloseLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	//Interlock When Moving
	IF tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtCompl = TRUE OR tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.uiMaskRtStat));
		
	ELSIF tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnGo.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMotionStd3.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMotionStd3.tyBtnRst.uiMaskRtStat));
	END_IF
	
	//Pneumatic
	IF tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0938MagAW.tyMagAW3.tyBtnDisengage.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW3.tyBtnEngage.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0938MagAW.tyMagAW3.tyBtnDisengage.uiMaskRtStat));
	END_IF
	
END_ACTION
