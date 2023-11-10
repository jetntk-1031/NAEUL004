
ACTION Act_OptP0932MagConv3Sen: 
	
	tyP0932MagConv3.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen3;
	tyP0932MagConv3.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen3;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag3AIVInPosSen1;
	tyP0932MagConv3.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag3AIVInPosSen2;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag3OrientChkSen1;
	tyP0932MagConv3.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag3OrientChkSen2;
	
	tyP0932MagConv3.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag3FixedClampRS;
	tyP0932MagConv3.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag3FixedUnclampRS;
	tyP0932MagConv3.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag3RemoteClampRS;
	tyP0932MagConv3.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag3RemoteUnclampRS;
	
	tyP0932MagConv3.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag3SelUnClampRS;
	
	tyP0932MagConv3.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen3;
//	tyP0932MagConv3.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen3;
	tyP0932MagConv3.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen3;
	tyP0932MagConv3.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen3;
	
	tyP0932MagConv3.tyCom.tyBtnMagDetectSen.bValue			:= p_tyDI.bMag3FixedClampSen;
//	tyP0932MagConv3.tyCom.tyBtnMagDetectSen.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0932MagConv3.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bMagConvHeightSen3;	
	ELSE
		tyP0932MagConv3.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bHighMagDetSen3;
	END_IF
	
	//Machine Bitmap
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
	IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl OR  tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl
		OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl  THEN
		
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 2;
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl 
		OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl  THEN
		
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
	ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
		OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
		
		tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 0;
		
	END_IF
ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 24;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 25;
		
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
			OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 19;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 18;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 31;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 30;
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep THEN
		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 48;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 49;
		
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
			OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 61;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 60;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 43;
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 42;
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 3;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep THEN
		IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 234;
			ELSE
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 207;
			END_IF
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0932MagConv3.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 234;
			ELSE
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 206;
			END_IF
			
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 234;
			ELSE
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 219;
			END_IF
				
		ELSIF tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 234;
			ELSE
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 218;
			END_IF
				
			//				ELSIF tyP0930MagConv3.tyFB.tyBtnSelClamp.bRtCompl
			//					OR tyP0930MagConv3.tyDC.tyBtnSelClamp.bRtCompl THEN
			//				
			//					tyP0930MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 41;
			//				
			//				ELSIF tyP0930MagConv3.tyFB.tyBtnSelUnclamp.bRtCompl
			//					OR tyP0930MagConv3.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			//				
			//					tyP0930MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 40;
			//					
		ELSIF tyP0932MagConv3.tyFB.tyBtnEnt.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnExit.bRtCompl OR tyP0932MagConv3.tyFB.tyBtnStop.bRtCompl
			OR tyP0932MagConv3.tyDC.tyBtnMagIn.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnMagOut.bRtCompl OR tyP0932MagConv3.tyDC.tyBtnStop.bRtCompl THEN
				
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 235;
			ELSE
				tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= 205;
			END_IF
				
		END_IF	
	END_IF
	
//	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
//		IF tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
//			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx + 100;
//		END_IF
//	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
//		IF tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
//			tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx	:= tyP0932MagConv3.tyCom.tyBitmapMc.uiValueIdx + 200;
//		END_IF	
//	END_IF
	
END_ACTION
