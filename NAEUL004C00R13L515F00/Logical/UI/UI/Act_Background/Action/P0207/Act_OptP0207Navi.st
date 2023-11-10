
ACTION Act_OptP0207Navi: 
	
	IF tyP0207OpsMagConv2.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0207OpsMagConv2.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0207OpsMagConv2.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
