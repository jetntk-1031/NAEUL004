
ACTION Act_OptP0936UpdtDat:
	
	tyP0936Trav.tyMotionStd.tyNumCurrPos.diValue		:= p_diTravActualPos;
	tyP0936Trav.tyMotionStd.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiTravAxisErrID);
	tyP0936Trav.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bTravPwrOn);
	tyP0936Trav.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bTravAxisErr);
	tyP0936Trav.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bTravIsHomed);
	tyP0936Trav.tyMotionStd.tyBtnFrontLmtSen.bValue		:= p_bTravFrontSen;
	tyP0936Trav.tyMotionStd.tyBtnRearLmtSen.bValue		:= p_bTravRearSen;
	
	//Machine Bitmap
	IF p_bTravIsHomed = TRUE THEN
		IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 5;
		ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 6;
		ELSE
			tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 7;
		END_IF
	ELSE
		tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= 5;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 700 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 700;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 600 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 600;
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSE
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 800 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 800;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 500 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 500;
			END_IF
		ELSIF  p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN//p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
			END_IF
		ELSIF  p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx < 400 AND p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 440;
			ELSE
				tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0936Trav.tyMotionStd.tyBitmapMc.uiValueIdx + 400;
			END_IF
		END_IF
	END_IF
	
END_ACTION
