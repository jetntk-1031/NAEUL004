
ACTION Act_Main_P0850:
	
	//Display
	tyP0850OvenInfo.tyCom.tyBtnOvenB.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	
	IF p_tyNtParamCurr.bMagAutoVerifyPrep=FALSE THEN
		tyP0850OvenInfo.tyCom.tyBitmapMc.uiValueIdx := 0;
	ELSE		
		tyP0850OvenInfo.tyCom.tyBitmapMc.uiValueIdx := 20;
	END_IF
	
	
END_ACTION
