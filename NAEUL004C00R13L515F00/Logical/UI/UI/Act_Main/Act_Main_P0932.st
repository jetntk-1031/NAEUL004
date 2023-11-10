
ACTION Act_Main_P0932:
	
	//Display
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen1 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag3AIVInPosSen2 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 = 0;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 = 0;
	
	//Hide the following when in MagAutoVerify
	tyP0932MagConv3.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS = 0;
	tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:=  p_tyNtParamCurr.tyDISettings.diMag3RemoteUnclampRS = 0 ;
	tyP0932MagConv3.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
//	tyP0932MagConv3.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0932MagConv3.tyCom.tyBtnMagDetectSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;

	tyP0932MagConv3.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bProjMagHeightChkPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0932MagConv3.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0932MagConv3.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0932MagConv3.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0932MagConv3.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
		tyP0932MagConv3.tyCom.tyBtnFixedClampRS.usiTxtIdx:= 10;
		tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
	
	ELSE IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
					
			tyP0932MagConv3.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
			tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
			tyP0932MagConv3.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
			tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
			tyP0932MagConv3.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
			tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
			tyP0932MagConv3.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
			tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
			tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
			tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
		END_IF
	END_IF

	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep THEN
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 205;
	ELSE
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 235;
	END_IF
	
END_ACTION
