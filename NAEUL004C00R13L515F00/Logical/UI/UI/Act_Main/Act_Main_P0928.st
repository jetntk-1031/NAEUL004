
ACTION Act_Main_P0928:
	
	//Display //Sensor
	tyP0928MagConv.tyCom.tyBtnTopEntSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConvEntSen = 0;
	tyP0928MagConv.tyCom.tyBtnTopMidSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConvMidSen = 0;
	tyP0928MagConv.tyCom.tyBtnTopExtSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diInMagConvExtSen = 0;
	tyP0928MagConv.tyCom.tyBtnBtmEntSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConvEntSen = 0;
	tyP0928MagConv.tyCom.tyBtnBtmMidSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConvMidSen = 0;
	tyP0928MagConv.tyCom.tyBtnBtmExtSen.uiRtStat.0	:= p_tyNtParamCurr.tyDISettings.diOutMagConvExtSen = 0;
	//Display //Stopper
	tyP0928MagConv.tyCom.tyBtnTopEntStprExtRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnTopEntStprRetRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnTopMidStprExtRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnTopMidStprRetRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnTopExtStprExtRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnTopExtStprRetRS.uiRtStat.0	:= TRUE;
	
	tyP0928MagConv.tyCom.tyBtnBtmMidStprExtRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnBtmMidStprRetRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnBtmExtStprExtRS.uiRtStat.0	:= TRUE;
	tyP0928MagConv.tyCom.tyBtnBtmExtStprRetRS.uiRtStat.0	:= TRUE;


	//control btn
	tyP0928MagConv.tyTopFB.tyBtnEntStprExt.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl = 0;
	tyP0928MagConv.tyTopDC.tyBtnEntStprExt.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl = 0;
	tyP0928MagConv.tyTopFB.tyBtnEntStprRet.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl = 0;
	tyP0928MagConv.tyTopDC.tyBtnEntStprRet.uiRtStat := p_tyNtParamCurr.tyDOSettings.diEntTopStprUnblkCtrl = 0;


END_ACTION
