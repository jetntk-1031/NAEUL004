
ACTION Act_OptP0204_P0003AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0204OpsMag3.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0204OpsMag3.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	
	//LED Wifi
	tyP0204OpsMag3.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
		
		
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag3	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bRtCompl := FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
				
		IF tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bRtCompl THEN
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bRtCompl := FALSE;
			bNewMag3	:= p_bOpsMagConvUL3NewMagAllw;
			bRlsMag3	:= p_bOpsMagConvUL3RlsMagAllw;
		END_IF
	
					
		IF bNewMag3 = TRUE THEN
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyDI.bMag3FixedUnclampRS = FALSE THEN
				bNewMag3	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
						
		ELSIF bRlsMag3 = TRUE THEN
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
				IF p_bOpsMagConvUL3EjectMESStep  THEN //FOR MES
					bRlsMag3	:= FALSE;		
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				END_IF
			ELSIF (p_tyDI.bMag3FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen3 = FALSE) THEN 
				bRlsMag3	:= FALSE;		
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
		
		ELSIF p_bAlarmErr THEN
			bNewMag3	:= FALSE;
			bRlsMag3	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
		END_IF
				
		IF p_tyDI.bMagPresentSen3 AND p_tyDI.bMagConvEntSen3 = FALSE THEN
			tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
		ELSE
			tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
		END_IF
		
		IF (p_bOpsMagConvUL3NewMagAllw AND p_tyBuffer3BffrStat.bBffrMty) 
			OR p_bOpsMagConvUL3RlsMagAllw 
			OR p_bBufferMagRemoved3
			THEN //AND p_tyDI.bOutShutterCloseRS
			fUIInRtStatHide(ADR(tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat));
		ELSE	
			fUIInRtStatOff(ADR(tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat));
		END_IF
	
		
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bValue :=  tyP0204OpsMag3.tyOps.tyBtnChgMag.bValue;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.bRtLk :=  tyP0204OpsMag3.tyOps.tyBtnChgMag.bRtLk;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiTxtIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk3.usiTxtIdx + tyP0204OpsMag3.tyOps.tyBtnChgMag.usiTxtIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.usiBitmapIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk3.usiBitmapIdx + 	tyP0204OpsMag3.tyOps.tyBitmapChgMag.usiValueIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag3.uiMaskRtStat := tyP0204OpsMag3.tyOps.tyBtnChgMag.uiMaskRtStat ;
				
	END_IF
	
END_ACTION
