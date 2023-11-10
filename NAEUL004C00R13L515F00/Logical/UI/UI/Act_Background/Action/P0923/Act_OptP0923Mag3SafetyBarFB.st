
ACTION Act_OptP0923Mag3SafetyBarFB: 
	
	IF tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue		:= FALSE;
			
		ELSIF tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		END_IF
		
		IF tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue = TRUE THEN
			eMag3SafetyBarAct	:= PneuActRet;
			
			IF p_eMag3SafetyBarStat = PneuActRet AND p_eMag3SafetyBarStatus = Done THEN
				eMag3SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			ELSIF p_eMag3SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue = TRUE THEN
			eMag3SafetyBarAct	:= PneuActExt;
			
			IF p_eMag3SafetyBarStat = PneuActExt AND p_eMag3SafetyBarStatus = Done THEN
				eMag3SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue := FALSE;
			ELSIF p_eMag3SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue := FALSE;
			END_IF
		END_IF
		
		//Update Direct Control Status
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue		:= p_bMag3SafetyBarRetCtrl;
		tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue		:= p_bMag3SafetyBarExtCtrl;
		
	END_IF
	
END_ACTION
