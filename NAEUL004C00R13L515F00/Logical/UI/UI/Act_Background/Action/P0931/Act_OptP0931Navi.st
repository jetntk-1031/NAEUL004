
ACTION Act_OptP0931Navi:
	
//	IF tyP0931MagConv2.tyNaviBack.tyBtnBack.bRtCompl = TRUE THEN
//		tyP0931MagConv2.tyNaviBack.tyBtnBack.bRtCompl	:= FALSE;
//		tyP0931MagConv2.tyNaviBack.tyBtnBack.bValue		:= FALSE;
//		
//		eChgPage	:= UIP0920MtrNPneuCtrl;
//	END_IF
	
	CASE p_tyNtParamCurr.eProjMag OF
		ULMagDual:
			IF tyP0931MagConv2.tyNavi2Lyr2.tyBtnBack.bRtCompl = TRUE THEN
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnBack.bRtCompl	:= FALSE;
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnBack.bValue		:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
		
			ELSIF tyP0931MagConv2.tyNavi2Lyr2.tyBtnLeft.bRtCompl = TRUE OR tyP0931MagConv2.tyNavi2Lyr2.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnLeft.bRtCompl				:= FALSE;
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnLeft.bValue				:= FALSE;
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnRgt.bRtCompl				:= FALSE;
				tyP0931MagConv2.tyNavi2Lyr2.tyBtnRgt.bValue					:= FALSE;
				eChgPage													:= UIP0930MagConv1;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
			END_IF
			
		ULMagTriple:
			IF tyP0931MagConv2.tyNavi3Lyr2.tyBtnBack.bRtCompl = TRUE THEN
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnBack.bRtCompl	:= FALSE;
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnBack.bValue		:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= TRUE;
				bDispMagConv3	:= FALSE;
		
			ELSIF tyP0931MagConv2.tyNavi3Lyr2.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnLeft.bRtCompl				:= FALSE;
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnLeft.bValue				:= FALSE;
				eChgPage													:= UIP0930MagConv1;
				bDispMagConv1	:= TRUE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= FALSE;
				
			ELSIF tyP0931MagConv2.tyNavi3Lyr2.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnRgt.bRtCompl				:= FALSE;
				tyP0931MagConv2.tyNavi3Lyr2.tyBtnRgt.bValue					:= FALSE;
				eChgPage													:= UIP0932MagConv3;
				bDispMagConv1	:= FALSE;
				bDispMagConv2	:= FALSE;
				bDispMagConv3	:= TRUE;
			END_IF
			
	END_CASE	
	
END_ACTION
