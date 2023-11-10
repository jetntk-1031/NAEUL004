
ACTION Act_OptP0933PusherConvDC: 
	
	//Conveyor
	IF tyP0933PushConv.tyDC.tyBtnStop.bRtCompl = TRUE THEN	
		ePshrConvAct	:= ConvActStop;
	//	eMtrPshrAct	:= MtrPshrActStop;
		
		IF (p_ePshrConvStat = ConvActStop AND p_ePshrConvStatus = Done)
	//		AND	(p_eMtrPshrStat = MtrPshrActStop AND p_eMtrPshrStatus = Done) 
			THEN
		
	//		eMtrPshrAct	:= MtrPshrActIdle;
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0933PushConv.tyDC.tyBtnStop.bValue		:= TRUE;
			tyP0933PushConv.tyDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0933PushConv.tyDC.tyBtnStart.bRtCompl	:= FALSE;
			tyP0933PushConv.tyDC.tyBtnStart.bValue		:= FALSE;
			tyP0933PushConv.tyDC.tyBtnStart.bRtLk		:= FALSE;
		END_IF	
		
	ELSIF tyP0933PushConv.tyDC.tyBtnStart.bRtCompl = TRUE THEN	
		tyP0933PushConv.tyDC.tyBtnStart.bValue	:= TRUE;
		tyP0933PushConv.tyDC.tyBtnStart.bRtLk	:= TRUE;
		
		tyP0933PushConv.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0933PushConv.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		ePshrConvAct	:= ConvActSetMtrSigOnOrLToR;
		
		IF p_ePshrConvStat = ConvActSetMtrSigOnOrLToR AND p_ePshrConvStatus = Done THEN
			ePshrConvAct	:= ConvActIdle;
			
			tyP0933PushConv.tyDC.tyBtnStart.bRtCompl	:= FALSE;
		END_IF	
		
	END_IF
	
	//Pusher
	IF tyP0933PushConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
		
		IF p_bPshrConvPshrTwoOutputCtrl = FALSE THEN
			
			IF tyP0933PushConv.tyDC.tyBtnRet.bRtCompl = TRUE THEN
				tyP0933PushConv.tyDC.tyBtnRet.bValue	:= TRUE;
				tyP0933PushConv.tyDC.tyBtnExt.bValue	:= FALSE;
				
				ePshrConvAct	:= ConvActPshrSetRet;
				
				IF p_ePshrConvStat = ConvActPshrSetRet AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					
					tyP0933PushConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0933PushConv.tyDC.tyBtnExt.bRtCompl = TRUE THEN
				tyP0933PushConv.tyDC.tyBtnExt.bValue	:= TRUE;
				tyP0933PushConv.tyDC.tyBtnRet.bValue	:= FALSE;
				
				ePshrConvAct	:= ConvActPshrSetExt;
				
				IF p_ePshrConvStat = ConvActPshrSetExt AND p_ePshrConvStatus = Done THEN
					ePshrConvAct	:= ConvActIdle;
					
					tyP0933PushConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
		ELSE
			
			IF (tyP0933PushConv.tyDC.tyBtnRet.bRtCompl = TRUE) OR (tyP0933PushConv.tyDC.tyBtnExt.bRtCompl = TRUE) THEN
				IF (tyP0933PushConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PushConv.tyDC.tyBtnExt.bValue = TRUE) THEN
					ePshrConvAct	:= ConvActPshrSetAll;
					
					IF p_ePshrConvStat = ConvActPshrSetAll AND p_ePshrConvStatus = Done THEN
						ePshrConvAct	:= ConvActIdle;
						
						tyP0933PushConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0933PushConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0933PushConv.tyDC.tyBtnRet.bValue = TRUE) AND (tyP0933PushConv.tyDC.tyBtnExt.bValue = FALSE) THEN
					ePshrConvAct	:= ConvActPshrSetRet;
					
					IF p_ePshrConvStat = ConvActPshrSetRet AND p_ePshrConvStatus = Done THEN
						ePshrConvAct	:= ConvActIdle;
						
						tyP0933PushConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0933PushConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0933PushConv.tyDC.tyBtnRet.bValue = FALSE) AND (tyP0933PushConv.tyDC.tyBtnExt.bValue = TRUE) THEN
					ePshrConvAct	:= ConvActPshrSetExt;
					
					IF p_ePshrConvStat = ConvActPshrSetExt AND p_ePshrConvStatus = Done THEN
						ePshrConvAct	:= ConvActIdle;
						
						tyP0933PushConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0933PushConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				ELSE
					ePshrConvAct	:= ConvActPshrRstAll;
					
					IF p_ePshrConvStat = ConvActPshrRstAll AND p_ePshrConvStatus = Done THEN
						ePshrConvAct	:= ConvActIdle;
						
						tyP0933PushConv.tyDC.tyBtnRet.bRtCompl	:= FALSE;
						tyP0933PushConv.tyDC.tyBtnExt.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
			END_IF
			
		END_IF
		
		tyP0933PushConv.tyFB.tyBtnExt.bRtCompl	:= FALSE;
		tyP0933PushConv.tyFB.tyBtnExt.bValue	:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bRtCompl	:= FALSE;
		tyP0933PushConv.tyFB.tyBtnRet.bValue	:= FALSE;
		
	END_IF
	
	//For Motorized Puller
	IF tyP0933PushConv.tyDC.tyBtnAlarmRst.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnAlarmRst.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetAlmRst;
			
			IF p_eMtrPshrStat = MtrPshrActSetAlmRst AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnAlarmRst.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstAlmRst;
			
			IF p_eMtrPshrStat = MtrPshrActRstAlmRst AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnAlarmRst.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PushConv.tyDC.tyBtnBrake.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnBrake.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetBrake;
			
			IF p_eMtrPshrStat = MtrPshrActSetBrake AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnBrake.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstBrake;
			
			IF p_eMtrPshrStat = MtrPshrActRstBrake AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnBrake.bRtCompl	:= FALSE;
			END_IF
		END_IF
		

		
	ELSIF tyP0933PushConv.tyDC.tyBtnSigOn.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnSigOn.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSigOn;
			
			IF p_eMtrPshrStat = MtrPshrActSetSigOn AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSigOn.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSigOn;
			
			IF p_eMtrPshrStat = MtrPshrActRstSigOn AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSigOn.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit0;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit0 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit0;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit0 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit0.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit1;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit1 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit1;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit1 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit1.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	ELSIF tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bRtCompl = TRUE THEN
		
		IF tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bValue = TRUE THEN
			eMtrPshrAct	:= MtrPshrActSetSpdBit2;
			
			IF p_eMtrPshrStat = MtrPshrActSetSpdBit2 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bRtCompl	:= FALSE;
			END_IF
		ELSE
			eMtrPshrAct	:= MtrPshrActRstSpdBit2;
			
			IF p_eMtrPshrStat = MtrPshrActRstSpdBit2 AND p_eMtrPshrStatus = Done THEN
				eMtrPshrAct	:= MtrPshrActIdle;
				
				tyP0933PushConv.tyDC.tyBtnSpdBinBit2.bRtCompl	:= FALSE;
			END_IF
		END_IF
		
	END_IF
	
	//Mask
	IF p_ePshrConvStatus = Error THEN
		
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnRet.uiMaskRtStat));
		
	ELSIF tyP0933PushConv.tyDC.tyBtnStart.bValue = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnRet.uiMaskRtStat));
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyBtnStart.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0933PushConv.tyDC.tyBtnRet.uiMaskRtStat));
		
	END_IF
	
	//Mask
	//	tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error OR tyP0933PushConv.tyDC.tyBtnRet.bValue);
	tyP0933PushConv.tyDC.tyBtnRet.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error OR tyP0933PushConv.tyDC.tyBtnExt.bValue);
	tyP0933PushConv.tyDC.tyBtnSigOn.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PushConv.tyDC.tyBtnAlarmRst.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PushConv.tyDC.tyBtnBrake.uiMaskRtStat.0		:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PushConv.tyDC.tyBtnSpdBinBit0.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PushConv.tyDC.tyBtnSpdBinBit1.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	tyP0933PushConv.tyDC.tyBtnSpdBinBit2.uiMaskRtStat.0	:= NOT(p_eMtrPshrStatus = Error);
	
	IF p_bLifterBtmSltAPosDiff OR (p_bTravDPosDiff AND p_bTravEPosDiff AND p_bTravFPosDiff)
		OR p_eMtrPshrStatus = Error
		THEN
		fUIInRtStatOff(ADR(tyP0933PushConv.tyDC.tyBtnExt.uiMaskRtStat));
	END_IF
	
END_ACTION
