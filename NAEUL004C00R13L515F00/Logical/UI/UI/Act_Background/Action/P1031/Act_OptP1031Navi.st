
ACTION Act_OptP1031Navi: 
	
	IF tyP1031MagSetTeach.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP1031MagSetTeach.tyNaviBack.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP1030MagSet;
	END_IF
	
END_ACTION
