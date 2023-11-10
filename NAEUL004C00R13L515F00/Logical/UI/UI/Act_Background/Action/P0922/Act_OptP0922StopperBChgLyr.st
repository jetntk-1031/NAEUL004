
ACTION Act_OptP0922StopperBChgLyr:
	IF p_tyNtParamCurr.bProjStopperBPrep THEN	
		IF tyP0922Stopper.tyStopperBCom.tyBtnSwitch.bValue = TRUE THEN
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperBDC.tyLyr.uiRtStat));
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperBFB.tyLyr.uiRtStat));
		ELSE
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperBDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperBFB.tyLyr.uiRtStat));
		END_IF	
	END_IF	

END_ACTION
