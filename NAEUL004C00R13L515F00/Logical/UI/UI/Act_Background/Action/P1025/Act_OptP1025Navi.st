
ACTION Act_OptP1025Navi: 
	
	tyP1025McSetScan.tyNaviBack.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1025McSetScan.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP1025McSetScan.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP1020McSetNavi;
		
	END_IF
	
END_ACTION
