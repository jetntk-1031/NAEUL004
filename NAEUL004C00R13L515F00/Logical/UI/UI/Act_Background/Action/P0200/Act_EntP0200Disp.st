
ACTION Act_EntP0200Disp:
	
	//Access Address
	p_tyC0005Main ACCESS ADR(tyCommon.tyMain);
	
	p_tyC0007Notif ACCESS ADR(tyCommon.tyNotif);
	
	p_tyC0008MsgBox ACCESS ADR(tyP0200OpsGen.tyMsgBoxHide);
	
	p_tyC0009Info ACCESS ADR(tyCommon.tyInfo);
	
	p_tyC0010RcyMsg ACCESS ADR(tyP0200OpsGen.tyRcyMsgHide);
	
	p_tyP0200OpsGen ACCESS ADR(tyP0200OpsGen.tyOps);
	p_tyP0200OpsOven ACCESS ADR(tyP0200OpsGen.tyOven);
	p_tyP0200OpsUSCommB ACCESS ADR(tyP0200OpsGen.tyUSCommB);
	p_tyP0200OpsUSAVSMEMA ACCESS ADR(tyP0200OpsGen.tyUSAVSMEMA);
	p_tyP0200OpsUSBVSMEMA ACCESS ADR(tyP0200OpsGen.tyUSBVSMEMA);
	p_tyP0200OpsUSAVSMEMA1 ACCESS ADR(tyP0200OpsGen.tyUSAVSMEMA1);
	p_tyP0200OpsUSBVSMEMA1 ACCESS ADR(tyP0200OpsGen.tyUSBVSMEMA1);
	p_tyP0200OpsBypsInitConv ACCESS ADR(tyP0200OpsGen.tyBypsInitConv);
	
	//Display
	tyP0200OpsGen.tyOven.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bOvenInfoPrep AND p_tyMcParamCurr.bOvenEn);
	
	//Communication - Upstream A
	IF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		tyP0200OpsGen.tyOps.tyBitmapUSAComm.usiValueIdx	:= 1;
		tyP0200OpsGen.tyOps.tyBitmapUSAComm1.usiValueIdx	:= 1;

	ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
		tyP0200OpsGen.tyOps.tyBitmapUSAComm.usiValueIdx	:= 0;
		tyP0200OpsGen.tyOps.tyBitmapUSAComm1.usiValueIdx	:= 0;

	END_IF
	
	//Communication - Upstream B
	IF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
		tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.usiValueIdx	:= 1;
		tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.usiValueIdx	:= 1;

	ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
		tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.usiValueIdx	:= 0;
		tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.usiValueIdx	:= 0;

	END_IF
	
	//Virtual SMEMA
	IF (p_tyUsrMgmtCurrUsr.eUsrLvl = UsrMgmtLvl1) OR p_tyNtParamCurr.bVSMEMAPrep = FALSE OR p_tyMcParamCurr.bVSMEMAEn = FALSE OR (p_tyMcParamCurr.eUSCommA = McSetCommModHermes AND p_tyMcParamCurr.eUSCommB = McSetCommModHermes) THEN
		
		tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bValue		:= FALSE;
		tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bValue	:= FALSE;
		tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bValue		:= FALSE;
		tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bValue	:= FALSE;
		
		memset(ADR(tyP0200OpsGen.tyUSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA));
		memset(ADR(tyP0200OpsGen.tyUSBVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA));
		memset(ADR(tyP0200OpsGen.tyUSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA1));
		memset(ADR(tyP0200OpsGen.tyUSBVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA1));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
		
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
		
		bVSMEMAUSAEn	:= FALSE;
		bVSMEMAUSBEn	:= FALSE;
		
	ELSE
		
		//Upstream A
		IF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
			tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bValue	:= FALSE;
			tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bValue	:= FALSE;
			
			memset(ADR(tyP0200OpsGen.tyUSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA));
			
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.uiRtStat));
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
			
			memset(ADR(tyP0200OpsGen.tyUSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA1));
			
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.uiRtStat));
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
			
		ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			
			IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
				tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.bValue	:= FALSE;
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnNom.uiRtStat));
				
				memset(ADR(tyP0200OpsGen.tyUSAVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA1));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyLyr.uiRtStat));
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.uiRtStat));
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.uiRtStat));
				//Stat & Dual
				IF p_tyMcParamCurr.tyUSCommASMEMA.eSelection = SMEMASelIPC9851Ext THEN
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.uiRtStat));
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.uiRtStat));
				ELSE
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.uiRtStat));
				END_IF
				
			ELSE
				
				tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.bValue	:= FALSE;
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnStat.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnDual.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyBtnNom.uiRtStat));
				
				memset(ADR(tyP0200OpsGen.tyUSAVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSAVSMEMA));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA.tyLyr.uiRtStat));
				
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotUSAVSMEMA1.uiRtStat));
				
				
				//Stat & Dual
				IF p_tyMcParamCurr.tyUSCommASMEMA.eSelection = SMEMASelIPC9851Ext THEN
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.uiRtStat));
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.uiRtStat));
				ELSE
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnStat.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSAVSMEMA1.tyBtnDual.uiRtStat));
				END_IF
				
			END_IF
			
		END_IF
		
		//Upstream B
		IF p_tyNtParamCurr.bProjLaneBPrep THEN
			IF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
				tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bValue	:= FALSE;
				tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bValue	:= FALSE;
				
				memset(ADR(tyP0200OpsGen.tyUSBVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA));
			
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
				
				memset(ADR(tyP0200OpsGen.tyUSBVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA1));
				
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.uiRtStat));
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
				
			ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			
				IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
					tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.bValue	:= FALSE;
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnNom.uiRtStat));
					
					memset(ADR(tyP0200OpsGen.tyUSBVSMEMA1), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA1));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyLyr.uiRtStat));
				
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.uiRtStat));
					
				
					//Stat & Dual
					IF p_tyMcParamCurr.tyUSCommBSMEMA.eSelection = SMEMASelIPC9851Ext THEN
						fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.uiRtStat));
						fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.uiRtStat));
					ELSE
						fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.uiRtStat));
						fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.uiRtStat));
					END_IF
				
				ELSE
					tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.bValue	:= FALSE;
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnStat.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnDual.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyBtnNom.uiRtStat));
					
					memset(ADR(tyP0200OpsGen.tyUSBVSMEMA), 0, SIZEOF(tyP0200OpsGen.tyUSBVSMEMA));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA.uiRtStat));
					fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA.tyLyr.uiRtStat));
				
					fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSCommB.tyHotspotUSBVSMEMA1.uiRtStat));
				
				
					//Stat & Dual
					IF p_tyMcParamCurr.tyUSCommBSMEMA.eSelection = SMEMASelIPC9851Ext THEN
						fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.uiRtStat));
						fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.uiRtStat));
					ELSE
						fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnStat.uiRtStat));
						fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSBVSMEMA1.tyBtnDual.uiRtStat));
					END_IF
				
				END_IF
			
			END_IF	
		
			
		END_IF
		
	END_IF
	
	
	//General Operations Arrow Dislay
	
	IF p_tyNtParamCurr.bUIConvDirRL THEN
		
		tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 1;	// <<--
		tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 1;	// <<--
	ELSE
		
		tyP0200OpsGen.tyOps.tyBitmapDir1.usiValueIdx	:= 0;	// -->>
		tyP0200OpsGen.tyOps.tyBitmapDir2.usiValueIdx	:= 0;	// -->>
	
	END_IF
	
	

	
	
	//Disable AIV function
	IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat));
		IF p_tyMcParamCurr.bAGVComEn = FALSE THEN
			//			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat));
			fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotAIVGroup1Mask.uiMaskRtStat));
		ELSE
			//			fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat));
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotAIVGroup1Mask.uiMaskRtStat));
		END_IF	
	ELSE
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotAIVGroup1Mask.uiMaskRtStat));
		IF p_tyMcParamCurr.bAGVComEn = FALSE THEN
			//	fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiRtStat));
			fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyHotspotOpsAIV.uiMaskRtStat));
		END_IF	
	END_IF
	
	
	
	//AutoRcp
	IF NOT(p_bMcParamAutoRcpDisable) AND p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededBySelf THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumPitch.uiRtStat)); 
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMinSltRange.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMaxSltRange.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumPitchRToL.uiRtStat)); 
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMinSltRangeRToL.uiRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyNumMaxSltRangeRToL.uiRtStat));
	ELSE  //PrecededByF1 OR p_bMcParamAutoRcpDisable
		tyP0200OpsGen.tyOps.tyNumPitch.uiRtStat.0 :=  p_tyNtParamCurr.bUIConvDirRL; 
		tyP0200OpsGen.tyOps.tyNumMinSltRange.uiRtStat.0 := p_tyNtParamCurr.bUIConvDirRL;
		tyP0200OpsGen.tyOps.tyNumMaxSltRange.uiRtStat.0 := p_tyNtParamCurr.bUIConvDirRL;
		tyP0200OpsGen.tyOps.tyNumPitchRToL.uiRtStat.0 :=  NOT(p_tyNtParamCurr.bUIConvDirRL); 
		tyP0200OpsGen.tyOps.tyNumMinSltRangeRToL.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL);
		tyP0200OpsGen.tyOps.tyNumMaxSltRangeRToL.uiRtStat.0 := NOT(p_tyNtParamCurr.bUIConvDirRL);
	END_IF

END_ACTION
