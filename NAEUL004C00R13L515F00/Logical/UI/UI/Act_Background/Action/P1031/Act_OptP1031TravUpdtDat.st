
ACTION Act_OptP1031TravUpdtDat:
	
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumCurrPos.diValue			:= p_diTravActualPos;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiTravAxisErrID);
	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bTravPwrOn);
	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bTravAxisErr);
	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bTravIsHomed);
	tyP1031MagSetTeach.tyMotionStdTrav.tyBtnFrontLmtSen.bValue		:= p_bTravFrontSen;
	tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRearLmtSen.bValue		:= p_bTravRearSen;
	
	//Machine Bitmap
	IF p_bTravIsHomed = TRUE THEN
		IF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3) THEN
			tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 5;
		ELSIF p_diTravActualPos <= (p_tyNtParamCurr.tyUITravTargetPos.diMax / 3 * 2) THEN
			tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 6;
		ELSE
			tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx 	:= 7;
		END_IF
	ELSE
		tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= 5;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 700 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 700;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 600 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 600;
			END_IF	
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 100 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSE
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 300 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 800 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 800;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 500 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 500;
			END_IF	
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 200 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 200;
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx < 400 THEN
				tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdTrav.tyBitmapMc.uiValueIdx + 400;
			END_IF
		END_IF
	END_IF
	
	
END_ACTION
