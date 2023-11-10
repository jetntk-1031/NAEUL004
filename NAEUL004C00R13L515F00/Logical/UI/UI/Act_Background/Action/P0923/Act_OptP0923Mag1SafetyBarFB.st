
ACTION Act_OptP0923Mag1SafetyBarFB: 
	
	IF tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue		:= FALSE;
			
		ELSIF tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bRtCompl = TRUE THEN
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
			
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue		:= TRUE;
			tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		END_IF
		
		IF tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue = TRUE THEN
			eMag1SafetyBarAct	:= PneuActRet;
			
			IF p_eMag1SafetyBarStat = PneuActRet AND p_eMag1SafetyBarStatus = Done THEN
				eMag1SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			ELSIF p_eMag1SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue	:= FALSE;
			END_IF
			
		ELSIF tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue = TRUE THEN
			eMag1SafetyBarAct	:= PneuActExt;
			
			IF p_eMag1SafetyBarStat = PneuActExt AND p_eMag1SafetyBarStatus = Done THEN
				eMag1SafetyBarAct	:= PneuActIdle;
				
				tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue := FALSE;
			ELSIF p_eMag1SafetyBarStatus = Error THEN
				tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue := FALSE;
			END_IF
		END_IF
		
		//Update Direct Control Status
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue		:= p_bMag1SafetyBarRetCtrl;
		tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue		:= p_bMag1SafetyBarExtCtrl;
		
	END_IF
	
END_ACTION
