
ACTION Act_OptP1027Navi: 
	
	tyP1027McSetOpCon.tyNaviBack.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1027McSetOpCon.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
		tyP1027McSetOpCon.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
		
		eChgPage	:= UIP1020McSetNavi;
		
	END_IF
	
END_ACTION
