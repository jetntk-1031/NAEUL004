
ACTION Act_OptP0002ManualCtrl: 
	
	IF EDGEPOS(bUIManualMod) THEN	
		
		tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue	:= TRUE;
		
		//Mask
		fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBitmapGen.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBitmapSet.uiMaskRtStat));
		
		//Show Reset Manual Button
		fUIInRtStatOff(ADR(tyP0002Menu.tyMenu.tyBtnMnlRst.uiRtStat));
		
	END_IF
	
	IF tyP0002Menu.tyMenu.tyBtnMnlRst.bRtCompl = TRUE THEN
		tyP0002Menu.tyMenu.tyBtnMnlRst.bRtCompl	:= FALSE;
		
		bUIManualMod	:= FALSE;
		
		//Unmask
		fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBitmapGen.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBitmapSet.uiMaskRtStat));
		
		//Hide Reset Manual Button
		fUIInRtStatHide(ADR(tyP0002Menu.tyMenu.tyBtnMnlRst.uiRtStat));
		
	END_IF
	
	bManualMod	:= bUIManualMod AND p_tyDI.bSafetyRlySig;
	
END_ACTION
