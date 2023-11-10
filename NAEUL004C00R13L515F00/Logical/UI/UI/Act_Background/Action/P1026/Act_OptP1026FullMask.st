
ACTION Act_OptP1026FullMask: 
	
	IF eCurrPage = UIP1026McSetTeach THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskEStop);
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskCWSig);
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskSafetyRly);
			
		ELSIF (bTeachLifterPosA OR bTeachLifterPosB) AND (p_tyDI.bLifterSafetyLmtSW1 = FALSE OR p_tyDI.bLifterSafetyLmtSW2 = FALSE) THEN
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskSafetyLmtSW);
			
		ELSIF (bTeachLifterPosA OR bTeachLifterPosB) AND p_tyDI.bLifterTimingBeltSen = FALSE THEN
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskTimingBelt);
			
		ELSE
			p_tyC0002FullMask ACCESS ADR(tyP1026McSetTeach.tyFullMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
