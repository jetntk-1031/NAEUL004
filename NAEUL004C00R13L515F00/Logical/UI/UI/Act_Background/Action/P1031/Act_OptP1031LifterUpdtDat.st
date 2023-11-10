
ACTION Act_OptP1031LifterUpdtDat:
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumCurrPos.diValue		:= p_diLifterBtmActualPos;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiLifterBtmAxisErrID);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapPwr.usiValueIdx	:= BOOL_TO_USINT(p_bLifterBtmPwrOn);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapRst.usiValueIdx	:= BOOL_TO_USINT(NOT p_bLifterBtmAxisErr);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bLifterBtmIsHomed);
	tyP1031MagSetTeach.tyMotionStdLifter.tyBtnUpLmtSen.bValue		:= p_bLifterBtmUpSen;
	tyP1031MagSetTeach.tyMotionStdLifter.tyBtnDownLmtSen.bValue		:= p_bLifterBtmDownSen;
	
	//Machine Bitmap
	IF p_bLifterBtmIsHomed = TRUE THEN
		IF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx := 2;
		ELSIF p_diLifterBtmActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx := 3;
		ELSE
			tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx := 4;
		END_IF
	ELSE
		tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= 2;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 700 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 700;
			END_IF	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF p_tyNtParamCurr.bProjMagConvLane1Prep = FALSE THEN
				IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 600 THEN
					tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 600;
				END_IF	
			ELSE
				IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 900 THEN
					tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 900;
				END_IF	
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 100 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSE
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 300 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjLifterMagPlatform THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 800 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 800;
			END_IF	
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 500 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 500;
			END_IF	
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 200 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 200;
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 400 THEN
				tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1031MagSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 400;
			END_IF	
		END_IF
	END_IF

	
	
END_ACTION
