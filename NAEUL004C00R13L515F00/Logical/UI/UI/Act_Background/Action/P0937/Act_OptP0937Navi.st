
ACTION Act_OptP0937Navi:
			
IF tyP0937AWPushOrPuller.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN	
	tyP0937AWPushOrPuller.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
	tyP0937AWPushOrPuller.tyNaviBack.tyBtnBack.bValue		:= FALSE;	
		
	eChgPage		:= UIP0920MtrNPneuCtrl;
END_IF		
		

END_ACTION
