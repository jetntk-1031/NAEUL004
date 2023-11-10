
ACTION Act_OptP0923Navi:
	
	IF tyP0923SafetyBar.tyNaviBack.tyBtnBack.bRtCompl = TRUE OR tyP0923SafetyBar.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP0923SafetyBar.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE THEN
		tyP0923SafetyBar.tyNaviBack.tyBtnBack.bRtCompl 	:= FALSE;
		tyP0923SafetyBar.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr1.tyBtnBack.bRtCompl 	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr1.tyBtnBack.bValue	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr2.tyBtnBack.bRtCompl 	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr2.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
		
	ELSIF tyP0923SafetyBar.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE OR tyP0923SafetyBar.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE THEN
		tyP0923SafetyBar.tyNaviLyr1.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr1.tyBtnRgt.bRtCompl	:= FALSE;
		
		bDispSafetyBar1	:= FALSE;
		bDispSafetyBar2	:= TRUE;
		
		p_tyC0004Navi ACCESS ADR(tyP0923SafetyBar.tyNaviLyr2);
		
		p_tyP0923LftSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarCom);
		p_tyP0923LftSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarDC);
		p_tyP0923LftSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarFB);
		
		p_tyP0923RgtSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarComHide);
		p_tyP0923RgtSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarDCHide);
		p_tyP0923RgtSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarFBHide);
		
	ELSIF tyP0923SafetyBar.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE OR tyP0923SafetyBar.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE THEN
		tyP0923SafetyBar.tyNaviLyr2.tyBtnLeft.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyNaviLyr2.tyBtnRgt.bRtCompl	:= FALSE;
		
		bDispSafetyBar1	:= TRUE;
		bDispSafetyBar2	:= FALSE;
		
		p_tyC0004Navi ACCESS ADR(tyP0923SafetyBar.tyNaviLyr1);
		
		p_tyP0923LftSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarCom);
		p_tyP0923LftSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarDC);
		p_tyP0923LftSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarFB);
		
		p_tyP0923RgtSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarCom);
		p_tyP0923RgtSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarDC);
		p_tyP0923RgtSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarFB);
		
	END_IF
	
END_ACTION
