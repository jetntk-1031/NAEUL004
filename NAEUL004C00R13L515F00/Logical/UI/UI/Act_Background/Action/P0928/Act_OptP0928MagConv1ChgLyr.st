
ACTION Act_OptP0928MagConv1ChgLyr:
	
	IF tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 1 THEN //Top layer 
		
		IF tyP0928MagConv.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0928MagConv.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0928MagConv.tyTopFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	ELSIF tyP0928MagConv.tyNavi2Lyr.tyBitmapPageDisp.usiValueIdx = 2 THEN ///Btm layer
		IF tyP0928MagConv.tyCom.tyBtnSwitch.bRtCompl THEN
			tyP0928MagConv.tyCom.tyBtnSwitch.bRtCompl	:= FALSE;
			
			IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
				fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));
				fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
			ELSE
				fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyLyr.uiRtStat));
				fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmFB.tyLyr.uiRtStat));
			END_IF
			
		END_IF
	END_IF
	
END_ACTION
