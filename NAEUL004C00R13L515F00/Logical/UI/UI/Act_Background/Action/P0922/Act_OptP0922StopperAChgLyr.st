
ACTION Act_OptP0922StopperAChgLyr:
	IF p_tyNtParamCurr.bProjStopperAPrep   THEN	
		IF tyP0922Stopper.tyStopperACom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperADC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperAFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperADC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperAFB.tyLyr.uiRtStat));
		END_IF	
	END_IF	

END_ACTION
