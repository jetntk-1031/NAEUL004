
ACTION Act_OptP1020Navi:
	
	IF tyP1020McSetNavi.tyNavi.tyBtnMcSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnMcSet.bRtCompl			:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnMcSet.bValue			:= FALSE;
		
		eChgPage	:= UIP1021McSetGen;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bRtCompl		:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnVCommSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1022McSetVComm;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bRtCompl		:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnHCommSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1023McSetHComm;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnAntiGapSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1024McSetAntiGap;
				
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnScanSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnScanSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnScanSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1025McSetScan;
		
	ELSIF tyP1020McSetNavi.tyNavi.tyBtnOpConSet.bRtCompl = TRUE THEN
		tyP1020McSetNavi.tyNavi.tyBtnOpConSet.bRtCompl	:= FALSE;
		tyP1020McSetNavi.tyNavi.tyBtnOpConSet.bValue		:= FALSE;
		
		eChgPage	:= UIP1027McSetOpCon;
	END_IF
	
END_ACTION
