
ACTION Act_OptP0002MsgGuide:
	
	//Display
	tyP0002Menu.tyMenu.tyHotspotProdSel.uiRtStat.0	:= tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0;
	tyP0002Menu.tyMenu.tyHotspotMagSel.uiRtStat.0	:= tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0;
	
	IF p_tyNtParamCurr.eProjMag = ULMagTriple THEN
		tyP0002Menu.tyMenu.tyHotspotProdSel.bRtLk	:= NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
		tyP0002Menu.tyMenu.tyHotspotMagSel.bRtLk	:= NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent OR p_bBuffer3MagPresent);
	ELSE
		tyP0002Menu.tyMenu.tyHotspotProdSel.bRtLk	:= NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
		tyP0002Menu.tyMenu.tyHotspotMagSel.bRtLk	:= NOT(p_bBuffer1MagPresent OR p_bBuffer2MagPresent);
	END_IF
	
	//Control
	IF tyP0002Menu.tyMenu.tyHotspotProdSel.bRtCompl OR tyP0002Menu.tyMenu.tyHotspotMagSel.bRtCompl THEN
		p_tyC0008MsgBox ACCESS ADR(tyP0002Menu.tyMsgBoxRemoveMag);
		
		IF tyP0002Menu.tyMsgBoxRemoveMag.tyBtnNo.bRtCompl = TRUE THEN
			tyP0002Menu.tyMsgBoxRemoveMag.tyBtnNo.bRtCompl	:= FALSE;
			tyP0002Menu.tyMsgBoxRemoveMag.tyBtnNo.bValue	:= FALSE;
			
			p_tyC0008MsgBox ACCESS ADR(tyP0002Menu.tyMsgBoxHide);
			
			IF tyP0002Menu.tyMenu.tyHotspotProdSel.bRtCompl AND tyP0002Menu.tyMenu.tyBtnProdSel.uiMaskRtStat.0 THEN
				eChgPage	:= UIP0400ProdSel;
				
			ELSIF tyP0002Menu.tyMenu.tyHotspotMagSel.bRtCompl AND tyP0002Menu.tyMenu.tyBtnMagSel.uiMaskRtStat.0 THEN
				eChgPage	:= UIP0410MagSel;
				
			END_IF
			
			tyP0002Menu.tyMenu.tyHotspotProdSel.bRtCompl	:= FALSE;
			tyP0002Menu.tyMenu.tyHotspotMagSel.bRtCompl		:= FALSE;
			
		END_IF
		
	END_IF
	
END_ACTION
