
ACTION Act_OptP0922DualMask: 
	
	IF eCurrPage = UIP0922Stopper THEN
		
		IF p_tyDI.bEStopSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0922Stopper.tyDualMaskEStop);
			
			tyP0922Stopper.tyDualMaskEStop.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperAPrep;
			tyP0922Stopper.tyDualMaskEStop.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperBPrep;
			
		ELSIF p_tyDI.bCoverSWSig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0922Stopper.tyDualMaskCWSig);
			
			tyP0922Stopper.tyDualMaskCWSig.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperAPrep;
			tyP0922Stopper.tyDualMaskCWSig.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperBPrep;
			
		ELSIF p_tyDI.bSafetyRlySig = FALSE THEN
			p_tyC0003DualMask ACCESS ADR(tyP0922Stopper.tyDualMaskSafetyRly);
			
			tyP0922Stopper.tyDualMaskSafetyRly.tyBtnLeftMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperAPrep;
			tyP0922Stopper.tyDualMaskSafetyRly.tyBtnRgtMask.uiMaskRtStat.0	:= NOT p_tyNtParamCurr.bProjStopperBPrep;
			
		ELSE
			p_tyC0003DualMask ACCESS ADR(tyP0922Stopper.tyDualMaskHide);
			
		END_IF
		
	END_IF
	
END_ACTION
