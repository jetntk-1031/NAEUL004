
ACTION Act_EntP0923Disp:
	
	//Access Address
	IF bDispSafetyBar1 = TRUE THEN
		
		p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskHide);
		
		IF p_tyNtParamCurr.eProjMag = ULMagDual THEN
			p_tyC0004Navi ACCESS ADR(tyP0923SafetyBar.tyNaviBack);
		ELSE
			p_tyC0004Navi ACCESS ADR(tyP0923SafetyBar.tyNaviLyr1);
		END_IF
		
		p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
		
		p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0923SafetyBar.tyMsgBoxHide);
		
		p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
		p_tyP0923LftSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarCom);
		p_tyP0923LftSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarDC);
		p_tyP0923LftSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag1SafetyBarFB);
		
		p_tyP0923RgtSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarCom);
		p_tyP0923RgtSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarDC);
		p_tyP0923RgtSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag2SafetyBarFB);
		
	ELSIF bDispSafetyBar2 = TRUE THEN
		
		p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskHide);
		
		p_tyC0004Navi ACCESS ADR(tyP0923SafetyBar.tyNaviLyr2);
		
		p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
		
		p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
		
		p_tyC0008MsgBox ACCESS ADR(tyP0923SafetyBar.tyMsgBoxHide);
		
		p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
		
		p_tyP0923LftSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarCom);
		p_tyP0923LftSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarDC);
		p_tyP0923LftSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyMag3SafetyBarFB);
		
		p_tyP0923RgtSafetyBarCom ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarComHide);
		p_tyP0923RgtSafetyBarDC ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarDCHide);
		p_tyP0923RgtSafetyBarFB ACCESS ADR(tyP0923SafetyBar.tyRgtSafetyBarFBHide);
		
	END_IF
	
	//Disp
	//Update Status
	tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue	:= p_bMag1SafetyBarExtCtrl;
	tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue	:= p_bMag1SafetyBarRetCtrl;	
	tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue	:= p_bMag2SafetyBarExtCtrl;
	tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue	:= p_bMag2SafetyBarRetCtrl;
	tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue	:= p_bMag3SafetyBarExtCtrl;
	tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue	:= p_bMag3SafetyBarRetCtrl;
	
END_ACTION
