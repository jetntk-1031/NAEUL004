
ACTION Act_OptP0921OutletShutterDC3: 

	// Direct Control
	IF tyP0921InletNOutletShutter.tyOutletShutterCom3.tyBtnSwitch.bValue = TRUE THEN
		IF p_bOutShutterTwoCtrlOut3 = FALSE THEN
			IF tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue	:= FALSE;
				
				eOutShutterAct3	:= PneuActSetRet;
				
				IF p_eOutShutterStat3 = PneuActSetRet AND p_eOutShutterStatus3 = Done THEN
					eOutShutterAct3	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue	:= FALSE;
				
				eOutShutterAct3	:= PneuActSetExt;
				
				IF p_eOutShutterStat3 = PneuActSetExt AND p_eOutShutterStatus3 = Done THEN
					eOutShutterAct3	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue = TRUE) THEN
					eOutShutterAct3	:= PneuActSetAll;
					
					IF p_eOutShutterStat3 = PneuActSetAll AND p_eOutShutterStatus3 = Done THEN
						eOutShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue = FALSE) THEN	
					eOutShutterAct3	:= PneuActSetRet;
					
					IF p_eOutShutterStat3 = PneuActSetRet AND p_eOutShutterStatus3 = Done THEN
						eOutShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue = TRUE) THEN	
					eOutShutterAct3	:= PneuActSetExt;
					
					IF p_eOutShutterStat3 = PneuActSetExt AND p_eOutShutterStatus3 = Done THEN
						eOutShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eOutShutterAct3	:= PneuActRstAll;
					
					IF p_eOutShutterStat3 = PneuActRstAll AND p_eOutShutterStatus3 = Done THEN
						eOutShutterAct3	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl		:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue		:= FALSE;
			
	END_IF
	
END_ACTION
