
ACTION Act_Main_P0003:
	

	//Lane A
	tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.uiRtStat.0 :=  (p_tyNtParamCurr.bUIConvDirRL);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.uiRtStat.0 :=  (p_tyNtParamCurr.bUIConvDirRL);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm.uiRtStat.0 :=  (p_tyNtParamCurr.bUIConvDirRL);
	
	tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.uiRtStat.0 :=  NOT(p_tyNtParamCurr.bUIConvDirRL);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.uiRtStat.0 :=  NOT(p_tyNtParamCurr.bUIConvDirRL);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm1.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL);
	
	
	// Lane B
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.uiRtStat.0 := (p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.uiRtStat.0 := (p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiRtStat.0 := (p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL) OR NOT(p_tyNtParamCurr.bProjLaneBPrep);
	
	
	tyP0003MMenu.tyMMenuBtn.tyBtnBuz.uiRtStat.0 := NOT(p_tyNtParamCurr.tyDOSettings.diBuzzer > 0);
END_ACTION
