
ACTION Act_OptP0923Mag3SafetyBarDC: 
	
	IF tyP0923SafetyBar.tyMag3SafetyBarCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bMag3SafetyBarTwoCtrlOut = FALSE THEN
			
			IF tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue	:= FALSE;
				
				eMag3SafetyBarAct	:= PneuActSetRet;
				
				IF p_eMag3SafetyBarStat = PneuActSetRet AND p_eMag3SafetyBarStatus = Done THEN
					eMag3SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl = TRUE THEN
				tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue	:= TRUE;
				tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue	:= FALSE;
				
				eMag3SafetyBarAct	:= PneuActSetExt;
				
				IF p_eMag3SafetyBarStat = PneuActSetExt AND p_eMag3SafetyBarStatus = Done THEN
					eMag3SafetyBarAct	:= PneuActIdle;
					
					tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl = TRUE) THEN
				
				IF (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue = TRUE) THEN
					eMag3SafetyBarAct	:= PneuActSetAll;
					
					IF p_eMag3SafetyBarStat = PneuActSetAll AND p_eMag3SafetyBarStatus = Done THEN
						eMag3SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue = TRUE) AND (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue = FALSE) THEN	
					eMag3SafetyBarAct	:= PneuActSetRet;
					
					IF p_eMag3SafetyBarStat = PneuActSetRet AND p_eMag3SafetyBarStatus = Done THEN
						eMag3SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bValue = FALSE) AND (tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bValue = TRUE) THEN	
					eMag3SafetyBarAct	:= PneuActSetExt;
					
					IF p_eMag3SafetyBarStat = PneuActSetExt AND p_eMag3SafetyBarStatus = Done THEN
						eMag3SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eMag3SafetyBarAct	:= PneuActRstAll;
					
					IF p_eMag3SafetyBarStat = PneuActRstAll AND p_eMag3SafetyBarStatus = Done THEN
						eMag3SafetyBarAct	:= PneuActIdle;
						
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0923SafetyBar.tyMag3SafetyBarDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF
		
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnExt.bValue		:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0923SafetyBar.tyMag3SafetyBarFB.tyBtnRet.bValue		:= FALSE;
		
	END_IF
	

END_ACTION
