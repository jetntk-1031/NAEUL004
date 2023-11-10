	
ACTION Act_OptP0928FullMask: 
	
	IF eCurrPage = UIP0928MagConv THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0928MagConv.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0928MagConv.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0928MagConv.tyFullMaskSafetyRly);
		
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0928MagConv.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
