
ACTION Act_OptP0203Navi: 
	
	IF tyP0203OpsMag2.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0203OpsMag2.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
