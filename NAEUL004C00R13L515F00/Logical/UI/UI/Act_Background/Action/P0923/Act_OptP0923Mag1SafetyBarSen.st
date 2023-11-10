
ACTION Act_OptP0923Mag1SafetyBarSen: 

	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnExtRS.bValue	:= p_tyDI.bMag1SafetyBarExtRS;
	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnRetRS.bValue	:= p_tyDI.bMag1SafetyBarRetRS;
	
	//Machine Bitmap
	IF p_tyDI.bMag1SafetyBarRetRS = TRUE THEN
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= 1;
	ELSE
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= 0;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		IF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
		IF 	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
		IF 	tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx < 400 THEN
		tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx	:= tyP0923SafetyBar.tyMag1SafetyBarCom.tyBitmapMc.uiValueIdx + 400;
		END_IF
		END_IF 
		END_IF
END_ACTION
