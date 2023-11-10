
ACTION Act_OptP0921OutletShutterDC2: 

	// Direct Control
	IF tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bValue = TRUE THEN
		IF p_bOutShutterTwoCtrlOut2 = FALSE THEN
			IF tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue	:= FALSE;
				
				eOutShutterAct2	:= PneuActSetRet;
				
				IF p_eOutShutterStat2 = PneuActSetRet AND p_eOutShutterStatus2 = Done THEN
					eOutShutterAct2	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue	:= FALSE;
				
				eOutShutterAct2	:= PneuActSetExt;
				
				IF p_eOutShutterStat2 = PneuActSetExt AND p_eOutShutterStatus2 = Done THEN
					eOutShutterAct2	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue = TRUE) THEN
					eOutShutterAct2	:= PneuActSetAll;
					
					IF p_eOutShutterStat2 = PneuActSetAll AND p_eOutShutterStatus2 = Done THEN
						eOutShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue = FALSE) THEN	
					eOutShutterAct2	:= PneuActSetRet;
					
					IF p_eOutShutterStat2 = PneuActSetRet AND p_eOutShutterStatus2 = Done THEN
						eOutShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue = TRUE) THEN	
					eOutShutterAct2	:= PneuActSetExt;
					
					IF p_eOutShutterStat2 = PneuActSetExt AND p_eOutShutterStatus2 = Done THEN
						eOutShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eOutShutterAct2	:= PneuActRstAll;
					
					IF p_eOutShutterStat2 = PneuActRstAll AND p_eOutShutterStatus2 = Done THEN
						eOutShutterAct2	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bRtCompl:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue	:= FALSE;
			
	END_IF
	
END_ACTION
