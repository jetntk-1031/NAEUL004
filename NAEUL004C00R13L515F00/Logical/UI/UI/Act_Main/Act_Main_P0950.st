
ACTION Act_Main_P0950:
	
	//Display
//	tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyMcParamCurr.bAGVComEn);
//	tyP0950Simu.tySimu.tyLyr.uiRtStat.0 := TRUE;
	tyP0950Simu.tySimu.tyLyr1.uiRtStat.0 := FALSE ;//NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyMcParamCurr.bAGVComEn);
	tyP0950Simu.tySimu.tyLyr2.uiRtStat.0 := FALSE ;//NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyMcParamCurr.bAGVComEn AND p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0950Simu.tyAGVToMc.tyLyr.uiRtStat.0 := TRUE ;//NOT(p_tyNtParamCurr.bProjAGVPrep AND p_tyMcParamCurr.bAGVComEn);
	
	IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
		tyP0950Simu.tyAGVToMc.tyBtnAGV3Occupied.uiRtStat		:= TRUE;
		tyP0950Simu.tyAGVToMc.tyBtnAGVInPos3.uiRtStat   		:= TRUE;
		tyP0950Simu.tyMcToAGV.tyBtnMag3Auto.uiRtStat			:= TRUE;
		tyP0950Simu.tyMcToAGV.tyBtnMag3Empty.uiRtStat   		:= TRUE;
		tyP0950Simu.tyMcToAGV.tyBtnMag3IncorrectModel.uiRtStat 	:= TRUE;
		tyP0950Simu.tyMcToAGV.tyBtnMag3Occupied.uiRtStat 		:= TRUE;
		tyP0950Simu.tyMcToAGV.tyBtnMag3Rdy.uiRtStat				:= TRUE;
	END_IF
	
	
END_ACTION
