
ACTION Act_Main_P1030:
	
	//P1030 Magazine Settings
	//Display
	tyP1030MagSet.tyMagSet.tyTxtLifMag3Slt1PosLbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP1030MagSet.tyMagSet.tyBtnLifterMag3Slt1Pos.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP1030MagSet.tyMagSet.tyTxtTravPosMag3Lbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP1030MagSet.tyMagSet.tyNumTravPosMag3.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP1030MagSet.tyMagSet.tyBtnTravPosMag3.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValueMin	:= p_tyNtParamCurr.tyUISltToSltDist.diMin;
	tyP1030MagSet.tyMagSet.tyNumSltToSltDist.diValueMax	:= p_tyNtParamCurr.tyUISltToSltDist.diMax;
	
	tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValueMin	:= p_tyNtParamCurr.diProjMagMinSlt;
	tyP1030MagSet.tyMagSet.tyNumMaxSlt.diValueMax	:= p_tyNtParamCurr.diProjMagMaxSlt;
	
	tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	
	tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValueMin	:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumTravPosMag1.diValueMax	:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValueMin	:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumTravPosMag2.diValueMax	:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValueMin	:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	tyP1030MagSet.tyMagSet.tyNumTravPosMag3.diValueMax	:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	
	FOR i := 1 TO c_uiP1030TableSize DO 
		tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol0[i].sValue	:= UINT_TO_STRING(i);
		tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[i].sValue	:= p_tyMagRcpCurrList[i].sRcpNm;
		tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol2[i].sValue	:= p_tyMagRcpCurrList[i].sDisplayInfo;
	END_FOR
		
	tyP1030MagSet.tyMagSet.tyDrpDnMagModel.usiValueMaxIdx	:= 2;
	
	tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
		
	tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.uiRtStat.0 := NOT(p_tyNtParamCurr.bProjMagSafetyBarPrep);
	
	tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.uiRtStat.0	 := NOT(p_tyNtParamCurr.bProjMagHeightChkPrep);
	
	tyP1030MagSet.tyMagSet.tyBitmapBrder.uiRtStat.0 		 := NOT(p_tyNtParamCurr.bProjMagSafetyBarPrep OR p_tyNtParamCurr.bProjMagHeightChkPrep);
	
END_ACTION
