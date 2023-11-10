

ACTION Act_OptP0202UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
//		IF p_tyNtParamCurr.bProjMag1ConvPrep = FALSE THEN
//			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue	:= p_sOpsMagUL1StepTxt;
//		ELSE
//			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvUL1StepTxt;
//		END_IF
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue		:= p_sOpsLifMagULStepTxt;
		ELSE
			tyP0202OpsMag1.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvUL1StepTxt;
		END_IF
			
	END_IF
	
	
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0202OpsMag1.tyOps.tyNumWidth.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0202OpsMag1.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0202OpsMag1.tyOps.tyNumWidth.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0202OpsMag1.tyOps.tyNumWidth2.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	IF p_bMcParamAutoRcpDisable THEN
		tyP0202OpsMag1.tyOps.tyTxtMod.usiValueIdx		:= p_tyProdRcpCurrRcp2.usiMcMod; 		//Mode
		tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0202OpsMag1.tyOps.tyBtnToptoBtm.bValue		:= p_tyProdRcpCurrRcp2.bTopToBtm;
		tyP0202OpsMag1.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
		tyP0202OpsMag1.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
	ELSE  //FALSE AutoRcp Mode
		tyP0202OpsMag1.tyOps.tyTxtMod.usiValueIdx		:= p_tyProdRcpCurrRcp0.usiMcMod; 		//Mode
		
		tyP0202OpsMag1.tyOps.tyNumMinSltRange.diValue	:= pa_tyMagProps[1].diMinSlt;
		tyP0202OpsMag1.tyOps.tyNumMaxSltRange.diValue	:= pa_tyMagProps[1].diMaxSlt;
		tyP0202OpsMag1.tyOps.tyBtnToptoBtm.bValue		:= p_tyProdRcpCurrRcp0.bTopToBtm;
		tyP0202OpsMag1.tyOps.tyNumPitch.diValue			:= pa_tyMagProps[1].diPitch;
		IF p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededBySelf THEN
			tyP0202OpsMag1.tyOps.tyStringProdNm.sValue	:= pa_tyAutoRcpBrdProps[1].sProductTypeId;
		ELSIF p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededByF1 THEN
			tyP0202OpsMag1.tyOps.tyStringProdNm.sValue	:= pa_tyMagProps[1].sRcpNm;
		END_IF
	END_IF
	//Magazine Info
	tyP0202OpsMag1.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer1MagPresent = TRUE THEN
		IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_iOpsMagConvUL1MESAcptCond <= 0 AND  p_tyMcParamCurr.bMESEn THEN 
			tyP0202OpsMag1.tyOps.tyNumMag1AvlQty.diValue	:= 0;
			tyP0202OpsMag1.tyOps.tyNumMag1TtlSlt.diValue	:= 0;
		ELSE
			tyP0202OpsMag1.tyOps.tyNumMag1AvlQty.diValue	:= p_tyBuffer1BffrStat.diTtlBrdCap - (p_tyBuffer1BffrStat.diTtlGdBrd + p_tyBuffer1BffrStat.diTtlBadBrd);
			tyP0202OpsMag1.tyOps.tyNumMag1TtlSlt.diValue	:= p_tyBuffer1BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0202OpsMag1.tyOps.tyNumMag1AvlQty.diValue	:= 0;
		tyP0202OpsMag1.tyOps.tyNumMag1TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer1MagPresent = TRUE THEN
		
		IF p_tyBuffer1BffrStat.bBffrFull = TRUE THEN
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 2;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 1;
		ELSIF p_tyBuffer1BffrStat.bBffrMty = TRUE THEN
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 1;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 0;
		ELSE
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 3;
			tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiValueIdx := 0;
		tyP0202OpsMag1.tyOps.tyTxtMag1Stat.usiColor	   := 1;
	END_IF	
	
	//Product Recipe 254
	tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0202OpsMag1.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0202OpsMag1.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0202OpsMag1.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0202OpsMag1.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0202OpsMag1.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0202OpsMag1.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
	
END_ACTION
