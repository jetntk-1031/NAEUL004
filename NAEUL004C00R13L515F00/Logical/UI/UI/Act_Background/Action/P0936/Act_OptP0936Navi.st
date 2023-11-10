
ACTION Act_OptP0936Navi:
			
	IF tyP0936Trav.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		eChgPage		:= UIP0920MtrNPneuCtrl;
			
		tyP0936Trav.tyNaviBack.tyBtnBack.bRtCompl			:= FALSE;
		tyP0936Trav.tyNaviBack.tyBtnBack.bValue				:= FALSE;
		
	END_IF		

END_ACTION
