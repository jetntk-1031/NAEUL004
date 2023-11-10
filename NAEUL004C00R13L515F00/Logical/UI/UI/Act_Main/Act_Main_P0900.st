
ACTION Act_Main_P0900:
	
	//Display
	tyP0900GenIn.tyGenIn2.tyLyr.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjMagOrientChkSenPrep;
	
	tyP0900GenIn.tyGenIn1.tyBtnLifterTimingBeltSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterTimingBeltSen = 0;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW1 = 0;
	tyP0900GenIn.tyGenIn1.tyBtnLifterSafetyLmtSW2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diLifterSafetyLmtSW2 = 0;
	tyP0900GenIn.tyGenIn1.tyBtnMag3PresentSen.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0900GenIn.tyGenIn1.tyBtnOvenInfeedSigA.uiRtStat.0		:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyNtParamCurr.bOvenInfoExtdPrep);
	tyP0900GenIn.tyGenIn1.tyBtnOvenInfeedSigB.uiRtStat.0		:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyNtParamCurr.bOvenInfoExtdPrep AND p_tyNtParamCurr.bProjLaneBPrep);
	tyP0900GenIn.tyGenIn1.tyBtnMagWidthChk.uiRtStat.0 			:= p_tyNtParamCurr.tyDISettings.diMagWidthChkSen = 0;
	
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen1 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen1 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen1.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen1 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag1OrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag1OrientChkSen2 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag2OrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag2OrientChkSen2 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag3OrientationChkSen2.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diMag3OrientChkSen2 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag1HeightSen.uiRtStat.0				:= p_tyNtParamCurr.tyDISettings.diHighMagDetSen1 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag2HeightSen.uiRtStat.0				:= p_tyNtParamCurr.tyDISettings.diHighMagDetSen2 = 0;
	tyP0900GenIn.tyGenIn2.tyBtnMag3HeightSen.uiRtStat.0				:= p_tyNtParamCurr.tyDISettings.diHighMagDetSen3 = 0;

	tyP0900GenIn.tyGenIn3.tyLyr.uiRtStat.0						:= NOT p_tyNtParamCurr.bCurtainSenPrep;
	

	
END_ACTION
