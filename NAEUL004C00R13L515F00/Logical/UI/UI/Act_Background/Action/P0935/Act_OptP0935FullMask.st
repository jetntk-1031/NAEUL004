
ACTION Act_OptP0935FullMask: 
	
	IF eCurrPage = UIP0935Lifter THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bPusherExtRS = TRUE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskPshrInterrupt);
		ELSIF p_tyDI.bPusherRetRS = FALSE AND p_tyDI.bPusherRetSlwSen = FALSE  THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskPshrNotRetInterrupt);	
		ELSIF (p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterCloseRS = FALSE) AND NOT(bBypassShutForCalib) THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskInShutOpnInterrupt);
			
		ELSIF ((p_tyDI.bOutShutterCloseRS = FALSE AND p_tyNtParamCurr.bProjOutletShutPrep) OR (p_tyDI.bOutShutterCloseRS2 = FALSE AND p_tyNtParamCurr.bProjOutletShut2Prep )OR (p_tyDI.bOutShutterCloseRS3 = FALSE AND p_tyNtParamCurr.bProjOutletShut3Prep)) AND NOT(bBypassShutForCalib) THEN
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				IF (p_tyDI.bOutShutterCloseRS = FALSE AND p_tyNtParamCurr.bProjOutletShutPrep) OR (p_tyDI.bOutShutterCloseRS2 = FALSE AND p_tyNtParamCurr.bProjOutletShut2Prep)OR (p_tyDI.bOutShutterCloseRS3 = FALSE AND p_tyNtParamCurr.bProjOutletShut3Prep )THEN
					p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskOutShutOpnInterrupt);
				END_IF
			ELSE
				IF p_tyDI.bOutShutterCloseRS = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskOutShutOpnInterrupt);
				END_IF
			END_IF
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvClrSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskClrSenInterrupt);
			
		ELSIF p_tyDI.bLifterSafetyLmtSW1 = FALSE OR p_tyDI.bLifterSafetyLmtSW2 = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskSafetyLmtSW);
			
		ELSIF p_tyDI.bLifterTimingBeltSen = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskTimingBelt);
			
//		ELSIF p_tyNtParamCurr.tyDISettings.diMag1FixedClampRS <> 0 AND p_tyDI.bMag1FixedClampRS = FALSE 
//			AND p_tyDI.bMagPresentSen1 THEN
//			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskMagClmpInt);
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0935Lifter.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
