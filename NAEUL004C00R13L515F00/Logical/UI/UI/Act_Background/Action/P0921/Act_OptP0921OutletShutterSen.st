
ACTION Act_OptP0921OutletShutterSen: 

	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnOpenRS.bValue	:= p_tyDI.bOutShutterOpenRS;
	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnCloseRS.bValue	:= p_tyDI.bOutShutterCloseRS;
	
	//Machine Bitmap
	IF p_tyDI.bOutShutterOpenRS = TRUE THEN
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 1;
	ELSE
		tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 800;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 500;
				END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = FALSE THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 AND p_tyNtParamCurr.bCurtainSenPrep THEN
		
					tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 147;
			ELSE
					tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 100;
			END_IF
		ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjMagAWPrep THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 134 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 134;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = TRUE THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 402 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 402;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 700;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 900;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
				IF 	tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
					tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 600;
				END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 3;
		ELSIF p_tyNtParamCurr.bProjMagAWPrep THEN
			tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyOutletShutterCom.tyBitmapMc.uiValueIdx + 334;	
		END_IF
	END_IF
	
	
END_ACTION
