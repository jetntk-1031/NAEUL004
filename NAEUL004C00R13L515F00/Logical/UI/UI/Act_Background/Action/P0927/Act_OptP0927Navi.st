
ACTION Act_OptP0927Navi:
	
	IF tyP0927LifterMagConv2.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP0927LifterMagConv2.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
		tyP0927LifterMagConv2.tyNaviBack.tyBtnBack.bValue		:= FALSE;	
		
		eChgPage		:= UIP0920MtrNPneuCtrl;
		
	END_IF
		

END_ACTION
