
ACTION Act_OptP0937Mask: 
	
	// Interlock Power
	IF p_bAWPushOrPullerAxisErr = TRUE AND p_bAWPushOrPullerPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.uiMaskRtStat));
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bValue		:= FALSE;
	ELSE
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.uiMaskRtStat));
	END_IF
	
	// Interlock Others Move
	IF p_bAWPushOrPullerAxisErr = TRUE OR p_bAWPushOrPullerPwrOn = FALSE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	// Interlock Move Absolute
	IF p_bAWPushOrPullerAxisErr = TRUE OR p_bAWPushOrPullerPwrOn = FALSE OR p_bAWPushOrPullerIsHomed = FALSE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
	END_IF
	
	//Interlock Limit Sensor
	IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnOpenLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
	END_IF
	
	IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnCloseLmtSen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
	END_IF
	
	// Interlock When Moving
	IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtCompl = TRUE OR tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtCompl = TRUE OR tyP0934AW.tyMotionStd.tyBtnJogClose.bValue = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyAW.tyBtnGo.uiMaskRtStat));
		
	ELSIF tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.uiMaskRtStat));
		
	END_IF
	
	//Axis Error
	IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		fUIInRtStatOff(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.uiMaskRtStat));
	ELSE
		fUIInRtStatHide(ADR(tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.uiMaskRtStat));
	END_IF
	
END_ACTION
