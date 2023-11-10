
ACTION Act_Main_P0800:
	
	//Display
	tyP0800MagInfo.tyMagInfo2.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.uiRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;

	tyP0800MagInfo.tyMagInfo1.tyBtnMag1SetFull.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo1.tyBtnMag2SetFull.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0800MagInfo.tyMagInfo2.tyBtnMag3SetFull.uiMaskRtStat.0 := p_tyNtParamCurr.bProjLifterMagPlatform;
	
END_ACTION
