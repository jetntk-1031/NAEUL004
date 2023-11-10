
ACTION Act_OptP0929Navi:
	
	IF tyP0929MagConv2.tyNavi2Lyr.tyBtnBack.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyNavi2Lyr.tyBtnBack.bRtCompl	:= FALSE;
		tyP0929MagConv2.tyNavi2Lyr.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
	END_IF

	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
	
		IF (tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bRtCompl OR tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bRtCompl)
			AND tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN
			tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx := 2;
			
			tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bValue		:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bRtCompl		:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bValue		:= FALSE;
			
			IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE THEN
				//Layer (Bottom)
				tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat	:= TRUE;
				
				tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat 	:= FALSE;
				tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			ELSE //Direct ctrl
				tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat	:= TRUE;
				
				tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat	:= FALSE;
			END_IF
		ELSIF (tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bRtCompl OR tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bRtCompl)
			AND tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN
			tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx := 1;

			tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnLeft.bValue		:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bRtCompl		:= FALSE;
			tyP0929MagConv2.tyNavi2Lyr.tyBtnRgt.bValue		:= FALSE;
			
			IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = FALSE THEN
				//Layer (Top)
				tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat 	:= FALSE;
				tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat	:= TRUE;
	
				tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			ELSE //direct ctrl
				tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat	:= FALSE;
	
				tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			END_IF
		END_IF
		
	END_IF
	tyP0929MagConv2.tyCom.tyBtnLane.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane2Prep);
	
	IF tyP0929MagConv2.tyCom.tyBtnLane.bRtCompl THEN
		tyP0929MagConv2.tyCom.tyBtnLane.bRtCompl := FALSE;
		tyP0929MagConv2.tyCom.tyBtnLane.bValue := FALSE;
		eChgPage			:= UIP0928MagConv;
	END_IF
	

			
	
		
END_ACTION
