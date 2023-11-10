
ACTION Act_OptP0926Navi:
	
	IF tyP0926LifterMagConv.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0926LifterMagConv.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
		tyP0926LifterMagConv.tyNaviBack.tyBtnBack.bValue		:= FALSE;	
		
		eChgPage		:= UIP0920MtrNPneuCtrl;
		
	END_IF
		

END_ACTION
