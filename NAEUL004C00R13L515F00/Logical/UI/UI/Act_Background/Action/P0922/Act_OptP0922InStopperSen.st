
ACTION Act_OptP0922InStopperSen: 

	//tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnOpenRS.bValue	:= p_tyDI.bInShutterOpenRS;
	//tyP0921InletNOutletShutter.tyInletShutterCom.tyBtnCloseRS.bValue	:= p_tyDI.bInShutterCloseRS;
	
	IF p_InletStopperRetCtrl = TRUE THEN
		tyP0922Stopper.tyInStopperCom.tyBitmapMc.uiValueIdx := 0;
	ELSE
		tyP0922Stopper.tyInStopperCom.tyBitmapMc.uiValueIdx := 1;
	END_IF
	
END_ACTION
