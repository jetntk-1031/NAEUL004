
ACTION Act_OptP0933Navi:
			
	IF tyP0933PushConv.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		eChgPage		:= UIP0920MtrNPneuCtrl;
			
		tyP0933PushConv.tyNaviBack.tyBtnBack.bRtCompl		:= FALSE;
		tyP0933PushConv.tyNaviBack.tyBtnBack.bValue			:= FALSE;
	END_IF		

END_ACTION
