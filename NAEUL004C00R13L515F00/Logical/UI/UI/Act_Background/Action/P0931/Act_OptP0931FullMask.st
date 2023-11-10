
ACTION Act_OptP0931FullMask: 
	
	IF eCurrPage = UIP0931MagConv2 THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskSafetyRly);
		
		ELSIF p_bMag2AWEngageExtCtrl 
			AND NOT p_bMagConv2Clp2ClprFixClampCtrl
			AND NOT p_bMagConv2Clp2ClprRmtClampCtrl
			THEN
			p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskAWMotorEngage);
		
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0931MagConv2.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
