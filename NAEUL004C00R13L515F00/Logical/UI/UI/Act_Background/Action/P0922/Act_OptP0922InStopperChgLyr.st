
ACTION Act_OptP0922InStopperChgLyr:
	IF p_tyNtParamCurr.bProjInletStopperPrep THEN
		IF tyP0922Stopper.tyInStopperCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0922Stopper.tyInStopperDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0922Stopper.tyInStopperFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0922Stopper.tyInStopperDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyInStopperFB.tyLyr.uiRtStat));
		END_IF	
	END_IF	

END_ACTION
