
ACTION Act_OptP1031FullMask: 
	
	IF eCurrPage = UIP1031MagSetTeach THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskSafetyRly);
			
		ELSIF (bTeachLifterMag1Slt1Pos OR bTeachLifterMag2Slt1Pos OR bTeachLifterMag3Slt1Pos) AND (p_tyDI.bLifterSafetyLmtSW1 = FALSE OR p_tyDI.bLifterSafetyLmtSW2 = FALSE) THEN
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskSafetyLmtSW);
			
		ELSIF (bTeachLifterMag1Slt1Pos OR bTeachLifterMag2Slt1Pos OR bTeachLifterMag3Slt1Pos) AND p_tyDI.bLifterTimingBeltSen = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskTimingBelt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP1031MagSetTeach.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
