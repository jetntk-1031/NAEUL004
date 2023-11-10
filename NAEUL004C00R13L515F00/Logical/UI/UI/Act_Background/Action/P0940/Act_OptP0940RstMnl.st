
ACTION Act_OptP0940RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eUSSMEMAAStatus = Error)) THEN
		eUSSMEMAAAct	:= SMEMAActIdle;
		
		tyP0940CommCtrl.tyUSSMEMAA.tyBtnUSB.bValue	:= FALSE;
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eUSSMEMABStatus = Error)) THEN
		eUSSMEMABAct	:= SMEMAActIdle;
		
		tyP0940CommCtrl.tyUSSMEMAB.tyBtnUSB.bValue	:= FALSE;
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN
		tyP0940CommCtrl.tySOT.tyBtnMagErr1.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagErr2.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagErr3.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagErr4.bValue := FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnMagRdy1.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagRdy2.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagRdy3.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagRdy4.bValue := FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnMagAvail1.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagAvail2.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagAvail3.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagAvail4.bValue := FALSE;
		
		tyP0940CommCtrl.tySOT.tyBtnMagSLarge1.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagSLarge2.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagSLarge3.bValue := FALSE;
		tyP0940CommCtrl.tySOT.tyBtnMagSLarge4.bValue := FALSE;
		
		bSOTMagErr1 := FALSE;
		bSOTMagErr2 := FALSE;
		bSOTMagErr3 := FALSE;
		bSOTMagErr4 := FALSE;
		
		bSOTMagRdy1 := FALSE;
		bSOTMagRdy2 := FALSE;
		bSOTMagRdy3 := FALSE;
		bSOTMagRdy4 := FALSE;
		
		bSOTMagAvail1 := FALSE;
		bSOTMagAvail2 := FALSE;
		bSOTMagAvail3 := FALSE;
		bSOTMagAvail4 := FALSE;
		
		bSOTMagSLarge1 := FALSE;
		bSOTMagSLarge2 := FALSE;
		bSOTMagSLarge3 := FALSE;
		bSOTMagSLarge4 := FALSE;
		
		bAIVReqBring1 := FALSE;
		bAIVReqBring2 := FALSE;
		bAIVReqBring3 := FALSE;
		bAIVReqBring4 := FALSE;
		
		bAIVReqGet1 := FALSE;
		bAIVReqGet2 := FALSE;
		bAIVReqGet3 := FALSE;
		bAIVReqGet4 := FALSE;
		
		bStartScanSig := FALSE;
		bPCBExitMag1 := FALSE;
		bPCBExitMag2 := FALSE;
		bPCBExitMag3 := FALSE;
	END_IF
	
END_ACTION
