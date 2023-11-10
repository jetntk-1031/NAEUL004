
ACTION Act_OptP1021Navi: 
	
	tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtLk	:= tyCommon.tySet.tyBtnSave.bRtCompl;
	
	IF tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtCompl = TRUE OR tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtCompl = TRUE 
		OR tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtCompl = TRUE THEN
		tyP1021McSetGen.tyNaviLyr1.tyBtnBack.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyNaviLyr2.tyBtnBack.bRtCompl		:= FALSE;
		tyP1021McSetGen.tyNaviLyr3.tyBtnBack.bRtCompl		:= FALSE;

		eChgPage	:= UIP1020McSetNavi;
	END_IF
	
	IF (p_tyNtParamCurr.bProjMagConvLane1Prep AND p_tyNtParamCurr.bProjMagConvLane2Prep) OR 
		(p_tyNtParamCurr.tyDISettings.diMagWidthChkSen <> 0 OR p_tyNtParamCurr.bProjInletStopperPrep 
		OR p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.bAutoRcpPrep OR p_tyNtParamCurr.tyDISettings.diScanComplSig <> 0) 
		
		THEN
		p_tyC0004Navi ACCESS ADR (tyP1021McSetGen.tyNaviLyr3);
		IF tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =3 
			OR tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =5 THEN
			
			tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx := 4;
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen4.uiRtStat));
			tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl := FALSE;
			tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl := FALSE;
	
		ELSIF tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =3
			OR tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =4 THEN
			
			tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx := 5;
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			IF (NOT p_tyNtParamCurr.bProjMagConvLane1Prep AND NOT p_tyNtParamCurr.bProjMagConvLane2Prep) 
				AND (p_tyNtParamCurr.tyDISettings.diMagWidthChkSen <> 0 OR p_tyNtParamCurr.bProjInletStopperPrep OR p_tyNtParamCurr.eCustomerReq = Siemens OR  p_tyNtParamCurr.eCustomerReq = We_Fabricate ) THEN
				fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
				fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen4.uiRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
				fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen4.uiRtStat));
			END_IF
			
			tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl := FALSE;
			tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl := FALSE;
	
		ELSIF (tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =4) 
			OR (tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl AND tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx =5) THEN
			
			tyP1021McSetGen.tyNaviLyr3.tyBitmapPageDisp.usiValueIdx := 3;
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen3.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen4.uiRtStat));
			tyP1021McSetGen.tyNaviLyr3.tyBtnRgt.bRtCompl := FALSE;
			tyP1021McSetGen.tyNaviLyr3.tyBtnLeft.bRtCompl := FALSE;
		END_IF
		

	ELSE

		//Navi From Layer 1 to Layer 2
		IF tyP1021McSetGen.tyNaviLyr1.tyBtnRgt.bRtCompl = TRUE THEN
			p_tyC0004Navi ACCESS ADR (tyP1021McSetGen.tyNaviLyr2);
			
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			
			tyP1021McSetGen.tyNaviLyr1.tyBtnRgt.bRtCompl			:= FALSE;
			
		ELSIF tyP1021McSetGen.tyNaviLyr1.tyBtnLeft.bRtCompl = TRUE THEN
			p_tyC0004Navi ACCESS ADR (tyP1021McSetGen.tyNaviLyr2);
			
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			
			tyP1021McSetGen.tyNaviLyr1.tyBtnLeft.bRtCompl			:= FALSE;
			
		//Navi Form Layer 2 to Layer 1
		ELSIF tyP1021McSetGen.tyNaviLyr2.tyBtnRgt.bRtCompl = TRUE THEN
			p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
			
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			
			tyP1021McSetGen.tyNaviLyr2.tyBtnRgt.bRtCompl			:= FALSE;
			
		ELSIF tyP1021McSetGen.tyNaviLyr2.tyBtnLeft.bRtCompl = TRUE THEN
			p_tyC0004Navi ACCESS ADR(tyP1021McSetGen.tyNaviLyr1);
			
			fUIInRtStatOff(ADR(tyP1021McSetGen.tyGen.tyLyrGen1.uiRtStat));
			fUIInRtStatHide(ADR(tyP1021McSetGen.tyGen.tyLyrGen2.uiRtStat));
			
			tyP1021McSetGen.tyNaviLyr2.tyBtnLeft.bRtCompl			:= FALSE;
			
		END_IF
	END_IF
	
END_ACTION
