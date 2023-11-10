
ACTION Act_Main_P0929:
	
	//Display //Sensor
	tyP0929MagConv2.tyCom.tyBtnTopEntSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConv2EntSen = 0;
	tyP0929MagConv2.tyCom.tyBtnTopMidSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConv2MidSen = 0;
	tyP0929MagConv2.tyCom.tyBtnTopExtSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConv2ExtSen = 0;
	tyP0929MagConv2.tyCom.tyBtnBtmEntSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConv2EntSen = 0;
	tyP0929MagConv2.tyCom.tyBtnBtmMidSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConv2MidSen = 0;
	tyP0929MagConv2.tyCom.tyBtnBtmExtSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConv2ExtSen = 0;
	//Display //Stopper
	tyP0929MagConv2.tyCom.tyBtnTopEntStprExtRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnTopEntStprRetRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnTopMidStprExtRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnTopMidStprRetRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnTopExtStprExtRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnTopExtStprRetRS.uiRtStat.0	:= TRUE;
	
	tyP0929MagConv2.tyCom.tyBtnBtmMidStprExtRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnBtmMidStprRetRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnBtmExtStprExtRS.uiRtStat.0	:= TRUE;
	tyP0929MagConv2.tyCom.tyBtnBtmExtStprRetRS.uiRtStat.0	:= TRUE;

	//Control btn
	tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl2 = 0;
	tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl2 = 0;
	tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl2 = 0;
	tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl2 = 0;

		

END_ACTION
