
ACTION Act_Main_P0931:
	
	//Display
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen1.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen1 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen2.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2AIVInPosSen2 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1 = 0;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 = 0;
	
	//Hide the following when in MagAutoVerify
	tyP0931MagConv2.tyCom.tyBtnRemoteClampRS.uiRtStat.0			:= p_tyNtParamCurr.tyDISettings.diMag2RemoteClampRS = 0;
	tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.uiRtStat.0		:=  p_tyNtParamCurr.tyDISettings.diMag1RemoteUnclampRS = 0 ;
	tyP0931MagConv2.tyCom.tyBtnFixedClampRS.uiRtStat.0			:= p_tyNtParamCurr.bMagAutoVerifyPrep;
	
//	tyP0931MagConv2.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnCAB717Sen.uiRtStat.0				:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnMagLargeSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnMagSmallSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnSelClampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnSelUnclampRS.uiRtStat.0			:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.uiRtStat.0		:= NOT p_tyNtParamCurr.bMagAutoVerifyPrep;
	tyP0931MagConv2.tyCom.tyBtnMagDetectSen.uiRtStat.0			:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	

	tyP0931MagConv2.tyCom.tyBtnHeightSen.uiRtStat.0				:= NOT p_tyNtParamCurr.bProjMagHeightChkPrep;


	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		tyP0931MagConv2.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0931MagConv2.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0931MagConv2.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
		tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
		tyP0931MagConv2.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
		tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
		tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
		tyP0931MagConv2.tyCom.tyBtnFixedClampRS.usiTxtIdx:= 10;
		tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
	
	ELSE IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
					
			tyP0931MagConv2.tyDC.tyBtnFixedClamp.usiTxtIdx:= 6; 
			tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.usiTxtIdx:= 6;
			tyP0931MagConv2.tyDC.tyBtnRemoteClamp.usiTxtIdx:= 6; 
			tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
			tyP0931MagConv2.tyFB.tyBtnFixedClamp.usiTxtIdx:= 6; 
			tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.usiTxtIdx:= 6;
			tyP0931MagConv2.tyFB.tyBtnRemoteClamp.usiTxtIdx:= 6; 
			tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.usiTxtIdx:= 6;
			
			tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.usiTxtIdx:= 5;
			tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.usiTxtIdx:= 4; 
		END_IF
	END_IF
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 0;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 3;
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMagSafetyBarPrep THEN
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 203;	
	ELSE
		tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 234;
	END_IF
	
END_ACTION
