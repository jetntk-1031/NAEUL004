
ACTION Act_OptP1030Mask: 
	
	IF tyP1030MagSet.tyMagSet.tyStringRecipeNm.bRtCompl				OR tyP1030MagSet.tyMagSet.tyNumSltToSltDist.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyNumMaxSlt.bRtCompl				OR tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.bRtCompl	OR tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyNumTravPosMag1.bRtCompl			OR tyP1030MagSet.tyMagSet.tyNumTravPosMag2.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyNumTravPosMag3.bRtCompl			OR tyP1030MagSet.tyMagSet.tyDrpDnMagModel.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bRtCompl
		OR tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bRtCompl 
		THEN
		
		fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat));
		
		tyP1030MagSet.tyMagSet.tyStringRecipeNm.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumSltToSltDist.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumMaxSlt.bRtCompl				:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumLifterMag1Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumLifterMag2Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumLifterMag3Slt1Pos.bRtCompl	:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumTravPosMag1.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumTravPosMag2.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumTravPosMag3.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyDrpDnMagModel.bRtCompl			:= FALSE;
		tyP1030MagSet.tyMagSet.tyNumMagMaxBrdWidth.bRtCompl		:= FALSE;
		tyP1030MagSet.tyMagSet.tyBtnSafetyBarDisabled.bRtCompl  := FALSE;
		tyP1030MagSet.tyMagSet.tyBtnMagHeightChkEn.bRtCompl		:= FALSE;
	END_IF
	
	IF tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[tyP1030Table.uiSelectedRow].sValue <> '' THEN
		fUIInRtStatHide(ADR(tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat));
	ELSE
		fUIInRtStatOff(ADR(tyP1030MagSet.tyMagSet.tyBtnDelete.uiMaskRtStat));
	END_IF	
	
	tyP1030MagSet.tyMagSet.tyBtnSort.uiMaskRtStat.0		:= (tyP1030MagSet.tyMagSet.tyTableRecipe.a_tyStringDataCol1[1].sValue <> '')  
	AND (tyP1030MagSet.tyMagSet.tyBtnSave.uiMaskRtStat.0 = FALSE) AND (tyP1030MagSet.tyMagSet.tyBtnDelete.bRtCompl = FALSE) ;

	
END_ACTION
