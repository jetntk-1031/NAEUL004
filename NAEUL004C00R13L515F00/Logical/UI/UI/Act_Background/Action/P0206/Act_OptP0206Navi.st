
ACTION Act_OptP0206Navi: 
	
	IF tyP0206OpsMagConv1.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0206OpsMagConv1.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0206OpsMagConv1.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
