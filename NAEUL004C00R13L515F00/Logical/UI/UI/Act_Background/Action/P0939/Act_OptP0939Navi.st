
ACTION Act_OptP0939Navi:
	
	IF tyP0939Lifter2.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP0939Lifter2.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
		
	END_IF		
	
END_ACTION
