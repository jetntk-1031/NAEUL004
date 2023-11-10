	
ACTION Act_OptP0929FullMask: 
	
	IF eCurrPage = UIP0929MagConv2 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0929MagConv2.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0929MagConv2.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0929MagConv2.tyFullMaskSafetyRly);
		
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0929MagConv2.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
