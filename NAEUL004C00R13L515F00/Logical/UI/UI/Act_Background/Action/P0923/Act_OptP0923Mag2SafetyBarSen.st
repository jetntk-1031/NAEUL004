
ACTION Act_OptP0923Mag2SafetyBarSen: 

	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnExtRS.bValue	:= p_tyDI.bMag2SafetyBarExtRS;
	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnRetRS.bValue	:= p_tyDI.bMag2SafetyBarRetRS;
	
	//Machine Bitmap
	IF p_tyDI.bMag2SafetyBarRetRS = TRUE THEN
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx	:= 3;
	ELSE
		tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx	:= 2;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN 
		IF 	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx < 100 THEN
				tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.usiValueIdx	:= tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.usiValueIdx + 100;
				END_IF
	ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
		IF 	tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx < 400 THEN
			tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag2SafetyBarCom.tyBitmapMc.uiValueIdx + 400;
		END_IF
			END_IF 
			END_IF
END_ACTION
