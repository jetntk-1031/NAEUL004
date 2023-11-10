
ACTION Act_OptP0937UpdtDat:
	
	tyP0937AWPushOrPuller.tyMotionStd.tyNumCurrPos.diValue		:= p_diAWPushOrPullerActualPos;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiAWPushOrPullerAxisErrID);
	tyP0937AWPushOrPuller.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bAWPushOrPullerPwrOn);
	tyP0937AWPushOrPuller.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bAWPushOrPullerAxisErr);
	tyP0937AWPushOrPuller.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bAWPushOrPullerIsHomed);
	tyP0937AWPushOrPuller.tyMotionStd.tyBtnOpenLmtSen.bValue		:= p_bAWPushOrPullerCloseSen;
	tyP0937AWPushOrPuller.tyMotionStd.tyBtnCloseLmtSen.bValue		:= p_bAWPushOrPullerOpenSen;
	
	IF p_bAWPushOrPullerIsHomed = TRUE THEN
		IF p_diAWPushOrPullerActualPos <= (p_tyNtParamCurr.tyProdRcpWidth.diMax / 2) THEN
			tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 38;
		ELSE
			tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 39;
		END_IF
	ELSE
		tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx	:= 38;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
	IF 	tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx < 400 THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0937AWPushOrPuller.tyMotionStd.tyBitmapMc.uiValueIdx + 400;
	END_IF
	END_IF
END_ACTION
