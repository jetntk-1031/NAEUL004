
ACTION Act_OptP0202_P0003AIVDat: 
	
	//Show Change Mag Button only in Manual Exchane Mode 
	// insert and remove temporaray replace change magazine button
	tyP0202OpsMag1.tyOps.tyBtnChgMag.uiRtStat.0 := (p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform) (*OR (p_tyNtParamCurr.bProjBtnInsertRmvMag = FALSE)*);
	tyP0202OpsMag1.tyOps.tyBitmapChgMag.uiRtStat.0 := p_tyMcParamCurr.eMagExMode = McSetMagXcAutoMode  AND p_tyMcParamCurr.eAGVComProtocol <> McSetAGVCommDisabled OR p_tyNtParamCurr.bProjLifterMagPlatform (*OR (p_tyNtParamCurr.bProjBtnInsertRmvMag = FALSE)*);

	//LED Wifi
	tyP0202OpsMag1.tyOps.tyBtnAIVWifi.bValue	:= p_bAGVOnline;
	
	//Change Magazine
	IF p_tyNtParamCurr.bProjBtnInsertRmvMag = TRUE THEN
		
		
		IF EDGENEG(p_bOpsStatusRun) THEN
			bNewMag1	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtLk    := FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtCompl := FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue			:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bValue	:= FALSE;
		END_IF
				
		IF tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl = TRUE OR tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtCompl THEN
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtCompl	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtCompl := FALSE;
			bNewMag1	:= p_bOpsMagConvUL1NewMagAllw;
			bRlsMag1	:= p_bOpsMagConvUL1RlsMagAllw;
		END_IF
				
	
		IF bNewMag1 = TRUE THEN
			tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 1;
			IF p_tyDI.bMag1FixedUnclampRS = FALSE THEN
				bNewMag1	:= FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bValue := FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtLk:= FALSE;
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 0;
			END_IF
						
		ELSIF bRlsMag1 = TRUE THEN
			tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 1;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 1;
			IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
				IF p_bOpsMagConvUL1EjectMESStep THEN //(p_bOpsMagConvUL1EjectMESStep AND p_bOpsMagConvUL1EjectMagNotAllw) 
					//OR THEN //FOR MES
					bRlsMag1	:= FALSE;		
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bValue := FALSE;
					tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtLk:= FALSE;
					tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
					tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 0;
				END_IF
			ELSIF p_tyDI.bMag1FixedUnclampRS = TRUE AND p_tyDI.bMagPresentSen1 = FALSE  THEN //for Siemen testing
				bRlsMag1	:= FALSE;		
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bValue := FALSE;
				tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtLk:= FALSE;
				tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
				tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 0;
			END_IF
		
		ELSIF p_bAlarmErr THEN
			bNewMag1	:= FALSE;
			bRlsMag1	:= FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bValue	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bValue := FALSE;
			tyP0202OpsMag1.tyOps.tyBtnChgMag.bRtLk	:= FALSE;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.bRtLk:= FALSE;
			tyP0202OpsMag1.tyOps.tyBitmapChgMag.usiValueIdx	:= 0;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiBitmapIdx := 0;
		END_IF
	
		
		IF p_tyDI.bMagPresentSen1 AND p_tyDI.bMagConvEntSen1 = FALSE THEN
			tyP0202OpsMag1.tyOps.tyBtnChgMag.usiTxtIdx	:= 1;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiTxtIdx := 31;
		ELSE
			tyP0202OpsMag1.tyOps.tyBtnChgMag.usiTxtIdx	:= 0;
			tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.usiTxtIdx := 6;
		END_IF
		

		
		IF (p_bOpsMagConvUL1NewMagAllw AND p_tyBuffer1BffrStat.bBffrMty) 
			OR p_bOpsMagConvUL1RlsMagAllw 
			OR p_bBufferMagRemoved1
			THEN //AND p_tyDI.bOutShutterCloseRS
			fUIInRtStatHide(ADR(tyP0202OpsMag1.tyOps.tyBtnChgMag.uiMaskRtStat));
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.uiMaskRtStat));
		ELSE	
			fUIInRtStatOff(ADR(tyP0202OpsMag1.tyOps.tyBtnChgMag.uiMaskRtStat));
			fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuBtn.tyBtnRlsNewMag1.uiMaskRtStat));
		END_IF	
		
		

	END_IF
	
END_ACTION
