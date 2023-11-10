
ACTION Act_OptP0923Mag1SafetyBarDC: 
	
	IF tyP0923SafetyBar.tyMag1SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bMag1SafetyBarTwoCtrlOut = FALSE THEN
			
			IF tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue	:= FALSE;
				
				eMag1SafetyBarAct	:= PneuActSetRet;
				
				IF p_eMag1SafetyBarStat = PneuActSetRet AND p_eMag1SafetyBarStatus = Done THEN
					eMag1SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue	:= FALSE;
				
				eMag1SafetyBarAct	:= PneuActSetExt;
				
				IF p_eMag1SafetyBarStat = PneuActSetExt AND p_eMag1SafetyBarStatus = Done THEN
					eMag1SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl = TRUE) THEN
				
				IF (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue = TRUE) THEN
					eMag1SafetyBarAct	:= PneuActSetAll;
					
					IF p_eMag1SafetyBarStat = PneuActSetAll AND p_eMag1SafetyBarStatus = Done THEN
						eMag1SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue = FALSE) THEN	
					eMag1SafetyBarAct	:= PneuActSetRet;
					
					IF p_eMag1SafetyBarStat = PneuActSetRet AND p_eMag1SafetyBarStatus = Done THEN
						eMag1SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bValue = FALSE) AND (tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bValue = TRUE) THEN	
					eMag1SafetyBarAct	:= PneuActSetExt;
					
					IF p_eMag1SafetyBarStat = PneuActSetExt AND p_eMag1SafetyBarStatus = Done THEN
						eMag1SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eMag1SafetyBarAct	:= PneuActRstAll;
					
					IF p_eMag1SafetyBarStat = PneuActRstAll AND p_eMag1SafetyBarStatus = Done THEN
						eMag1SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag1SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF
		
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag1SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		
	END_IF
	

END_ACTION
