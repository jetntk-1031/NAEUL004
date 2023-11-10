
ACTION Act_OptP0910WriteDO:
	
	//TL Safety Relay
	IF tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bValue = TRUE THEN
			eRstErrAct	:= RstErrActSetSafetyRlyRst;
			
			IF p_eRstErrStat = RstErrActSetSafetyRlyRst AND p_eRstErrStatus = Done THEN	
				eRstErrAct	:= RstErrActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eRstErrAct	:= RstErrActRstSafetyRlyRst;
		
			IF p_eRstErrStat = RstErrActRstSafetyRlyRst AND p_eRstErrStatus = Done THEN	
				eRstErrAct	:= RstErrActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnSafetyRst.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	// TL Green
	IF tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLGreen.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetGreen;
			
			IF p_eTLBuzStat = TLBuzActSetGreen AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstGreen;
		
			IF p_eTLBuzStat = TLBuzActRstGreen AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLGreen.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//TL Amber
	IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLAmber.bValue = TRUE THEN
			IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
				eTLBuzAct	:= TLBuzActSetWhite;
				IF p_eTLBuzStat = TLBuzActSetWhite AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
				END_IF
			ELSE
				eTLBuzAct	:= TLBuzActSetAmber;	
				IF p_eTLBuzStat = TLBuzActSetAmber AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF
			END_IF
		ELSE	
			IF p_tyNtParamCurr.eCustomerReq = Siemens THEN
				eTLBuzAct	:= TLBuzActRstWhite;
				IF p_eTLBuzStat = TLBuzActRstWhite AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
			ELSE
				eTLBuzAct	:= TLBuzActRstAmber;
				IF p_eTLBuzStat = TLBuzActRstAmber AND p_eTLBuzStatus = Done THEN	
					eTLBuzAct	:= TLBuzActIdle;
					
					tyP0910GenOut.tyGenOut.tyBtnTLAmber.bRtCompl	:= FALSE;
				END_IF	
			END_IF
		END_IF
	END_IF
	
	//TL Red
	IF tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnTLRed.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetRed;
			
			IF p_eTLBuzStat = TLBuzActSetRed AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstRed;
		
			IF p_eTLBuzStat = TLBuzActRstRed AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnTLRed.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//TL Buzzer
	IF tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyGenOut.tyBtnBuzzer.bValue = TRUE THEN
			eTLBuzAct	:= TLBuzActSetBuz;
			
			IF p_eTLBuzStat = TLBuzActSetBuz AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eTLBuzAct	:= TLBuzActRstBuz;
		
			IF p_eTLBuzStat = TLBuzActRstBuz AND p_eTLBuzStatus = Done THEN	
				eTLBuzAct	:= TLBuzActIdle;
				
				tyP0910GenOut.tyGenOut.tyBtnBuzzer.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//Oven Info A
	IF tyP0910GenOut.tyOven.tyBtnOvenInfoA.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyOven.tyBtnOvenInfoA.bValue = TRUE THEN
			eOvenInfoAAct	:= OvenInfoActSetOvenAllow;
			
			IF p_eOvenInfoAStat = OvenInfoActSetOvenAllow AND p_eOvenInfoAStatus = Done THEN
				eOvenInfoAAct	:= OvenInfoActIdle;
				
				tyP0910GenOut.tyOven.tyBtnOvenInfoA.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eOvenInfoAAct	:= OvenInfoActRstOvenAllow;
		
			IF p_eOvenInfoAStat = OvenInfoActRstOvenAllow AND p_eOvenInfoAStatus = Done THEN
				eOvenInfoAAct	:= OvenInfoActIdle;
				
				tyP0910GenOut.tyOven.tyBtnOvenInfoA.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//Oven Info B
	IF tyP0910GenOut.tyOven.tyBtnOvenInfoB.bRtCompl = TRUE THEN
		IF tyP0910GenOut.tyOven.tyBtnOvenInfoB.bValue = TRUE THEN
			eOvenInfoBAct	:= OvenInfoActSetOvenAllow;
			
			IF p_eOvenInfoBStat = OvenInfoActSetOvenAllow AND p_eOvenInfoBStatus = Done THEN	
				eOvenInfoBAct	:= OvenInfoActIdle;
				
				tyP0910GenOut.tyOven.tyBtnOvenInfoB.bRtCompl	:= FALSE;
			END_IF	
		ELSE	
			eOvenInfoBAct	:= OvenInfoActRstOvenAllow;
		
			IF p_eOvenInfoBStat = OvenInfoActRstOvenAllow AND p_eOvenInfoBStatus = Done THEN	
				eOvenInfoBAct	:= OvenInfoActIdle;
				
				tyP0910GenOut.tyOven.tyBtnOvenInfoB.bRtCompl	:= FALSE;
			END_IF	
			
		END_IF
	END_IF
	
	//Bypass Open Limit Sen 
	IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp1.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp1.bValue = TRUE THEN
			bMagAWOpenLimByp1 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp1.bRtCompl := FALSE;
		ELSE
			bMagAWOpenLimByp1 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp1.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp2.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp2.bValue = TRUE THEN
			bMagAWOpenLimByp2 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp2.bRtCompl := FALSE;
		ELSE
			bMagAWOpenLimByp2 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp2.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp3.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp3.bValue = TRUE THEN
			bMagAWOpenLimByp3 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp3.bRtCompl := FALSE;
		ELSE
			bMagAWOpenLimByp3 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp3.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp4.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp4.bValue = TRUE THEN
			bMagAWOpenLimByp4 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp4.bRtCompl := FALSE;
		ELSE
			bMagAWOpenLimByp4 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnMagAWOpenLimByp4.bRtCompl := FALSE;
		END_IF
	END_IF
	
	
	//Select Small Mag Open Limit Sen
	IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen1.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen1.bValue = TRUE THEN
			bSmallMagLimSen1 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen1.bRtCompl := FALSE;
		ELSE
			bSmallMagLimSen1 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen1.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen2.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen2.bValue = TRUE THEN
			bSmallMagLimSen2 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen2.bRtCompl := FALSE;
		ELSE
			bSmallMagLimSen2 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen2.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen3.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen3.bValue = TRUE THEN
			bSmallMagLimSen3 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen3.bRtCompl := FALSE;
		ELSE
			bSmallMagLimSen3 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen3.bRtCompl := FALSE;
		END_IF
	END_IF
	
	IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen4.bRtCompl = TRUE THEN
		
		IF tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen4.bValue = TRUE THEN
			bSmallMagLimSen4 := TRUE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen4.bRtCompl := FALSE;
		ELSE
			bSmallMagLimSen4 := FALSE;
			tyP0910GenOut.tyMagAW.tyBtnSmallMagAWLimSen4.bRtCompl := FALSE;
		END_IF
	END_IF
	
//	IF tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl = TRUE THEN
//			
//		IF tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bValue = TRUE THEN
//			bSafetyCurtainReset := TRUE;
//			tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl := FALSE;
//		ELSE
//			bSafetyCurtainReset := FALSE;
//			tyP0910GenOut.tyGenOutCurtainSen.tyBtnRstCurtainSen.bRtCompl := FALSE;
//		END_IF
//	END_IF
	
	bBypCurtainPBLED	:= tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSenPBLED.bValue;
	bBypCurtainSen		:= tyP0910GenOut.tyGenOutCurtainSen.tyBtnBypCurtainSen.bValue;
	
	
END_ACTION
