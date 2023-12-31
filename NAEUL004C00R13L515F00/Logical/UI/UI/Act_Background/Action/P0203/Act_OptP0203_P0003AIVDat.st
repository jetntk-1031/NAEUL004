
ACTION Act_OptP0203_P0003AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode
	tyP0203OpsMag2.tyOps.tyBtnChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode  AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	tyP0203OpsMag2.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode  AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform;
	
	//LED Wifi
	tyP0203OpsMag2.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
		
		
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag2	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk    := FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl := FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue		:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue	:= FALSE;
		END_IF
				
		IF tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl THEN
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl := FALSE;
			bNewMag2	:= p_bOpsMagConvUL2NewMagAllw;
			bRlsMag2	:= p_bOpsMagConvUL2RlsMagAllw;
		END_IF
				
	
					
		IF bNewMag2 = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 1;
			IF p_tyDI.bMag2FixedUnclampRS = FALSE THEN
				bNewMag2	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk:= FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 0;
			END_IF
						
		ELSIF bRlsMag2 = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 1;
			IF p_tyNtParamCurr.eCustomerReq = Siemens  THEN
				IF p_bOpsMagConvUL2EjectMESStep  THEN //FOR MES
					bRlsMag2	:= FALSE;		
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk := FALSE;
					tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 0;
				END_IF	
			ELSIF p_tyDI.bMag2FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen2 = FALSE THEN
				bRlsMag2	:= FALSE;		
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk := FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 0;
			END_IF
		
		ELSIF p_bAlarmErr THEN
			bNewMag2	:= FALSE;
			bRlsMag2	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk:= FALSE;
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := 0;
		END_IF	
		
		IF p_tyDI.bMagPresentSen2 AND p_tyDI.bMagConvEntSen2 = FALSE THEN
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiTxtIdx := 32;
		ELSE
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiTxtIdx := 7;
		END_IF
	
		IF (p_bOpsMagConvUL2NewMagAllw AND p_tyBuffer2BffrStat.bBffrMty) 
			OR p_bOpsMagConvUL2RlsMagAllw 
			OR p_bBufferMagRemoved2
			THEN //AND p_tyDI.bOutShutterCloseRS
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.uiMaskRtStat));
		ELSE	
			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.uiMaskRtStat));
		END_IF
	


	END_IF
	
END_ACTION
