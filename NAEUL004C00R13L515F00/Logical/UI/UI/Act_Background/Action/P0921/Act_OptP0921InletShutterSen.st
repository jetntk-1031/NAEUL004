
ACTION Act_OptP0921InletShutterSen: 

	tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnOpenRS.bValue		:= p_tyDI.bInShutterOpenRS;
	tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnCloseRS.bValue	:= p_tyDI.bInShutterCloseRS;
	
	//Machine Bitmap
	IF p_tyDI.bInShutterOpenRS = TRUE THEN
		tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 1;
	ELSE
		tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 800;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 500;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = FALSE THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 100;
			END_IF
	
		ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bProjMagAWPrep THEN
				IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 134 THEN
					tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 134;
				END_IF
				
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = TRUE THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 402 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 402;
			END_IF
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 700;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bUIConvDirRL = FALSE AND p_tyNtParamCurr.bProjMagConvLane1Prep THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 900;	
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			IF 	tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 600;
			END_IF
		ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 200;
		ELSIF p_tyNtParamCurr.bProjMagAWPrep THEN
			tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx	:= tyP0921InletNOutletShutter.tyInletShutterCom.tyBitmapMc.uiValueIdx + 334;
		END_IF	
	END_IF
END_ACTION
