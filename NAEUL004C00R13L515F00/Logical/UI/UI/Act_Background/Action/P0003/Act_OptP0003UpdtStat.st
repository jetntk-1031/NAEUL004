
ACTION Act_OptP0003UpdtStat:
	
	IF p_bOpsStatusRun THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 20;	
	ELSIF p_bOpsStatusCycleStop THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 21;	
	ELSIF p_bAlarmErr THEN
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 22;
	ELSE
		tyP0003MMenu.tyMMenuGen.tyStatusTxt.usiValueIdx := 23;
	END_IF

	//SMEMA Indicator
	IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm1.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiMaskRtStat));
		IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
			IF p_bUSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
			IF p_bUSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiMaskRtStat));
			END_IF
		END_IF
	ELSE
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm.uiMaskRtStat));
		IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
			IF p_bUSHermesAConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSAComm1.uiMaskRtStat));
			END_IF
		END_IF
		
		IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
			fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiMaskRtStat));
		ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
			IF p_bUSHermesBConnected = TRUE THEN
				fUIInRtStatHide(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiMaskRtStat));
			ELSE
				fUIInRtStatOff(ADR(tyP0003MMenu.tyMMenuGen.tyBitmapUSBComm1.uiMaskRtStat));
			END_IF
		END_IF
	END_IF
	//USB A
	IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			
			IF p_bUSSMEMAADSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.usiValueIdx	:= 0;
			END_IF
		ELSE
			IF p_bUSSMEMAADSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.usiValueIdx	:= 0;
			END_IF
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesADSRdy = TRUE THEN
				IF p_bUSHermesADSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesADSRdy = TRUE THEN
				IF p_bUSHermesADSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSOut1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	//UBA A
	IF p_tyMcParamCurr.eUSCommA = McSetCommModSMEMA THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSSMEMAAUSRdy = TRUE THEN
				IF p_bUSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSSMEMAAUSRdy = TRUE THEN
				IF p_bUSSMEMAAUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommA = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesAUSRdy = TRUE THEN
				IF p_bUSHermesAUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesAUSRdy = TRUE THEN
				IF p_bUSHermesAUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSIn1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF

	
	//USB B
	IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			
			IF p_bUSSMEMABDSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.usiValueIdx	:= 0;
			END_IF
			
		ELSE
			
			IF p_bUSSMEMABDSRdy = TRUE THEN
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.usiValueIdx	:= 1;
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.usiValueIdx	:= 0;
			END_IF
		
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL THEN
			IF p_bUSHermesBDSRdy = TRUE THEN
				IF p_bUSHermesBDSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesBDSRdy = TRUE THEN
				IF p_bUSHermesBDSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBOut1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	//UBA B
	IF p_tyMcParamCurr.eUSCommB = McSetCommModSMEMA THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSSMEMABUSRdy = TRUE THEN
				IF p_bUSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSSMEMABUSRdy = TRUE THEN
				IF p_bUSSMEMABUSGdBrdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx		:= 0;
			END_IF	
		END_IF
		
	ELSIF p_tyMcParamCurr.eUSCommB = McSetCommModHermes THEN
		
		IF p_tyNtParamCurr.bUIConvDirRL = FALSE THEN
			IF p_bUSHermesBUSRdy = TRUE THEN
				IF p_bUSHermesBUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn.usiValueIdx		:= 0;
			END_IF
		ELSE
			IF p_bUSHermesBUSRdy = TRUE THEN
				IF p_bUSHermesBUSGdRdy = TRUE THEN
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx	:= 1;
				ELSE
					tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx	:= 2;
				END_IF
			ELSE
				tyP0003MMenu.tyMMenuGen.tyBitmapUSBIn1.usiValueIdx		:= 0;
			END_IF
		END_IF
		
	END_IF
	
	
	//Current last zone product recipe name
	
	tyP0003MMenu.tyMMenuGen.tyStringProdNm.sValue := p_tyProdRcpCurrRcp1.sRcpNm;
	

	
	

END_ACTION
