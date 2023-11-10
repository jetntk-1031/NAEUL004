
ACTION Act_OptP0205Navi: 
	
	IF tyP0205OpsAIV.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0205OpsAIV.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0205OpsAIV.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0200OpsGen;
	
	ELSIF tyP0205OpsAIV.tyIOMonitor.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0205OpsAIV.tyIOMonitor.tyHotspotClose.bRtCompl	:= FALSE;
	
		eChgPage	:= UIP0200OpsGen;
	
	END_IF
	
END_ACTION
