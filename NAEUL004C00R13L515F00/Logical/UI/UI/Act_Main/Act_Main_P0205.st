(** 2021-05-14 **)
ACTION Act_Main_P0205:
	
	//Machine Bitmap
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyTripleMagLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0205OpsAIV.tyIOMonitor.tyDualMagLyr.uiRtStat));
	ELSIF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		fUIInRtStatHide(ADR(tyP0205OpsAIV.tyIOMonitor.tyDualMagLyr.uiRtStat));
		fUIInRtStatOff(ADR(tyP0205OpsAIV.tyIOMonitor.tyTripleMagLyr.uiRtStat));		
	END_IF
	
		
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk1.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk2.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk3.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	tyP0205OpsAIV.tyIOMonitor.tyBtnAIVSotRCVOk4.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjSOTSensorPrep);
	
	tyP0205OpsAIV.tyIOMonitor.tyStringMesName.uiRtStat.0 := NOT(p_tyNtParamCurr.bShowMESName);
	IF p_tyNtParamCurr.bShowFMorMESActive THEN
		tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.usiTxtIdx := 6;
	ELSE
		tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.usiTxtIdx := 0;
	END_IF
	
	IF p_tyMcParamCurr.eAGVComProtocol =  McSetAGVTCPEnableTCP THEN
		tyP0205OpsAIV.tyIOMonitor.tyBtnMESActive.uiRtStat 		:= TRUE;
		tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.uiRtStat 	:= TRUE;
		tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.uiRtStat 	:= TRUE;
		tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.uiRtStat 	:= TRUE;
		tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.uiRtStat 	:= TRUE;

		tyP0205OpsAIV.tyIOMonitor.tyHotspotGroupError1.uiRtStat := TRUE;
		tyP0205OpsAIV.tyIOMonitor.tyHotspotGroupError2.uiRtStat := TRUE;
	END_IF
	

	//Siemens 3LD
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring1.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet1.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring2.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet2.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToBring3.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
	tyP0205OpsAIV.tyIOMonitor.tyBtnReqAIVToGet3.uiRtStat.0 := TRUE ; //p_tyNtParamCurr.eCustomerReq = Siemens;
END_ACTION
