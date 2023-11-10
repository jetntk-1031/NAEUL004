
ACTION Act_OptP0200UpdtDat: 
	
	//PCB Status
	IF p_bPshrConvHvBrd = TRUE THEN
		IF p_bPshrConvGdBrd = TRUE THEN
			tyP0200OpsGen.tyOps.tyBitmapPCB.usiValueIdx	:= 1;
		ELSE
			tyP0200OpsGen.tyOps.tyBitmapPCB.usiValueIdx	:= 2;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyBitmapPCB.usiValueIdx	:= 0;
	END_IF
	
	//Communication - Mask
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.uiMaskRtStat));
		IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
			IF p_bUSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
			IF p_bUSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.uiMaskRtStat));
			END_IF
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm.uiMaskRtStat));
		IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
			IF p_bUSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyOps.tyBitmapUSAComm1.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
			IF p_bUSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0200OpsGen.tyUSCommB.tyBitmapUSBComm1.uiMaskRtStat));
			END_IF
		END_IF
	END_IF
	//Communication - Signal
	//USB A
	IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			
			IF p_bUSSMEMAADSRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapUSOut.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSOut.usiValueIdx	:= 0;
			END_IF
		ELSE
			IF p_bUSSMEMAADSRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapUSOut1.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSOut1.usiValueIdx	:= 0;
			END_IF
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesADSRdy = TRUE THEN
				IF p_bUSHermesADSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapUSOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapUSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSOut.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesADSRdy = TRUE THEN
				IF p_bUSHermesADSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapUSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapUSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSOut1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	//UBA A
	IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
		
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		IF p_bUSSMEMAAUSRdy = TRUE THEN
			IF p_bUSSMEMAAUSGdBrdRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx	:= 2;
			END_IF
		ELSE
			tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx		:= 0;
		END_IF
	ELSE
		IF p_bUSSMEMAAUSRdy = TRUE THEN
			IF p_bUSSMEMAAUSGdBrdRdy = TRUE THEN
				tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx	:= 2;
			END_IF
		ELSE
			tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx		:= 0;
		END_IF
	END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesAUSRdy = TRUE THEN
				IF p_bUSHermesAUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesAUSRdy = TRUE THEN
				IF p_bUSHermesAUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyOps.tyBitmapUSIn1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	//USB B
	IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			
			IF p_bUSSMEMABDSRdy = TRUE THEN
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut.usiValueIdx	:= 0;
			END_IF
			
		ELSE
			
			IF p_bUSSMEMABDSRdy = TRUE THEN
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut1.usiValueIdx	:= 1;
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut1.usiValueIdx	:= 0;
			END_IF
		
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL THEN
			IF p_bUSHermesBDSRdy = TRUE THEN
				IF p_bUSHermesBDSGdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSOut.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesBDSRdy = TRUE THEN
				IF p_bUSHermesBDSGdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSOut1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	//UBA B
	IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSSMEMABUSRdy = TRUE THEN
				IF p_bUSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSSMEMABUSRdy = TRUE THEN
				IF p_bUSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx		:= 0;
			END_IF	
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesBUSRdy = TRUE THEN
				IF p_bUSHermesBUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesBUSRdy = TRUE THEN
				IF p_bUSHermesBUSGdRdy = TRUE THEN
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0200OpsGen.tyUSCommB.tyBitmapUSIn1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF

	//Alarm
	IF NOT p_bAlarmErr THEN
		memset(ADR(tyUIAlmData.bAlm) , 0 , SIZEOF(tyUIAlmData.bAlm));
	END_IF 
	
	IF NOT p_bAlarmWarning THEN
		memset(ADR(tyUIAlmData.bWarning) , 0 , SIZEOF(tyUIAlmData.bWarning));
	ELSE 
		IF p_bUSHermesAConnected OR p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			tyUIAlmData.bWarning[3114] := FALSE;
		END_IF 
		IF p_bUSHermesBConnected OR p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			tyUIAlmData.bWarning[3281] := FALSE;
		END_IF 
	END_IF
	
	FOR i := 1 TO c_uiP0200TableSize DO
		IF p_bStartupUISettingsLoadDone THEN
			IF p_tyAlarmCurrList[i].eSeverity = AlmSeverityError THEN
				tyUIAlmData.bAlm[p_tyAlarmCurrList[i].udiErrorCode] := p_tyAlarmCurrList[i].bAlm;
			ELSIF p_tyAlarmCurrList[i].eSeverity = AlmSeverityWarning THEN
				tyUIAlmData.bWarning[p_tyAlarmCurrList[i].udiErrorCode] := p_tyAlarmCurrList[i].bWarning;
			END_IF
		END_IF
	END_FOR
	
	//Magazine Info
	IF NOT(p_tyNtParamCurr.bAutoRcpPrep) OR  ( p_tyNtParamCurr.bAutoRcpPrep AND  p_bMcParamAutoRcpDisable) THEN
		tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMinSltValue;
		tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_tyProdRcpCurrRcp2.diMaxSltValue;
		tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp2.diPitch;
	ELSIF p_tyNtParamCurr.eAutoRcpPrecededBy =  PrecededByF1 THEN
		tyP0200OpsGen.tyOps.tyNumMinSltRange.diValue	:= p_tyProdRcpCurrRcp1.diMinSltValue; //update immediately based on LCS Running Rcp
		tyP0200OpsGen.tyOps.tyNumMaxSltRange.diValue	:= p_tyProdRcpCurrRcp1.diMaxSltValue;
		tyP0200OpsGen.tyOps.tyNumPitch.diValue			:= p_tyProdRcpCurrRcp1.diPitch;
	END_IF
	
	//Mag1
	IF p_bBuffer1MagPresent = TRUE THEN
		IF (p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate)AND p_iOpsMagConvUL1MESAcptCond <= 0 AND p_tyMcParamCurr.bMESEn THEN 
			tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue	:= 0;
			tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue	:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue		:= p_tyBuffer1BffrStat.diTtlBrdCap - (p_tyBuffer1BffrStat.diTtlBadBrd + p_tyBuffer1BffrStat.diTtlGdBrd);
			tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue		:= p_tyBuffer1BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag1AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag1TtlSlt.diValue		:= 0;
	END_IF
	
	
	//Mag2
	IF p_bBuffer2MagPresent = TRUE THEN
		IF (p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate) AND p_iOpsMagConvUL2MESAcptCond <= 0 AND p_tyMcParamCurr.bMESEn THEN 
			tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue	:= 0;
			tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue		:= p_tyBuffer2BffrStat.diTtlBrdCap - (p_tyBuffer2BffrStat.diTtlBadBrd + p_tyBuffer2BffrStat.diTtlGdBrd);
			tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= p_tyBuffer2BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag2AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag2TtlSlt.diValue		:= 0;
	END_IF
	//Mag3
	IF p_bBuffer3MagPresent = TRUE THEN
		IF (p_tyNtParamCurr.eCustomerReq = Siemens OR p_tyNtParamCurr.eCustomerReq = We_Fabricate) AND p_iOpsMagConvUL3MESAcptCond <= 0 AND  p_tyMcParamCurr.bMESEn THEN 
			tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= 0;
			tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= 0;
		ELSE
			tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= p_tyBuffer3BffrStat.diTtlBrdCap - (p_tyBuffer3BffrStat.diTtlBadBrd + p_tyBuffer3BffrStat.diTtlGdBrd);
			tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= p_tyBuffer3BffrStat.diTtlBrdCap;
		END_IF
	ELSE
		tyP0200OpsGen.tyOps.tyNumMag3AvlQty.diValue		:= 0;
		tyP0200OpsGen.tyOps.tyNumMag3TtlSlt.diValue		:= 0;
	END_IF
	
	//Oven
	tyP0200OpsGen.tyOven.tyBtnCntrA.bValue				:= p_tyDI.bOvenInfeedSigA;
	tyP0200OpsGen.tyOven.tyBtnCntrB.bValue				:= p_tyDI.bOvenInfeedSigB;
	tyP0200OpsGen.tyOven.tyBtnOvenA.bValue				:= p_tyDO.bOvenInfoSigA;
	tyP0200OpsGen.tyOven.tyBtnOvenB.bValue				:= p_tyDO.bOvenInfoSigB;
	
	//AIV TCP Bitmap
	IF p_tyNtParamCurr.bProjTCPAGVSigPrep THEN 
		tyP0200OpsGen.tyOps.tyBitmapAIVTCP.usiValueIdx := BOOL_TO_USINT (p_bTCPConnected);
	END_IF
END_ACTION
