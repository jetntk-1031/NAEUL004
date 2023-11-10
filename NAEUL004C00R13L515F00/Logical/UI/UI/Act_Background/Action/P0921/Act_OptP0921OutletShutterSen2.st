
ACTION Act_OptP0921OutletShutterSen2: 

	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnOpenRS.bValue	:= p_tyDI.bOutShutterOpenRS2;
	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnCloseRS.bValue	:= p_tyDI.bOutShutterCloseRS2;
	
	//Machine Bitmap
	IF p_tyDI.bOutShutterOpenRS2 = TRUE THEN
		tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= 1;
	ELSE
		tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 801;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 501;
				END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = FALSE THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 AND  p_tyNtParamCurr.bCurtainSenPrep THEN
					tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 151;
			ELSE
					tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 101;
			END_IF
		ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjMagAWPrep THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 134 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 135;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = TRUE THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 402 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 403;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 701;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 901;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				IF 	tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx < 100 THEN
					tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 601;
				END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 4;
		ELSIF p_tyNtParamCurr.bProjMagAWPrep THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBitmapMc.uiValueIdx + 335;	
		END_IF
	END_IF
	
	
END_ACTION
