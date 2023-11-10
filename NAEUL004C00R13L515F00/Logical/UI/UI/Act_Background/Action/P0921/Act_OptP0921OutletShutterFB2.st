
ACTION Act_OptP0921OutletShutterFB2: 

	IF tyP0921InletNOutletShutter.tyOutletShutterCom2.tyBtnSwitch.bValue = FALSE THEN
		// FB Control
		IF tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue = TRUE THEN
			eOutShutterAct2	:= PneuActRet;
				
			IF p_eOutShutterStat2 = PneuActRet AND p_eOutShutterStatus2 = Done THEN
				eOutShutterAct2	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eOutShutterStatus2 = Error THEN
				tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue = TRUE THEN
			eOutShutterAct2		:= PneuActExt;

				
			IF p_eOutShutterStat2 = PneuActExt AND p_eOutShutterStatus2 = Done THEN

				eOutShutterAct2	:= PneuActIdle;
	
				tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue := FALSE; 
			ELSIF p_eOutShutterStatus2 = Error THEN	
				tyP0921InletNOutletShutter.tyOutletShutterFB2.tyBtnClose.bValue := FALSE; 
			END_IF
			
		END_IF
		
		//UpdateStatus
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnClose.bValue			:= p_bOutShutterExtCtrl2;
		tyP0921InletNOutletShutter.tyOutletShutterDC2.tyBtnOpen.bValue			:= p_bOutShutterRetCtrl2;
			
	END_IF
			
END_ACTION
