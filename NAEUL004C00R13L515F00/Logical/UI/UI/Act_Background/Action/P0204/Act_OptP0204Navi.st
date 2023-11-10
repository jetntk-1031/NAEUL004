
ACTION Act_OptP0204Navi: 
	
	IF tyP0204OpsMag3.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0204OpsMag3.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0204OpsMag3.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
