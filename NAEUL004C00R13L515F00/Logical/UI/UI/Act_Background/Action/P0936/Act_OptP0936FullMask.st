
ACTION Act_OptP0936FullMask: 
	
	IF eCurrPage = UIP0936Trav THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvClrSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskClrSenInterrupt);
			
		ELSIF p_tyDI.bPusherExtRS = TRUE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskPshrInterrupt);
		ELSIF p_tyDI.bPusherRetRS = FALSE AND p_tyDI.bPusherRetSlwSen = FALSE  THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskPshrNotRetInterrupt);
		ELSIF (p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterCloseRS = FALSE) AND NOT(bBypassShutForCalib) THEN
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskInShutOpnInterrupt);
			
		ELSIF  ((p_tyDI.bOutShutterCloseRS = FALSE AND p_tyNtParamCurr.bProjOutletShutPrep) OR (p_tyDI.bOutShutterCloseRS2 = FALSE AND p_tyNtParamCurr.bProjOutletShut2Prep )OR (p_tyDI.bOutShutterCloseRS3 = FALSE AND p_tyNtParamCurr.bProjOutletShut3Prep)) AND NOT(bBypassShutForCalib) THEN
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				IF (p_tyDI.bOutShutterCloseRS = FALSE AND p_tyNtParamCurr.bProjOutletShutPrep) OR (p_tyDI.bOutShutterCloseRS2 = FALSE AND p_tyNtParamCurr.bProjOutletShut2Prep)OR (p_tyDI.bOutShutterCloseRS3 = FALSE AND p_tyNtParamCurr.bProjOutletShut3Prep )THEN
					p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskOutShutOpnInterrupt);
				END_IF
			ELSE
				IF p_tyDI.bOutShutterCloseRS = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskOutShutOpnInterrupt);
				END_IF
			END_IF			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0936Trav.tyFullMaskHide);
			
			
		END_IF
		
	END_IF
	
END_ACTION
