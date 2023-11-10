
ACTION Act_OptP0938FullMask: 
	
	IF eCurrPage = UIP0938MagAW THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskSafetyRly);
		
		ELSIF bDispMagAW1 AND p_tyBuffer1BffrStat.bBffrMty = FALSE AND p_tyDI.bMagPresentSen1  THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskMag1NotMty);
			
		ELSIF bDispMagAW2 AND p_tyBuffer2BffrStat.bBffrMty = FALSE AND p_tyDI.bMagPresentSen2 THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskMag2NotMty);
			
		ELSIF bDispMagAW3 AND p_tyBuffer3BffrStat.bBffrMty = FALSE AND p_tyDI.bMagPresentSen3 THEN
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskMag3NotMty);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP0938MagAW.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
