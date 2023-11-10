
ACTION Act_OptP0410Mask: 
	
	IF tyP0410MagSel.tyMagSel.tyBtnLoad.bRtCompl = FALSE THEN
		IF tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[tyP0410Table.uiSelectedRow].sValue = '' THEN
			fUIInRtStatOff(ADR(tyP0410MagSel.tyMagSel.tyBtnLoad.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0410MagSel.tyMagSel.tyBtnPreview.uiMaskRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0410MagSel.tyMagSel.tyBtnLoad.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0410MagSel.tyMagSel.tyBtnPreview.uiMaskRtStat));
		END_IF
	END_IF
	
	tyP0410MagSel.tyMagSel.tyBtnSort.uiMaskRtStat.0		:= (tyP0410MagSel.tyMagSel.tyTableRecipe.a_tyStringDataCol1[1].sValue <> '') AND (tyP0410MagSel.tyMagSel.tyBtnLoad.bRtCompl = FALSE);
	
	
END_ACTION
