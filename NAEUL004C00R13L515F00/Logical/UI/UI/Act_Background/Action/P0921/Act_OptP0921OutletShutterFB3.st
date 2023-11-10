
ACTION Act_OptP0921OutletShutterFB3: 

	IF tyP0921InletNOutletShutter.tyOutletShutterCom3.tyBtnSwitch.bValue = FALSE THEN
		// FB Control
		IF tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bRtCompl	:= FALSE;
				
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue	:= FALSE;
				
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bRtCompl = TRUE THEN
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bRtCompl	:= FALSE;
			
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue	:= TRUE;
			tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue	:= FALSE;
		END_IF
			
		IF tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue = TRUE THEN
			eOutShutterAct3	:= PneuActRet;
				
			IF p_eOutShutterStat3 = PneuActRet AND p_eOutShutterStatus3 = Done THEN
				eOutShutterAct3	:= PneuActIdle;
					
				tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue	:= FALSE;
			ELSIF p_eOutShutterStatus3 = Error THEN
				tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnOpen.bValue	:= FALSE;
			END_IF	
					
		ELSIF tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue = TRUE THEN
			eOutShutterAct3		:= PneuActExt;

				
			IF p_eOutShutterStat3 = PneuActExt AND p_eOutShutterStatus3 = Done THEN

				eOutShutterAct3	:= PneuActIdle;
	
				tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue := FALSE; 
			ELSIF p_eOutShutterStatus3 = Error THEN	
				tyP0921InletNOutletShutter.tyOutletShutterFB3.tyBtnClose.bValue := FALSE; 
			END_IF
			
		END_IF
		
		//UpdateStatus
		tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bRtCompl		:= FALSE;
		tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnClose.bValue			:= p_bOutShutterExtCtrl3;
		tyP0921InletNOutletShutter.tyOutletShutterDC3.tyBtnOpen.bValue			:= p_bOutShutterRetCtrl3;
			
	END_IF
			
END_ACTION
