
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
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl := FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue		:= FALSE;
		END_IF
				
		IF tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl THEN
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtCompl := FALSE;
			bNewMag2	:= p_bOpsMagConvUL2NewMagAllw;
			bRlsMag2	:= p_bOpsMagConvUL2RlsMagAllw;
		END_IF
				
	
					
		IF bNewMag2 = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyDI.bMag2FixedUnclampRS = FALSE THEN
				bNewMag2	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
						
		ELSIF bRlsMag2 = TRUE THEN
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;		
			IF p_tyNtParamCurr.eCustomerReq = Siemens  THEN
				IF p_bOpsMagConvUL2EjectMESStep  THEN //FOR MES
					bRlsMag2	:= FALSE;		
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				END_IF	
			ELSIF p_tyDI.bMag2FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen2 = FALSE THEN
				bRlsMag2	:= FALSE;		
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			END_IF
		
		ELSIF p_bAlarmErr THEN
			bNewMag2	:= FALSE;
			bRlsMag2	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
		END_IF	
		
		IF p_tyDI.bMagPresentSen2 AND p_tyDI.bMagConvEntSen2 = FALSE THEN
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
		ELSE
			tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
		END_IF
	
		IF (p_bOpsMagConvUL2NewMagAllw AND p_tyBuffer2BffrStat.bBffrMty) 
			OR p_bOpsMagConvUL2RlsMagAllw 
			OR p_bBufferMagRemoved2
			THEN //AND p_tyDI.bOutShutterCloseRS
			fUIInRtStatHide(ADR(tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat));
		ELSE	
			fUIInRtStatOff(ADR(tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat));
		END_IF
	
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bValue := tyP0203OpsMag2.tyOps.tyBtnChgMag.bValue;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.bRtLk := tyP0203OpsMag2.tyOps.tyBtnChgMag.bRtLk;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiTxtIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk2.usiTxtIdx + tyP0203OpsMag2.tyOps.tyBtnChgMag.usiTxtIdx;
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.usiBitmapIdx := tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMagBk2.usiBitmapIdx + 	tyP0203OpsMag2.tyOps.tyBitmapChgMag.usiValueIdx;	
		tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag2.uiMaskRtStat := tyP0203OpsMag2.tyOps.tyBtnChgMag.uiMaskRtStat ;

	END_IF
	
END_ACTION
