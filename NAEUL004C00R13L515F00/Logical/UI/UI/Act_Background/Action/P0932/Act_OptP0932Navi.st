
ACTION Act_OptP0932Navi:
	
//	IF tyP0932MagConv3.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
//		tyP0932MagConv3.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
//		tyP0932MagConv3.tyNaviBack.tyBtnBack.bValue		:= FALSE;
//		
//		eChgPage	:= UIP0920MtrNPneuCtrl;
//	END_IF
	

	IF tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl = TRUE THEN
		tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bRtCompl	:= FALSE;
		tyP0932MagConv3.tyNavi3Lyr3.tyBtnBack.bValue		:= FALSE;
			
		eChgPage	:= UIP0920MtrNPneuCtrl;
		bDispMagConv1	:= FALSE;
		bDispMagConv2	:= FALSE;
		bDispMagConv3	:= TRUE;
	
	ELSIF tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl = TRUE THEN
		tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bRtCompl				:= FALSE;
		tyP0932MagConv3.tyNavi3Lyr3.tyBtnLeft.bValue				:= FALSE;
		eChgPage													:= UIP0931MagConv2;
		bDispMagConv1	:= FALSE;
		bDispMagConv2	:= TRUE;
		bDispMagConv3	:= FALSE;
			
	ELSIF tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl = TRUE THEN
			tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bRtCompl			:= FALSE;
			tyP0932MagConv3.tyNavi3Lyr3.tyBtnRgt.bValue				:= FALSE;
			eChgPage												:= UIP0930MagConv1;
			bDispMagConv1	:= FALSE;
			bDispMagConv2	:= FALSE;
			bDispMagConv3	:= TRUE;
	END_IF
		
		
	
END_ACTION
