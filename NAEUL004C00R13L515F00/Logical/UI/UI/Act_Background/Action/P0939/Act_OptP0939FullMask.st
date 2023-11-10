
ACTION Act_OptP0939FullMask: 
	
	IF eCurrPage = UIP0939Lifter2 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bPusherExtRS = TRUE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskPshrInterrupt);
			
//		ELSIF p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterCloseRS = FALSE THEN
//			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskInShutOpnInterrupt);
			
		ELSIF p_tyNtParamCurr.bProjOutletShutPrep AND p_tyDI.bOutShutterCloseRS = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskOutShutOpnInterrupt);
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvClrSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskClrSenInterrupt);
			
		ELSIF p_tyDI.bLifterSafetyLmtSW1 = FALSE OR p_tyDI.bLifterSafetyLmtSW2 = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskSafetyLmtSW);
			
		ELSIF p_tyDI.bLifterTimingBeltSen = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskTimingBelt);
			
		ELSIF p_tyNtParamCurr.tyDISettings.diMag2FixedClampRS <> 0 AND p_tyDI.bMag2FixedClampRS = FALSE 
			AND p_tyDI.bMagPresentSen1 THEN
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskMagClmpInt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0939Lifter2.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
