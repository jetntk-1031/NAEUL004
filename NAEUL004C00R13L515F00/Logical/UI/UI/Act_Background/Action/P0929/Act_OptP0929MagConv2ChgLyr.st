
ACTION Act_OptP0929MagConv2ChgLyr:
	
	IF tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN //Top layer 
		
		IF tyP0929MagConv2.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0929MagConv2.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSIF tyP0929MagConv2.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN ///Btm layer
		IF tyP0929MagConv2.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0929MagConv2.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
