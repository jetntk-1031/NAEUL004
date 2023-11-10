
ACTION Act_OptP0921OutletShutterFB: 

	IF tyP0921InletNOutletShutter.tyOutletShutterCom.tyBtnSwitch.bValue = FALSE THEN
		// FB Control
		IF tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
			eOutShutterAct	:= PneuActRet;
				
			IF p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done THEN
				eOutShutterAct	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eOutShutterStatus = Error THEN
				tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue = TRUE THEN
			eOutShutterAct		:= PneuActExt;
				
			IF p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done THEN
				
				eOutShutterAct	:= PneuActIdle;

					
				tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue := FALSE; 
			ELSIF p_eOutShutterStatus = Error THEN	
				tyP0921InletNOutletShutter.tyOutletShutterFB.tyBtnClose.bValue := FALSE; 
			END_IF
			
		END_IF
		
		//UpdateStatus
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bRtCompl	:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnClose.bValue		:= p_bOutShutterExtCtrl;
		tyP0921InletNOutletShutter.tyOutletShutterDC.tyBtnOpen.bValue		:= p_bOutShutterRetCtrl;
			
	END_IF
			
END_ACTION
