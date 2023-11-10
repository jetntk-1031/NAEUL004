
ACTION Act_OptP1026Navi: 
	
	IF tyP1026McSetTeach.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		tyP1026McSetTeach.tyNaviBack.tyBtnBack.bValue	:= FALSE;
		
		eChgPage	:= UIP1021McSetGen;
	END_IF
	
END_ACTION
