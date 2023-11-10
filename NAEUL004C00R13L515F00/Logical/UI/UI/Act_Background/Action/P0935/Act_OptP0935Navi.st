
ACTION Act_OptP0935Navi:
	
	IF tyP0935Lifter.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0935Lifter.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0935Lifter.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
		
	END_IF		
	
END_ACTION
