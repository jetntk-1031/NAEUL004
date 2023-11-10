
ACTION Act_OptP0938UpdtDat:
	
	(*Magazine Auto Width 1*)
	tyP0938MagAW.tyMotionStd1.tyNumCurrPos.diValue			:= p_diMagAWOpen1ActualPos;
	tyP0938MagAW.tyMotionStd1.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiMagAWOpen1AxisErrID);
	tyP0938MagAW.tyMotionStd1.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bMagAWOpen1PwrOn);
	tyP0938MagAW.tyMotionStd1.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bMagAWOpen1AxisErr);
	tyP0938MagAW.tyMotionStd1.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bMagAWOpen1IsHomed);
	tyP0938MagAW.tyMotionStd1.tyBtnOpenLmtSen.bValue		:= p_bMagAWOpen1OpenSen;
	tyP0938MagAW.tyMotionStd1.tyBtnCloseLmtSen.bValue		:= p_bMagAWOpen1CloseSen;
	
	tyP0938MagAW.tyMagAW1.tyBtnEngageRS.bValue		:= p_tyDI.bMag1WallEngageRS;
	tyP0938MagAW.tyMagAW1.tyBtnDisengageRS.bValue	:= p_tyDI.bMag1WallDisengageRS;
	
	//Machine Bitmap
	IF p_bMagAWOpen1IsHomed = TRUE THEN
		IF (p_diMagAWOpen1ActualPos + p_tyMcParamCurr.diMag1WidthAtHmPosInUM) <= (p_tyNtParamCurr.tyProdRcpWidth.diMax / 2) THEN
			tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx 	:= 283;
		ELSE
			tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx 	:= 281;
		END_IF
	ELSE
		tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx	:= 283;
	END_IF
	
	IF p_tyDI.bMag1WallEngageRS = TRUE THEN
		tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx	:= tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx + 1;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx	:= tyP0938MagAW.tyMotionStd1.tyBitmapMc.uiValueIdx + 100;
	END_IF	
	
	(*Magazine Auto Width 2*)
	tyP0938MagAW.tyMotionStd2.tyNumCurrPos.diValue			:= p_diMagAWOpen2ActualPos;
	tyP0938MagAW.tyMotionStd2.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiMagAWOpen2AxisErrID);
	tyP0938MagAW.tyMotionStd2.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bMagAWOpen2PwrOn);
	tyP0938MagAW.tyMotionStd2.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bMagAWOpen2AxisErr);
	tyP0938MagAW.tyMotionStd2.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bMagAWOpen2IsHomed);
	tyP0938MagAW.tyMotionStd2.tyBtnOpenLmtSen.bValue		:= p_bMagAWOpen2OpenSen;
	tyP0938MagAW.tyMotionStd2.tyBtnCloseLmtSen.bValue		:= p_bMagAWOpen2CloseSen;
	
	tyP0938MagAW.tyMagAW2.tyBtnEngageRS.bValue		:= p_tyDI.bMag2WallEngageRS;
	tyP0938MagAW.tyMagAW2.tyBtnDisengageRS.bValue	:= p_tyDI.bMag2WallDisengageRS;
	
	//Machine Bitmap
	IF p_bMagAWOpen2IsHomed = TRUE THEN
		IF (p_diMagAWOpen2ActualPos + p_tyMcParamCurr.diMag2WidthAtHmPosInUM) <= (p_tyNtParamCurr.tyProdRcpWidth.diMax / 2) THEN
			tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx 	:= 287;
		ELSE
			tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx 	:= 285;
		END_IF
	ELSE
		tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx	:= 287;
	END_IF
	
	IF p_tyDI.bMag2WallEngageRS = TRUE THEN
		tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx	:= tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx + 1;
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx	:= tyP0938MagAW.tyMotionStd2.tyBitmapMc.uiValueIdx + 100;
	END_IF
	
	(*Magazine Auto Width 3*)
	tyP0938MagAW.tyMotionStd3.tyNumCurrPos.diValue			:= p_diMagAWOpen3ActualPos;
	tyP0938MagAW.tyMotionStd3.tyNumErrCode.diValue			:= UDINT_TO_DINT(p_udiMagAWOpen3AxisErrID);
	tyP0938MagAW.tyMotionStd3.tyBitmapPwr.usiValueIdx		:= BOOL_TO_USINT(p_bMagAWOpen3PwrOn);
	tyP0938MagAW.tyMotionStd3.tyBitmapRst.usiValueIdx		:= BOOL_TO_USINT(NOT p_bMagAWOpen3AxisErr);
	tyP0938MagAW.tyMotionStd3.tyBitmapOrigin.usiValueIdx	:= BOOL_TO_USINT(p_bMagAWOpen3IsHomed);
	tyP0938MagAW.tyMotionStd3.tyBtnOpenLmtSen.bValue		:= p_bMagAWOpen3OpenSen;
	tyP0938MagAW.tyMotionStd3.tyBtnCloseLmtSen.bValue		:= p_bMagAWOpen3CloseSen;
	
	tyP0938MagAW.tyMagAW3.tyBtnEngageRS.bValue		:= p_tyDI.bMag3WallEngageRS;
	tyP0938MagAW.tyMagAW3.tyBtnDisengageRS.bValue	:= p_tyDI.bMag3WallDisengageRS;
	
	//Machine Bitmap
	IF p_bMagAWOpen3IsHomed = TRUE THEN
		IF (p_diMagAWOpen3ActualPos + p_tyMcParamCurr.diMag3WidthAtHmPosInUM) <= (p_tyNtParamCurr.tyProdRcpWidth.diMax / 2) THEN
			tyP0938MagAW.tyMotionStd3.tyBitmapMc.uiValueIdx 	:= 291; 
		ELSE
			tyP0938MagAW.tyMotionStd3.tyBitmapMc.uiValueIdx 	:= 289; 
		END_IF
	ELSE
		tyP0938MagAW.tyMotionStd3.tyBitmapMc.uiValueIdx	:= 291; 
	END_IF
	
	IF p_tyDI.bMag3WallEngageRS = TRUE THEN
		tyP0938MagAW.tyMotionStd3.tyBitmapMc.uiValueIdx	:= tyP0938MagAW.tyMotionStd3.tyBitmapMc.uiValueIdx + 1;
	END_IF
	
	
END_ACTION
