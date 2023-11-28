
ACTION Act_OptP0203UpdtDat: 
	
	//Status
	fbMcStatUpdtTm(IN := TRUE);
	IF fbMcStatUpdtTm.Q = TRUE THEN
		fbMcStatUpdtTm(IN := FALSE);
		
//		IF p_tyNtParamCurr.bProjMag2ConvPrep = FALSE THEN
//			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue	:= p_sOpsMagUL2StepTxt;
//		ELSE
//			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvUL2StepTxt;
//		END_IF
		
		IF p_tyNtParamCurr.bProjLifterMagPlatform AND p_tyNtParamCurr.bProjMagConvLane2Prep THEN
			IF p_bOpsLifMagULStepIdle2 THEN
				tyP0203OpsMag2.tyOps.tyStringMcStat.sValue		:= p_sOpsLifMagULStepTxt; //main text
			ELSE
				tyP0203OpsMag2.tyOps.tyStringMcStat.sValue		:= p_sOpsLifMagULStepTxt1; //Lifter 2 text
			END_IF
		ELSIF p_tyNtParamCurr.bProjLifterMagPlatform THEN
			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue		:= p_sOpsLifMagULStepTxt;
		ELSE
			tyP0203OpsMag2.tyOps.tyStringMcStat.sValue	:= p_sOpsMagConvUL2StepTxt;
		END_IF
		
	END_IF
	
	
	
	
	//Width
	IF p_tyNtParamCurr.bAWPrep = TRUE AND p_tyMcParamCurr.bAWDis = FALSE THEN
		tyP0203OpsMag2.tyOps.tyNumWidth.diValue		:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
		tyP0203OpsMag2.tyOps.tyNumWidth2.diValue	:= p_tyMcParamCurr.diWidthAtHmPosInUM - p_diAWOpenActualPos;
	ELSE
		tyP0203OpsMag2.tyOps.tyNumWidth.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM;
		tyP0203OpsMag2.tyOps.tyNumWidth2.diValue		:= p_tyProdRcpCurrRcp1.diWidthInUM2;
	END_IF
	
	//Program Info
	
	IF p_bMcParamAutoRcpDisable OR p_bNtParamAutoRcpF1ArbitraryType THEN
		tyP0203OpsMag2.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp2.usiMcMod;
		tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0203OpsMag2.tyOps.tyBtnToptoBtm.bValue		:= p_tyProdRcpCurrRcp2.bTopToBtm;
		tyP0203OpsMag2.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
		tyP0203OpsMag2.tyOps.tyStringProdNm.sValue		:= p_tyProdRcpCurrRcp2.sRcpNm;
	ELSE  //FALSE AutoRcp Mode
		tyP0203OpsMag2.tyOps.tyTxtMod.usiValueIdx	:= p_tyProdRcpCurrRcp0.usiMcMod;
		tyP0203OpsMag2.tyOps.tyNumMinSltRange.diValue	:= pa_tyMagProps[2].diMinSlt;
		tyP0203OpsMag2.tyOps.tyNumMaxSltRange.diValue	:= pa_tyMagProps[2].diMaxSlt;
		tyP0203OpsMag2.tyOps.tyBtnToptoBtm.bValue		:= p_tyProdRcpCurrRcp0.bTopToBtm;
		tyP0203OpsMag2.tyOps.tyNumPitch.diValue			:= pa_tyMagProps[2].diPitch;
		IF p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededBySelf THEN
			tyP0203OpsMag2.tyOps.tyStringProdNm.sValue		:= pa_tyAutoRcpBrdProps[2].sProductTypeId;
		ELSIF p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededByF1 THEN
			tyP0203OpsMag2.tyOps.tyStringProdNm.sValue		:= pa_tyMagProps[2].sRcpNm;
		END_IF
	END_IF	

	//Magazine Info
	tyP0203OpsMag2.tyOps.tyStringMagNm.sValue	:= p_tyMagRcpCurrRcp.sRcpNm;
	
	IF p_bBuffer2MagPresent = TRUE THEN
		IF p_tyNtParamCurr.eCustomerReq = Siemens AND p_iOpsMagConvUL2MESAcptCond <= 0 AND  p_tyMcParamCurr.bMESEn THEN 
			tyP0203OpsMag2.tyOps.tyNumMag2AvlQty.diValue	:= 0;
			tyP0203OpsMag2.tyOps.tyNumMag2TtlSlt.diValue	:= 0;
		ELSE
			tyP0203OpsMag2.tyOps.tyNumMag2AvlQty.diValue	:= p_tyBuffer2BffrStat.diTtlBrdCap - (p_tyBuffer2BffrStat.diTtlGdBrd + p_tyBuffer2BffrStat.diTtlBadBrd);
			tyP0203OpsMag2.tyOps.tyNumMag2TtlSlt.diValue	:= p_tyBuffer2BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0203OpsMag2.tyOps.tyNumMag2AvlQty.diValue	:= 0;
		tyP0203OpsMag2.tyOps.tyNumMag2TtlSlt.diValue	:= 0;
	END_IF
	
	//Magazine Present States
	IF p_bBuffer2MagPresent = TRUE THEN
		
		IF p_tyBuffer2BffrStat.bBffrFull = TRUE THEN
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 2;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 1;
		ELSIF p_tyBuffer2BffrStat.bBffrMty = TRUE THEN
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 1;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 0;
		ELSE
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 3;
			tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 0;
		END_IF
		
	ELSE
		tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiValueIdx := 0;
		tyP0203OpsMag2.tyOps.tyTxtMag2Stat.usiColor	   := 1;
	END_IF
	
	//Product Recipe 254
	tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.uiRtStat.0 := NOT(tyP0203OpsMag2.tyOps.tyStringProdNm.sValue <> '');
	
	IF tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyOps.tyHotspotShowLRcp.bRtCompl := FALSE;
		
		fUIInRtStatOff(ADR(tyP0203OpsMag2.tyRcpPopUp.tyLyr.uiRtStat));
		
		tyP0203OpsMag2.tyRcpPopUp.tyStringInfo.sValue  := p_tyProdRcpCurrRcp1.sRcpNm;
		
	ELSIF tyP0203OpsMag2.tyRcpPopUp.tyHotspotClose.bRtCompl = TRUE THEN
		tyP0203OpsMag2.tyRcpPopUp.tyHotspotClose.bRtCompl := FALSE;
		
		fUIInRtStatHide(ADR(tyP0203OpsMag2.tyRcpPopUp.tyLyr.uiRtStat));
		
	END_IF
	
END_ACTION
