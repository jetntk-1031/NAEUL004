
ACTION Act_OptP0938Navi:
	
	CASE p_tyNtParamCurr.eProjMag OF
		ULMagDual:
			IF tyP0938MagAW.tyNavi2Lyr1.tyBtnBack.bRtCompl = TRUE OR tyP0938MagAW.tyNavi2Lyr2.tyBtnBack.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi2Lyr1.tyBtnBack.bRtCompl := FALSE;
				tyP0938MagAW.tyNavi2Lyr1.tyBtnBack.bValue	:= FALSE;
				tyP0938MagAW.tyNavi2Lyr2.tyBtnBack.bRtCompl := FALSE;
				tyP0938MagAW.tyNavi2Lyr2.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				
			ELSIF tyP0938MagAW.tyNavi2Lyr1.tyBtnLeft.bRtCompl = TRUE OR tyP0938MagAW.tyNavi2Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi2Lyr1.tyBtnLeft.bRtCompl	:= FALSE;
				tyP0938MagAW.tyNavi2Lyr1.tyBtnRgt.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= FALSE;
				bDispMagAW2	:= TRUE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi2Lyr2);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd2);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW2);
				
			ELSIF tyP0938MagAW.tyNavi2Lyr2.tyBtnLeft.bRtCompl = TRUE OR tyP0938MagAW.tyNavi2Lyr2.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi2Lyr2.tyBtnLeft.bRtCompl	:= FALSE;
				tyP0938MagAW.tyNavi2Lyr2.tyBtnRgt.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= TRUE;
				bDispMagAW2	:= FALSE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi2Lyr1);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd1);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW1);
				
			END_IF
			
		ULMagTriple:
			IF tyP0938MagAW.tyNavi3Lyr1.tyBtnBack.bRtCompl = TRUE OR tyP0938MagAW.tyNavi3Lyr2.tyBtnBack.bRtCompl = TRUE OR tyP0938MagAW.tyNavi3Lyr3.tyBtnBack.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr1.tyBtnBack.bRtCompl := FALSE;
				tyP0938MagAW.tyNavi3Lyr1.tyBtnBack.bValue	:= FALSE;
				tyP0938MagAW.tyNavi3Lyr2.tyBtnBack.bRtCompl := FALSE;
				tyP0938MagAW.tyNavi3Lyr2.tyBtnBack.bValue	:= FALSE;
				tyP0938MagAW.tyNavi3Lyr3.tyBtnBack.bRtCompl := FALSE;
				tyP0938MagAW.tyNavi3Lyr3.tyBtnBack.bValue	:= FALSE;
				
				eChgPage	:= UIP0920MtrNPneuCtrl;
				
			ELSIF tyP0938MagAW.tyNavi3Lyr1.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr1.tyBtnLeft.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= FALSE;
				bDispMagAW2	:= FALSE;
				bDispMagAW3	:= TRUE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr3);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd3);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW3);
				
			ELSIF tyP0938MagAW.tyNavi3Lyr1.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr1.tyBtnRgt.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= FALSE;
				bDispMagAW2	:= TRUE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr2);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd2);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW2);
				
			ELSIF tyP0938MagAW.tyNavi3Lyr2.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr2.tyBtnLeft.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= TRUE;
				bDispMagAW2	:= FALSE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr1);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd1);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW1);
				
			ELSIF tyP0938MagAW.tyNavi3Lyr2.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr2.tyBtnRgt.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= FALSE;
				bDispMagAW2	:= FALSE;
				bDispMagAW3	:= TRUE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr3);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd3);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW3);
				
			ELSIF tyP0938MagAW.tyNavi3Lyr3.tyBtnLeft.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr3.tyBtnLeft.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= FALSE;
				bDispMagAW2	:= TRUE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr2);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd2);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW2);
				
			ELSIF tyP0938MagAW.tyNavi3Lyr3.tyBtnRgt.bRtCompl = TRUE THEN
				tyP0938MagAW.tyNavi3Lyr3.tyBtnRgt.bRtCompl	:= FALSE;
				
				bDispMagAW1	:= TRUE;
				bDispMagAW2	:= FALSE;
				bDispMagAW3	:= FALSE;
				
				p_tyC0004Navi ACCESS ADR(tyP0938MagAW.tyNavi3Lyr1);
				
				p_tyC0001MotionStd ACCESS ADR(tyP0938MagAW.tyMotionStd1);
				
				p_tyP0938MagAW ACCESS ADR(tyP0938MagAW.tyMagAW1);
				
			END_IF
			
	END_CASE
	
END_ACTION
