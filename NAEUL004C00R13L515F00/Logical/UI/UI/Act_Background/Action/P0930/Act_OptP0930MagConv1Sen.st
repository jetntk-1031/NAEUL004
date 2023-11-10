
ACTION Act_OptP0930MagConv1Sen: 
	// connect sensors to inputs
	tyP0930MagConv1.tyCom.tyBtnMagPresentSen.bValue			:= p_tyDI.bMagPresentSen1;
	tyP0930MagConv1.tyCom.tyBtnMagConvEntSen.bValue			:= p_tyDI.bMagConvEntSen1;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen1.bValue			:= p_tyDI.bMag1AIVInPosSen1;
	tyP0930MagConv1.tyCom.tyBtnMagAIVPosSen2.bValue			:= p_tyDI.bMag1AIVInPosSen2;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen1.bValue	:= p_tyDI.bMag1OrientChkSen1;
	tyP0930MagConv1.tyCom.tyBtnMagOrientationChkSen2.bValue	:= p_tyDI.bMag1OrientChkSen2;
	
	tyP0930MagConv1.tyCom.tyBtnFixedClampRS.bValue			:= p_tyDI.bMag1FixedClampRS;
	tyP0930MagConv1.tyCom.tyBtnFixedUnclampRS.bValue		:= p_tyDI.bMag1FixedUnclampRS;
	tyP0930MagConv1.tyCom.tyBtnRemoteClampRS.bValue			:= p_tyDI.bMag1RemoteClampRS;
	tyP0930MagConv1.tyCom.tyBtnRemoteUnclampRS.bValue		:= p_tyDI.bMag1RemoteUnclampRS;

	tyP0930MagConv1.tyCom.tyBtnSelUnclampRS.bValue			:= p_tyDI.bMag1SelUnClampRS;
	
	tyP0930MagConv1.tyCom.tyBtnCAB717Sen.bValue				:= p_tyDI.bMagConvCAB717MagSen1;
	tyP0930MagConv1.tyCom.tyBtnMagSmallSen.bValue			:= p_tyDI.bMagConvSmallMagSen1;
	tyP0930MagConv1.tyCom.tyBtnMagLargeSen.bValue			:= p_tyDI.bMagConvLargeMagSen1;
	
	tyP0930MagConv1.tyCom.tyBtnMagDetectSen.bValue			:= p_tyDI.bMag1FixedClampSen;
//	tyP0930MagConv1.tyCom.tyBtnMagDetectSen.uiRtStat.0		:= NOT p_tyNtParamCurr.bProjFixClprMagDetectSenPrep;
	
	//MagHeightCheckSensor
	IF p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
		tyP0930MagConv1.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bMagConvHeightSen1;
	ELSE
		tyP0930MagConv1.tyCom.tyBtnHeightSen.bValue			:= p_tyDI.bHighMagDetSen1;
	END_IF;
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 107;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 106;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 112;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 111;
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 105;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep = FALSE THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 22;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
			OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 23;
		
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
			 OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 17;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 16;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 29;
			
		ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 28;
				
		ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
			OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
			
			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 0;
			
		END_IF
		
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND  p_tyNtParamCurr.bMagAutoVerifyPrep AND p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
		IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 46;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
				OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 47;
			
			ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 59;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 58;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 41;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 40;
					
			ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 3;
				
			END_IF
			
		ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep =FALSE  AND p_tyNtParamCurr.bProjMagAWPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep THEN
			IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
					OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
					
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 232;
					ELSE
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 203;
				    END_IF
				
				ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
					OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 232;
					ELSE
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 202;
					END_IF
			
				ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
					OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 232;
					ELSE
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 217;
					END_IF
				
				ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
					OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 232;
					ELSE
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 216;
					END_IF
				
//				ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
//					OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
//				
//					tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 41;
//				
//				ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
//					OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
//				
//					tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 40;
//					
				ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
					OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
				
					IF p_tyNtParamCurr.bCurtainSenPrep THEN
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 233;
					ELSE
						tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 203;
					END_IF
				
				END_IF
			
		ELSIF p_tyNtParamCurr.eProjMag = ULMagDual AND p_tyNtParamCurr.bMagAutoVerifyPrep THEN
			IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 146;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl 
				OR tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 147;
			
			ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 159;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 158;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 141;
				
			ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 140;
					
			ELSIF tyP0930MagConv1.tyFB.tyBtnEnt.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnExit.bRtCompl OR tyP0930MagConv1.tyFB.tyBtnStop.bRtCompl
				OR tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl OR tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl THEN
				
				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= 103;
				
			END_IF
		END_IF			

//	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE THEN
//		IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
//			tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 100;
//		END_IF
//	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE THEN
//			IF tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx < 200 THEN
//				tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx	:= tyP0930MagConv1.tyCom.tyBitmapMc.uiValueIdx + 200;
//			END_IF	
//	END_IF
	

END_ACTION
