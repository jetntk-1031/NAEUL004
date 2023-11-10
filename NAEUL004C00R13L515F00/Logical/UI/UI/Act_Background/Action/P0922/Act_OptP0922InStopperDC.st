
ACTION Act_OptP0922InStopperDC: 

	IF tyP0922Stopper.tyInStopperCom.tyBtnSwitch.bValue = TRUE THEN
		// Direct Control
		IF p_bInStopperTwoCtrlOut = FALSE THEN
			IF tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl = TRUE THEN
				tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue	:= TRUE;
				tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue		:= FALSE;
				
				eInStopperAct	:= PneuActSetRet;
				
				IF p_eInStopperStat = PneuActSetRet AND p_eInStopperStatus = Done THEN
					eInStopperAct	:= PneuActIdle;
					
					tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl = TRUE THEN	
				tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue		:= TRUE;
				tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue	:= FALSE;
				
				eInStopperAct	:= PneuActSetExt;
				
				IF p_eInStopperStat = PneuActSetExt AND p_eInStopperStatus = Done THEN
					eInStopperAct	:= PneuActIdle;
					
					tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl = TRUE) OR (tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl = TRUE) THEN
				IF (tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue = TRUE) THEN
					
					eInStopperAct	:= PneuActSetAll;
					
					IF p_eInStopperStat = PneuActSetAll AND p_eInStopperStatus = Done THEN
						eInStopperAct	:= PneuActIdle;
						
						tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue = FALSE) THEN	
					
					eInStopperAct	:= PneuActSetRet;
					
					IF p_eInStopperStat = PneuActSetRet AND p_eInStopperStatus = Done THEN
						
						eInStopperAct	:= PneuActIdle;
						
						tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bValue = FALSE) AND (tyP0922Stopper.tyInStopperDC.tyBtnBlk.bValue = TRUE) THEN	
					
					eInStopperAct	:= PneuActSetExt;
					
					IF p_eInStopperStat = PneuActSetExt AND p_eInStopperStatus = Done THEN
						eInStopperAct	:= PneuActIdle;
						
						tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eInStopperAct	:= PneuActRstAll;
					
					IF p_eInStopperStat = PneuActRstAll AND p_eInStopperStatus = Done THEN
						eInStopperAct	:= PneuActIdle;
						
						tyP0922Stopper.tyInStopperDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyInStopperDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		//Update Status
		tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bValue		:= FALSE;
		tyP0922Stopper.tyInStopperFB.tyBtnBlk.bValue			:= FALSE;	
		tyP0922Stopper.tyInStopperFB.tyBtnUnblk.bRtCompl		:= FALSE;
		tyP0922Stopper.tyInStopperFB.tyBtnBlk.bRtCompl		:= FALSE;	
		
	END_IF	
		
END_ACTION
