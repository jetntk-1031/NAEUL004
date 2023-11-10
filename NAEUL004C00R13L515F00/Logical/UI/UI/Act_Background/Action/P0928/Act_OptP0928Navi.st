
ACTION Act_OptP0928Navi:
	
	IF tyP0928MagConv.tyNavi2Lyr.tyBtnBack.bRtCompl = TRUE THEN
		tyP0928MagConv.tyNavi2Lyr.tyBtnBack.bRtCompl	:= FALSE;
		tyP0928MagConv.tyNavi2Lyr.tyBtnBack.bValue		:= FALSE;
		
		eChgPage	:= UIP0920MtrNPneuCtrl;
	END_IF

	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
	
		IF (tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bRtCompl OR tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bRtCompl)
			AND tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN
			tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx := 2;
			
			tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bRtCompl	:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bValue		:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bRtCompl		:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bValue		:= FALSE;
			IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE THEN 
				//Layer (Bottom)
				tyP0928MagConv.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyTopDC.tyLyr.uiRtStat	:= TRUE;
				
				tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat 	:= FALSE;
				tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			ELSE // direct ctrl
				tyP0928MagConv.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyTopDC.tyLyr.uiRtStat	:= TRUE;
				
				tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat	:= FALSE;
			END_IF
		ELSIF (tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bRtCompl OR tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bRtCompl)
			AND tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN
			tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx := 1;

			tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bRtCompl	:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnLeft.bValue		:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bRtCompl		:= FALSE;
			tyP0928MagConv.tyNavi2Lyr.tyBtnRgt.bValue		:= FALSE;
			IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = FALSE THEN 
				//Layer (Top)
				tyP0928MagConv.tyTopFB.tyLyr.uiRtStat 	:= FALSE;
				tyP0928MagConv.tyTopDC.tyLyr.uiRtStat	:= TRUE;
	
				tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			ELSE //direct ctrl
				tyP0928MagConv.tyTopFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyTopDC.tyLyr.uiRtStat	:= FALSE;
	
				tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat 	:= TRUE;
				tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat	:= TRUE;
			END_IF
		END_IF
		
	END_IF
	tyP0928MagConv.tyCom.tyBtnLane.uiRtStat := NOT(p_tyNtParamCurr.bProjMagConvLane2Prep);
	
	IF tyP0928MagConv.tyCom.tyBtnLane.bRtCompl THEN
		tyP0928MagConv.tyCom.tyBtnLane.bRtCompl := FALSE;
		tyP0928MagConv.tyCom.tyBtnLane.bValue := FALSE;
		eChgPage			:= UIP0929MagConv2;
	END_IF
	

	
		
END_ACTION
