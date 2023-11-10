
ACTION Act_OptP0923Mag2SafetyBarFB: 
	
	IF tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue		:= FALSE;
			
		ELSIF tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		END_IF
		
		IF tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue = TRUE THEN
			eMag2SafetyBarAct	:= PneuActRet;
			
			IF p_eMag2SafetyBarStat = PneuActRet AND p_eMag2SafetyBarStatus = Done THEN
				eMag2SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			ELSIF p_eMag2SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue = TRUE THEN
			eMag2SafetyBarAct	:= PneuActExt;
			
			IF p_eMag2SafetyBarStat = PneuActExt AND p_eMag2SafetyBarStatus = Done THEN
				eMag2SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue := FALSE;
			ELSIF p_eMag2SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue := FALSE;
			END_IF
		END_IF
		
		//Update Direct Control Status
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue		:= p_bMag2SafetyBarRetCtrl;
		tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue		:= p_bMag2SafetyBarExtCtrl;
		
	END_IF
	
END_ACTION
