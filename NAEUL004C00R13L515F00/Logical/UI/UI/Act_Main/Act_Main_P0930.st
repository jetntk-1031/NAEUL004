
ACTION Act_Main_P0930:
	
	//Display
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen1 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1AIVInPosSen2 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0;
	
	//Hide the following when in MagAutoVerify
	tyP0930MagConv1.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag1RemoteClampRS = 0;
	tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:= p_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS = 0 ;
	tyP0930MagConv1.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
	//Show the following in MagAutoVerify
//	tyP0930MagConv1.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0930MagConv1.tyCom.tyBtnMagDetectSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	//Show the MagHigh Sensor
	tyP0930MagConv1.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bProjMagHeightChkPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0930MagConv1.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0930MagConv1.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
		tyP0930MagConv1.tyCom.tyBtnFixedClampRS.usiTxtIdx:= 10;
		tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
	
	ELSE IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
					
		tyP0930MagConv1.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0930MagConv1.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
		tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
		END_IF
	END_IF

	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep = TRUE THEN
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 201;
	ELSE
		tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 233;
	END_IF
		

END_ACTION
