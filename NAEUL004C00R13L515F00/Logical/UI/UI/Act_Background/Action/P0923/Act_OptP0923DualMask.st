
ACTION Act_OptP0923DualMask: 
	
	IF eCurrPage = UIP0923SafetyBar THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskEStop);
			
			tyP0923SafetyBar.tyDualMaskEStop.tyBtnLeftMask.uiMaskRtStat.0	:= FALSE;
			tyP0923SafetyBar.tyDualMaskEStop.tyBtnRgtMask.uiMaskRtStat.0	:= bDispSafetyBar2;
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskCWSig);
			
			tyP0923SafetyBar.tyDualMaskCWSig.tyBtnLeftMask.uiMaskRtStat.0	:= FALSE;
			tyP0923SafetyBar.tyDualMaskCWSig.tyBtnRgtMask.uiMaskRtStat.0	:= bDispSafetyBar2;
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskSafetyRly);
			
			tyP0923SafetyBar.tyDualMaskSafetyRly.tyBtnLeftMask.uiMaskRtStat.0	:= FALSE;
			tyP0923SafetyBar.tyDualMaskSafetyRly.tyBtnRgtMask.uiMaskRtStat.0	:= bDispSafetyBar2;
			
//		ELSIF p_tyDI.bPusherRetRS = FALSE THEN
//			p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskPshrInterrupt);
//			
//			tyP0923SafetyBar.tyDualMaskPshrInterrupt.tyBtnLeftMask.uiMaskRtStat.0	:= FALSE;
//			tyP0923SafetyBar.tyDualMaskPshrInterrupt.tyBtnRgtMask.uiMaskRtStat.0	:= bDispSafetyBar2;
//			
		ELSE
			p_tyC0003DualMask ACCESS ADR(tyP0923SafetyBar.tyDualMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
