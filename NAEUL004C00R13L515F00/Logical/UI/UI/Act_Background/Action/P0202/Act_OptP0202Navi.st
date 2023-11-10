
ACTION Act_OptP0202Navi: 
	
	IF tyP0202OpsMag1.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0202OpsMag1.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
