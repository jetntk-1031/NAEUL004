
ACTION Act_Main_P0910:
	
	//Display
	tyP0910GenOut.tyGenOut.tyBtnBuzzer.uiRtStat.0	:= p_tyNtParamCurr.tyDOSettings.diBuzzer = 0;
	
	tyP0910GenOut.tyOven.tyLyr.uiRtStat.0	:= NOT p_tyNtParamCurr.bOvenInfoPrep;
	
	tyP0910GenOut.tyGenOutCurtainSen.tyLyr.uiRtStat.0	:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	
	tyP0910GenOut.tyOven.tyBtnOvenInfoB.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	
	tyP0910GenOut.tyMagAW.tyLyr12.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagAWPrep;
	
	tyP0910GenOut.tyMagAW.tyLyr3.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0910GenOut.tyMagAW.tyLyr4.uiRtStat.0	:= NOT (p_tyNtParamCurr.bProjMagAWPrep AND p_tyNtParamCurr.eProjMag = ULMagQuadruple);
	
	tyP0910GenOut.tyGenOut.tyBtnTLGreen.uiRtStat.0 :=  p_tyNtParamCurr.tyDOSettings.diTLGreen = 0;
	
	tyP0910GenOut.tyGenOut.tyBtnTLRed.uiRtStat.0 :=  p_tyNtParamCurr.tyDOSettings.diTLRed = 0;
	
	tyP0910GenOut.tyGenOut.tyBtnTLAmber.uiRtStat.0 :=  p_tyNtParamCurr.tyDOSettings.diTLAmber = 0;
	
	IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx := tyP0910GenOut.tyGenOut.tyBtnTLAmber.usiTxtIdx + 2 ;//White
	END_IF

END_ACTION
