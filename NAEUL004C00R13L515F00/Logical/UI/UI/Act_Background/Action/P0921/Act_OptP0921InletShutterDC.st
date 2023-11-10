
ACTION Act_OptP0921InletShutterDC: 
	
	IF tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bValue = TRUE THEN
		IF p_bInShutterTwoCtrlOut = FALSE THEN
			IF tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue	:= FALSE;
				
				eInShutterAct	:= PneuActSetRet;
				
				IF p_eInShutterStat = PneuActSetRet AND p_eInShutterStatus = Done THEN
					eInShutterAct	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue	:= FALSE;
				
				eInShutterAct	:= PneuActSetExt;
				
				IF p_eInShutterStat = PneuActSetExt AND p_eInShutterStatus = Done THEN
					eInShutterAct	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue = TRUE) THEN
					eInShutterAct	:= PneuActSetAll;
					
					IF p_eInShutterStat = PneuActSetAll AND p_eInShutterStatus = Done THEN
						eInShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue = FALSE) THEN	
					eInShutterAct	:= PneuActSetRet;
					
					IF p_eInShutterStat = PneuActSetRet AND p_eInShutterStatus = Done THEN
						eInShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue = TRUE) THEN	
					eInShutterAct	:= PneuActSetExt;
					
					IF p_eInShutterStat = PneuActSetExt AND p_eInShutterStatus = Done THEN
						eInShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eInShutterAct	:= PneuActRstAll;
					
					IF p_eInShutterStat = PneuActRstAll AND p_eInShutterStatus = Done THEN
						eInShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
						tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	

END_ACTION
