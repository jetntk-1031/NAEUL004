
ACTION Act_OptP0921OutletShutterDC: 

	// Direct Control
	IF tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bValue = TRUE THEN
		IF p_bOutShutterTwoCtrlOut = FALSE THEN
			IF tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl = TRUE THEN
				tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue	:= FALSE;
				
				eOutShutterAct	:= PneuActSetRet;
				
				IF p_eOutShutterStat = PneuActSetRet AND p_eOutShutterStatus = Done THEN
					eOutShutterAct	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl = TRUE THEN	
				tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue	:= TRUE;
				tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue	:= FALSE;
				
				eOutShutterAct	:= PneuActSetExt;
				
				IF p_eOutShutterStat = PneuActSetExt AND p_eOutShutterStatus = Done THEN
					eOutShutterAct	:= PneuActIdle;
					
					tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl = TRUE) OR (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl = TRUE) THEN
				IF (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue = TRUE) THEN
					eOutShutterAct	:= PneuActSetAll;
					
					IF p_eOutShutterStat = PneuActSetAll AND p_eOutShutterStatus = Done THEN
						eOutShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue = TRUE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue = FALSE) THEN	
					eOutShutterAct	:= PneuActSetRet;
					
					IF p_eOutShutterStat = PneuActSetRet AND p_eOutShutterStatus = Done THEN
						eOutShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue = FALSE) AND (tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue = TRUE) THEN	
					eOutShutterAct	:= PneuActSetExt;
					
					IF p_eOutShutterStat = PneuActSetExt AND p_eOutShutterStatus = Done THEN
						eOutShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eOutShutterAct	:= PneuActRstAll;
					
					IF p_eOutShutterStat = PneuActRstAll AND p_eOutShutterStatus = Done THEN
						eOutShutterAct	:= PneuActIdle;
						
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
						tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bRtCompl:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue	:= FALSE;
			
	END_IF
	
END_ACTION
