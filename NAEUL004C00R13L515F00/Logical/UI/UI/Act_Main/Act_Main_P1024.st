
ACTION Act_Main_P1024:
		
	//Machine Setting - Anti Gap Sensor Filter
	tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOnTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOnTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOffTm.diMax;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.diValueMin	:= p_tyNtParamCurr.tyUIAntiGapSenOnTm.diMin;
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.diValueMax	:= p_tyNtParamCurr.tyUIAntiGapSenOnTm.diMax;
	
	
	//Parameter
	tyP1024McSetAntiGap.tyAntiGap.tyNumLftSenOff.diValue	:= p_tyMcParamCurr.tyLftSenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMidSenOff.diValue	:= p_tyMcParamCurr.tyMidSenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumRgtSenOff.diValue	:= p_tyMcParamCurr.tyRgtSenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumClrSenOff.diValue	:= p_tyMcParamCurr.tyClrSenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.diValue	:= p_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.diValue		:= p_tyMcParamCurr.tyMagConvEntrySenAntiGapDly.diSigOnTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.diValue	:= p_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOffTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.diValue		:= p_tyMcParamCurr.tyMagConvPresentSenAntiGapDly.diSigOnTm;
	
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOff.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad= FALSE);
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvEntOn.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad= FALSE);
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOff.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad= FALSE);
	tyP1024McSetAntiGap.tyAntiGap.tyNumMagConvPresentOn.uiRtStat.0 := NOT (p_tyNtParamCurr.bProjMag1ConvPrep AND p_tyNtParamCurr.bProjMag2ConvPrep AND p_tyNtParamCurr.bProjMag3ConvPrep AND p_tyNtParamCurr.bProjLifTravMnlLoad= FALSE);
	
END_ACTION
