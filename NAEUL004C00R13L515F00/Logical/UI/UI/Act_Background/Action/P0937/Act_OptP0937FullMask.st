
ACTION Act_OptP0937FullMask: 
	
	IF eCurrPage = UIP0937AWPushOrPuller THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskSafetyRly);
			
		ELSIF p_tyDI.bConvLftSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskLftSenInterrupt);
			
		ELSIF p_tyDI.bConvRgtSen THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskRgtSenInterrupt);
			
		ELSIF (p_tyNtParamCurr.bProjInletShutPrep AND p_tyDI.bInShutterCloseRS = FALSE) AND NOT(bBypassShutForCalib) THEN
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskInShutOpnInterrupt);
			
		ELSIF (p_tyNtParamCurr.bProjOutletShutPrep AND (p_tyDI.bOutShutterCloseRS = FALSE OR p_tyDI.bOutShutterCloseRS2 = FALSE OR p_tyDI.bOutShutterCloseRS3 = FALSE))AND NOT(bBypassShutForCalib) THEN
			IF p_tyNtParamCurr.bCurtainSenPrep THEN
				IF (p_tyDI.bOutShutterCloseRS = FALSE AND p_tyNtParamCurr.bProjOutletShutPrep) OR (p_tyDI.bOutShutterCloseRS2 = FALSE AND p_tyNtParamCurr.bProjOutletShut2Prep)OR (p_tyDI.bOutShutterCloseRS3 = FALSE AND p_tyNtParamCurr.bProjOutletShut3Prep )THEN
					p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskOutShutOpnInterrupt);
				END_IF
			ELSE
				IF p_tyDI.bOutShutterCloseRS = FALSE THEN
					p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskOutShutOpnInterrupt);
				END_IF
			END_IF	
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0934AW.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
