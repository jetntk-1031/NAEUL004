
ACTION Act_OptP0939UpdtDat:
	
	tyP0939Lifter2.tyMotionStd.tyNumCurrPos.diValue			:= p_diLifter2ActualPos;
	tyP0939Lifter2.tyMotionStd.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiLifter2AxisErrID);
	tyP0939Lifter2.tyMotionStd.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bLifter2PwrOn);
	tyP0939Lifter2.tyMotionStd.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bLifter2AxisErr);
	tyP0939Lifter2.tyMotionStd.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bLifter2IsHomed);
	tyP0939Lifter2.tyMotionStd.tyBtnUpLmtSen.bValue			:= p_bLifter2UpSen;
	tyP0939Lifter2.tyMotionStd.tyBtnDownLmtSen.bValue		:= p_bLifter2DownSen;
	
	//Machine Bitmap
	IF p_bLifter2IsHomed = TRUE THEN
		IF p_diLifter2ActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3) THEN
			tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 2;
		ELSIF p_diLifter2ActualPos <= (p_tyNtParamCurr.tyUILifterTargetPos.diMax / 3 * 2) THEN
			tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 3;
		ELSE
			tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx 	:= 4;
		END_IF
	ELSE
		tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= 2;
	END_IF
	
//	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
//		tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 100;
//	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 700 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 700;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF p_tyNtParamCurr.bProjMagConvLane2Prep = FALSE THEN
				IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 600 THEN
					tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 600;
				END_IF
			ELSE
				IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 903 THEN //Lifter 2 - 905,906,907
					tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 903;
				END_IF
			END_IF
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
			END_IF
		ELSE
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 300 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 300;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 800 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 800;
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN 	
			IF tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 500 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 500;
			END_IF	
		ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 200 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 200;
			END_IF
		ELSIF  p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx < 400 THEN
				tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx	:= tyP0939Lifter2.tyMotionStd.tyBitmapMc.uiValueIdx + 400;
			END_IF
		END_IF	
	END_IF
	

	
END_ACTION
