
ACTION Act_OptP0931MagConv2Sen: 
	
	tyP0931MagConv2.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen2;
	tyP0931MagConv2.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen2;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag2AIVInPosSen1;
	tyP0931MagConv2.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag2AIVInPosSen2;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag2OrientChkSen1;
	tyP0931MagConv2.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag2OrientChkSen2;
	
	tyP0931MagConv2.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag2FixedClampRS;
	tyP0931MagConv2.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag2FixedUnclampRS;
	tyP0931MagConv2.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag2RemoteClampRS;
	tyP0931MagConv2.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag2RemoteUnclampRS;

	tyP0931MagConv2.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag2SelUnClampRS;
	
	tyP0931MagConv2.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen2;
//	tyP0931MagConv2.tyCom.tyBtnHeightSen.bValue				:= p_tyDI.bMagConvHeightSen2;
	tyP0931MagConv2.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen2;
	tyP0931MagConv2.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen2;
	
	tyP0931MagConv2.tyCom.tyBtnMagDetectSen.bValue			:= p_tyDI.bMag2FixedClampSen;
//	tyP0931MagConv2.tyCom.tyBtnMagDetectSen.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0931MagConv2.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bMagConvHeightSen2;
	ELSE
		tyP0931MagConv2.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bHighMagDetSen2;
	END_IF

	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 109;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 108;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 113;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 112;
			
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 107;
			
		END_IF
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
			OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 23;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 24;
		
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
			OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 18;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 17;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 29;
			
		ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 30;
				
		ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
			OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
	
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
			IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
				OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 47;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
				OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 48;
			
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
				OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 60;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 59;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 42;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 41;
					
			ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 3;
				
			END_IF
			
		ELSIF  p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep THEN
			IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 233;
					ELSE
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 205;
					END_IF
			ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
				OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 233;
					ELSE
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 204;
					END_IF
			
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 233;
					ELSE
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 218;
					END_IF
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 233;
					ELSE
						tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 217;
					END_IF
				
				//				ELSIF tyP0930MagConv2.tyFB.tyBtnSelClamp.bRtCompl
				//					OR tyP0930MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
				//				
				//					tyP0930MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 41;
				//				
				//				ELSIF tyP0930MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
				//					OR tyP0930MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
				//				
				//					tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 40;
				//					
			ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
				
				IF p_tyNtParamCurr.bCurtainSenPrep THEN
					tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 234;
				ELSE
					tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 203;
				END_IF
				
			END_IF			
		ELSIF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bRtCompl (*Bottom*)
				OR tyP0931MagConv2.tyDC.tyBtnFixedClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 147;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bRtCompl 
				OR tyP0931MagConv2.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 148;
			
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bRtCompl (*Top*)
				OR tyP0931MagConv2.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 160;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 159;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnSelClamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnSelClamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 142;
				
			ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnSelUnclamp.bRtCompl THEN
				
				tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 141;
					
			ELSIF tyP0931MagConv2.tyFB.tyBtnEnt.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnExit.bRtCompl OR tyP0931MagConv2.tyFB.tyBtnStop.bRtCompl
				OR tyP0931MagConv2.tyDC.tyBtnMagIn.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnMagOut.bRtCompl OR tyP0931MagConv2.tyDC.tyBtnStop.bRtCompl THEN
				
					tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= 103;
					
				END_IF
		END_IF

	
	
//	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
//		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
//			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 100;
//		END_IF
//	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
//		IF tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
//			tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx	:= tyP0931MagConv2.tyCom.tyBitmapMc.uiValueIdx + 200;
//		END_IF
//	END_IF
	
END_ACTION
