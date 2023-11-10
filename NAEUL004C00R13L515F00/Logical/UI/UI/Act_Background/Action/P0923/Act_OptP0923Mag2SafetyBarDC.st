
ACTION Act_OptP0923Mag2SafetyBarDC: 
	
	IF tyP0923SafetyBar.tyMag2SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bMag2SafetyBarTwoCtrlOut = FALSE THEN
			
			IF tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue	:= FALSE;
				
				eMag2SafetyBarAct	:= PneuActSetRet;
				
				IF p_eMag2SafetyBarStat = PneuActSetRet AND p_eMag2SafetyBarStatus = Done THEN
					eMag2SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue	:= FALSE;
				
				eMag2SafetyBarAct	:= PneuActSetExt;
				
				IF p_eMag2SafetyBarStat = PneuActSetExt AND p_eMag2SafetyBarStatus = Done THEN
					eMag2SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl = TRUE) THEN
				
				IF (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue = TRUE) THEN
					eMag2SafetyBarAct	:= PneuActSetAll;
					
					IF p_eMag2SafetyBarStat = PneuActSetAll AND p_eMag2SafetyBarStatus = Done THEN
						eMag2SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue = FALSE) THEN	
					eMag2SafetyBarAct	:= PneuActSetRet;
					
					IF p_eMag2SafetyBarStat = PneuActSetRet AND p_eMag2SafetyBarStatus = Done THEN
						eMag2SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bValue = FALSE) AND (tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bValue = TRUE) THEN	
					eMag2SafetyBarAct	:= PneuActSetExt;
					
					IF p_eMag2SafetyBarStat = PneuActSetExt AND p_eMag2SafetyBarStatus = Done THEN
						eMag2SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eMag2SafetyBarAct	:= PneuActRstAll;
					
					IF p_eMag2SafetyBarStat = PneuActRstAll AND p_eMag2SafetyBarStatus = Done THEN
						eMag2SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag2SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF
		
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag2SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		
	END_IF
	

END_ACTION
