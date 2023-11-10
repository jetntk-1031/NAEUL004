
ACTION Act_OptP0922InStopperFB: 

	IF tyP0922Stopper.tyInStopperCom.tyBtnSwitch.bValue = FALSE THEN
	
		// FB Control
		IF tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bRtCompl	:= FALSE;
			
			tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue	:= TRUE;
			tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue		:= FALSE;
			
		ELSIF tyP0922Stopper.tyInStopperFB.tyBtnBlk.bRtCompl = TRUE THEN
			tyP0922Stopper.tyInStopperFB.tyBtnBlk.bRtCompl	:= FALSE;
		
			tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue		:= TRUE;
			tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue	:= FALSE;
		END_IF
		
		IF tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue = TRUE THEN
			
			eInStopperAct	:= PneuActRet;
			
			IF p_eInStopperStat = PneuActRet AND p_eInStopperStatus = Done THEN
				eInStopperAct	:= PneuActIdle;
				
				tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue	:= FALSE;
			
			ELSIF p_eInStopperStatus = Error THEN
				tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue	:= FALSE;
			END_IF	
				
		ELSIF tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue = TRUE THEN
			eInStopperAct	:= PneuActExt;
			
			IF p_eInStopperStat = PneuActExt AND p_eInStopperStatus = Done THEN
				eInStopperAct	:= PneuActIdle;
				
				tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue := FALSE; 
			ELSIF p_eInStopperStatus = Error THEN	
				tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue := FALSE; 
			END_IF	
		END_IF
		//Update Status
			
		tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl		:= FALSE;
		tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl		:= FALSE;	
		tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue		:= p_bInStopperRetCtrl;
		tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue			:= NOT p_bInStopperRetCtrl;	
		
	END_IF	
		
END_ACTION
