
ACTION Act_OptP0921InletShutterFB: 

	IF tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnSwitch.bValue = FALSE THEN
		
		IF tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue = TRUE THEN
			eInShutterAct	:= PneuActRet;
				
			IF p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done THEN
				eInShutterAct	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eInShutterStatus = Error THEN
				tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue = TRUE THEN
			eInShutterAct	:= PneuActExt;
				
			IF p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done THEN
				eInShutterAct	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue := FALSE; 
			ELSIF p_eInShutterStatus = Error THEN	
				tyP0921InletNOutletShutter.tyInletShutterFB.tyBtnClose.bValue := FALSE; 
			END_IF	
		END_IF
		
		//Update Direct Control Status
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;	
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnOpen.bValue	:= p_bInShutterRetCtrl;
		tyP0921InletNOutletShutter.tyInletShutterDC.tyBtnClose.bValue	:= p_bInShutterExtCtrl;	
		
	END_IF
		
	
END_ACTION
