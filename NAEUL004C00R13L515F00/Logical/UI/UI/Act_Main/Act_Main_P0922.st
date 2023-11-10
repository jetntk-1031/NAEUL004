
ACTION Act_Main_P0922:
	
	//Display
	tyP0922Stopper.tyStopperACom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperAPrep);
	tyP0922Stopper.tyStopperADC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0922Stopper.tyStopperAFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperAPrep);
	
	tyP0922Stopper.tyStopperBCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperBPrep);
	tyP0922Stopper.tyStopperBDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0922Stopper.tyStopperBFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjStopperBPrep);
	
	//Inlet Stopper
	tyP0922Stopper.tyInStopperCom.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletStopperPrep);
	tyP0922Stopper.tyInStopperDC.tyLyr.uiRtStat.0	:= TRUE;
	tyP0922Stopper.tyInStopperFB.tyLyr.uiRtStat.0	:= NOT(p_tyNtParamCurr.bProjInletStopperPrep);
	
	
END_ACTION
