
ACTION Act_OptP0922RstMnl: 

	IF EDGEPOS((bManualMod = FALSE) OR (p_eStopperAStatus = Error)) THEN
		
		eStopperAAct	:= PneuActIdle;
		
		tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue	:= FALSE;
		
		tyP0922Stopper.tyStopperAFB.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eStopperBStatus = Error)) THEN
		
		eStopperBAct	:= PneuActIdle;
		
		tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue	:= FALSE;
		
		tyP0922Stopper.tyStopperBFB.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue	:= FALSE;
		
	END_IF
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eStopperBStatus = Error)) THEN
		
		eInStopperAct	:= PneuActIdle;
		
		tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue	:= FALSE;
		
		tyP0922Stopper.tyInStopperFB.tyBtnBlk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue		:= FALSE;
		tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bRtCompl	:= FALSE;
		tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue	:= FALSE;
		
	END_IF
	
	IF EDGEPOS(bManualMod = FALSE) THEN 
		tyP0922Stopper.tyStopperACom.tyBtnSwitch.bValue := FALSE;
		tyP0922Stopper.tyStopperBCom.tyBtnSwitch.bValue := FALSE;
		tyP0922Stopper.tyInStopperCom.tyBtnSwitch.bValue := FALSE;
	
		IF p_tyNtParamCurr.bProjStopperAPrep  THEN
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperADC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperAFB.tyLyr.uiRtStat));
		END_IF
		IF p_tyNtParamCurr.bProjStopperBPrep THEN
			fUIInRtStatHide(ADR(tyP0922Stopper.tyStopperBDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyStopperBFB.tyLyr.uiRtStat));
		END_IF
		IF p_tyNtParamCurr.bProjInletStopperPrep THEN
			fUIInRtStatHide(ADR(tyP0922Stopper.tyInStopperDC.tyLyr.uiRtStat));
			fUIInRtStatOff(ADR(tyP0922Stopper.tyInStopperFB.tyLyr.uiRtStat));
		END_IF
	END_IF
	
	
END_ACTION
