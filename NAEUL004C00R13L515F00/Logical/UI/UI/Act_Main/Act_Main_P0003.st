
ACTION Act_Main_P0003:
	
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjLaneBPrep);
	tyP0003MMenu.tyMMenuBtn.tyBtnBuz.uiRtStat.0 := NOT(p_tyNtParamCurr.tyDOSettings.diBuzzer > 0);
END_ACTION
