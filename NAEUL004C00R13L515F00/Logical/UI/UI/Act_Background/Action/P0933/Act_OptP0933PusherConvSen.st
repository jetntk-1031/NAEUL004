
ACTION Act_OptP0933PusherConvSen: 
	
	tyP0933PushConv.tyCom.tyBtnLftSen.bValue	:= p_tyDI.bConvLftSen;
	tyP0933PushConv.tyCom.tyBtnMidSen.bValue	:= p_tyDI.bConvMidSen;
	tyP0933PushConv.tyCom.tyBtnRgtSen.bValue	:= p_tyDI.bConvRgtSen;
	tyP0933PushConv.tyCom.tyBtnClrSen.bValue	:= p_tyDI.bConvClrSen;
	tyP0933PushConv.tyCom.tyBtnExtRS.bValue		:= p_tyDI.bPusherExtRS;
	tyP0933PushConv.tyCom.tyBtnRetRS.bValue		:= p_tyDI.bPusherRetRS;
	
	tyP0933PushConv.tyCom.tyBtnExtSlwSen.bValue	:= p_tyDI.bPusherExtSlwSen;
	tyP0933PushConv.tyCom.tyBtnRetSlwSen.bValue	:= p_tyDI.bPusherRetSlwSen;
	
	tyP0933PushConv.tyCom.tyBtnAlarmSig.bValue	:= p_tyDI.bMtrPshrAlmSig;
	tyP0933PushConv.tyCom.tyBtnTorqueSig.bValue	:= p_tyDI.bMtrPshrTorqueSig;
	
	tyP0933PushConv.tyCom.tyBtnAntiJamSen.bValue := p_tyDI.bPshrAntiJam;
	
	//Machine Bitmap
	IF tyP0933PushConv.tyFB.tyBtnExt.bRtCompl OR tyP0933PushConv.tyDC.tyBtnExt.bRtCompl THEN
		
		tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx	:= 2;
		
	ELSIF tyP0933PushConv.tyFB.tyBtnRet.bRtCompl OR tyP0933PushConv.tyDC.tyBtnRet.bRtCompl THEN
		
		tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx	:= 1;
		
	ELSIF tyP0933PushConv.tyFB.tyBtnCylExit.bRtCompl OR tyP0933PushConv.tyFB.tyBtnEnt.bRtCompl OR tyP0933PushConv.tyFB.tyBtnExit.bRtCompl OR tyP0933PushConv.tyFB.tyBtnStop.bRtCompl
		OR tyP0933PushConv.tyDC.tyBtnStart.bRtCompl OR tyP0933PushConv.tyDC.tyBtnStop.bRtCompl THEN
		
		tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx	:= 0;
		
	END_IF
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = TRUE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = FALSE THEN
		IF 	tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx < 100 THEN
			tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx + 100;
		END_IF
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple AND p_tyNtParamCurr.bMagAutoVerifyPrep = FALSE AND p_tyNtParamCurr.bProjMotorizedPusherPrep = TRUE THEN
			IF 	tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx < 400 THEN
				tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx	:= tyP0933PushConv.tyCom.tyBitmapMc.uiValueIdx + 400;
		END_IF
	END_IF
	
END_ACTION
