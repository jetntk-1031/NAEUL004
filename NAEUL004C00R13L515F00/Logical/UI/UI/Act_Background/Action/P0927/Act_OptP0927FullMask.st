
ACTION Act_OptP0927FullMask: 
	
	IF eCurrPage = UIP0927LifterConv2 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0927LifterMagConv2.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0927LifterMagConv2.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0927LifterMagConv2.tyFullMaskSafetyRly);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0927LifterMagConv2.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
