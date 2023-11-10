
ACTION Act_OptP0201Navi: 
	
	IF tyP0201OpsTravLifter.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0201OpsTravLifter.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0201OpsTravLifter.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
		
	END_IF
	
END_ACTION
