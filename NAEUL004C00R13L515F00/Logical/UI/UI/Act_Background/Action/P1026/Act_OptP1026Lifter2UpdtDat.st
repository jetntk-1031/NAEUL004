
ACTION Act_OptP1026Lifter2UpdtDat:
	
	tyP1026McSetTeach.tyMotionStdLifter.tyNumCurrPos.diValue		:= p_diLifter2ActualPos;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumErrCode.diValue		:= UDINT_TO_DINT(p_udiLifter2AxisErrID);
	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bLifter2PwrOn);
	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bLifter2AxisErr);
	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bLifter2IsHomed);
	tyP1026McSetTeach.tyMotionStdLifter.tyBtnUpLmtSen.bValue		:= p_bLifter2UpSen;
	tyP1026McSetTeach.tyMotionStdLifter.tyBtnDownLmtSen.bValue		:= p_bLifter2DownSen;
	
	//Machine Bitmap
	IF p_bLifter2IsHomed = TRUE THEN
		IF p_diLifter2ActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
			tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 2;
		ELSIF p_diLifter2ActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
			tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 3;
		ELSE
			tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx 	:= 4;
		END_IF
	ELSE
		tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= 2;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 700 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 700;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF p_tyNtParamCurr.bProjMagConvLane2Prep = FALSE THEN
				IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 600 THEN
					tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 600;
				END_IF
			ELSE
				IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 903 THEN
					tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 903;
				END_IF
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 100 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSE
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 300 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 800 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 800;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 500 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 500;
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 200 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 200;
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx < 400 THEN
				tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx	:= tyP1026McSetTeach.tyMotionStdLifter.tyBitmapMc.uiValueIdx + 400;
			END_IF	
		END_IF
	END_IF

	
END_ACTION
