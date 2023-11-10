
ACTION Act_OptP0926FullMask: 
	
	IF eCurrPage = UIP0926LifterConv THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0926LifterMagConv.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0926LifterMagConv.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0926LifterMagConv.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0926LifterMagConv.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
