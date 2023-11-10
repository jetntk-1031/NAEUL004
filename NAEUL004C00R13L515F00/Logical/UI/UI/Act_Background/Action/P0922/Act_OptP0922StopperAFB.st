
ACTION Act_OptP0922StopperAFB: 

	IF tyP0922Stopper.tyStopperACom.tyBtnSwitch.bValue = FALSE THEN
	
		// FB Control
		IF tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bRtCompl	:= FALSE;
			
			tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue	:= TRUE;
			tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue		:= FALSE;
			
		ELSIF tyP0922Stopper.tyStopperAFB.tyBtnBlk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyStopperAFB.tyBtnBlk.bRtCompl	:= FALSE;
		
			tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue		:= TRUE;
			tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue	:= FALSE;
		END_IF
		
		IF tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue = TRUE THEN
			
			eStopperAAct	:= PneuActRet;
			
			IF p_eStopperAStat = PneuActRet AND p_eStopperAStatus = Done THEN
				eStopperAAct	:= PneuActIdle;
				
				tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue	:= FALSE;
			
			ELSIF p_eStopperAStatus = Error THEN
				tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue	:= FALSE;
			END_IF	
				
		ELSIF tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue = TRUE THEN
			eStopperAAct	:= PneuActExt;
			
			IF p_eStopperAStat = PneuActExt AND p_eStopperAStatus = Done THEN
				eStopperAAct	:= PneuActIdle;
				
				tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue := FALSE; 
			ELSIF p_eStopperAStatus = Error THEN	
				tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue := FALSE; 
			END_IF	
		END_IF
		//Update Status
			
		tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl		:= FALSE;
		tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl		:= FALSE;	
		tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue		:= p_bStopperARetCtrl;
		tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue			:= NOT p_bStopperARetCtrl;	
		
	END_IF	
		
END_ACTION
