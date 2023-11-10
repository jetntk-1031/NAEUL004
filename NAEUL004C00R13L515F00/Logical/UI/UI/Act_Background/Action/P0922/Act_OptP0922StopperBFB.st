
ACTION Act_OptP0922StopperBFB: 

	IF tyP0922Stopper.tyStopperBCom.tyBtnSwitch.bValue = FALSE THEN
		
		// FB Control
		IF tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bRtCompl	:= FALSE;
			
			tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue	:= TRUE;
			tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue		:= FALSE;
			
		ELSIF tyP0922Stopper.tyStopperBFB.tyBtnBlk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyStopperBFB.tyBtnBlk.bRtCompl	:= FALSE;
		
			tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue		:= TRUE;
			tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue	:= FALSE;
		END_IF
		
		IF tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue = TRUE THEN
			
			eStopperBAct	:= PneuActRet;
			
			IF p_eStopperBStat = PneuActRet AND p_eStopperBStatus = Done THEN
				eStopperBAct	:= PneuActIdle;
				
				tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue	:= FALSE;
			
			ELSIF p_eStopperBStatus = Error THEN
				tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue	:= FALSE;
			END_IF	
				
		ELSIF tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue = TRUE THEN
			eStopperBAct	:= PneuActExt;
			
			IF p_eStopperBStat = PneuActExt AND p_eStopperBStatus = Done THEN
				eStopperBAct	:= PneuActIdle;
				
				tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue := FALSE; 
			ELSIF p_eStopperBStatus = Error THEN	
				tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue := FALSE; 
			END_IF	
		END_IF
		
		//Update Status
		tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl		:= FALSE;
		tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl		:= FALSE;	
		tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue		:= p_bStopperBRetCtrl;
		tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue			:= NOT p_bStopperBRetCtrl;	
		
	END_IF	
		
END_ACTION
