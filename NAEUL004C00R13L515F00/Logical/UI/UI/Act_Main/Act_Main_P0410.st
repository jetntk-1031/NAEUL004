
ACTION Act_Main_P0410:
	
	//Display
	tyP0410MagSel.tyMagSel.tyTxtLifMag3Slt1PosLbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0410MagSel.tyMagDet.tyTxtLifMag3Slt1PosLbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0410MagSel.tyMagDet.tyNumLifterMag3Slt1Pos.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0410MagSel.tyMagSel.tyTxtTravPosMag3Lbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0410MagSel.tyMagSel.tyNumTravPosMag3.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0410MagSel.tyMagDet.tyTxtTravPosMag3Lbl.uiRtStat.0	:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	tyP0410MagSel.tyMagDet.tyNumTravPosMag3.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	//Magazine Selection	
	tyP0410MagSel.tyMagSel.tyStringRecipeNm.sValue			:= p_tyMagRcpCurrRcp.sRcpNm;
	tyP0410MagSel.tyMagSel.tyNumMaxSlt.diValue				:= p_tyMagRcpCurrRcp.diTtlSlt;
	tyP0410MagSel.tyMagSel.tyNumSltToSltDist.diValue		:= p_tyMagRcpCurrRcp.diSltToSltInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag1Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag1Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag2Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag2Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumLifterMag3Slt1Pos.diValue	:= p_tyMagRcpCurrRcp.diMag3Slt1PosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag1.diValue			:= p_tyMagRcpCurrRcp.diMag1TravPosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag2.diValue			:= p_tyMagRcpCurrRcp.diMag2TravPosInUM;
	tyP0410MagSel.tyMagSel.tyNumTravPosMag3.diValue			:= p_tyMagRcpCurrRcp.diMag3TravPosInUM;
	tyP0410MagSel.tyMagSel.tyTxtMagModel.usiValueIdx		:= p_tyMagRcpCurrRcp.usiMagModel;
	tyP0410MagSel.tyMagSel.tyNumMagMaxBrdWidth.diValue		:= p_tyMagRcpCurrRcp.diMagMaxBrdWidth;
	tyP0410MagSel.tyMagSel.tyBtnMagHeightChkEn.bValue		:= p_tyMagRcpCurrRcp.bMagHeightChkEn;
	tyP0410MagSel.tyMagSel.tyBtnSafetyBar.bValue			:= p_tyMagRcpCurrRcp.bSafetyBarDisabled;
	
	tyP0410MagSel.tyMagSel.tyBtnSafetyBar.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMagSafetyBarPrep);
	tyP0410MagSel.tyMagDet.tyBtnSafetyBar.uiRtStat.0		:= NOT(p_tyNtParamCurr.bProjMagSafetyBarPrep);
	
	tyP0410MagSel.tyMagSel.tyBtnMagHeightChkEn.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMagHeightChkPrep);
	tyP0410MagSel.tyMagDet.tyBtnMagHeightChkEn.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjMagHeightChkPrep);
	
	tyP0410MagSel.tyMagSel.tyBitmapBrder.uiRtStat.0			:= NOT(p_tyNtParamCurr.bProjMagSafetyBarPrep OR 
																	p_tyNtParamCurr.bProjMagHeightChkPrep);
END_ACTION
