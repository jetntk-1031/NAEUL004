
ACTION Act_OptP0922StopperADC: 

	IF tyP0922Stopper.tyStopperACom.tyBtnSwitch.bValue = TRUE THEN
		// Direct Control
		IF p_bStopperATwoCtrlOut = FALSE THEN
			IF tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl = TRUE THEN
				tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue	:= TRUE;
				tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue		:= FALSE;
				
				eStopperAAct	:= PneuActSetRet;
				
				IF p_eStopperAStat = PneuActSetRet AND p_eStopperAStatus = Done THEN
					eStopperAAct	:= PneuActIdle;
					
					tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl = TRUE THEN	
				tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue		:= TRUE;
				tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue	:= FALSE;
				
				eStopperAAct	:= PneuActSetExt;
				
				IF p_eStopperAStat = PneuActSetExt AND p_eStopperAStatus = Done THEN
					eStopperAAct	:= PneuActIdle;
					
					tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl = TRUE) OR (tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl = TRUE) THEN
				IF (tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue = TRUE) THEN
					
					eStopperAAct	:= PneuActSetAll;
					
					IF p_eStopperAStat = PneuActSetAll AND p_eStopperAStatus = Done THEN
						eStopperAAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue = FALSE) THEN	
					
					eStopperAAct	:= PneuActSetRet;
					
					IF p_eStopperAStat = PneuActSetRet AND p_eStopperAStatus = Done THEN
						
						eStopperAAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0922Stopper.tyStopperADC.tyBtnUnblk.bValue = FALSE) AND (tyP0922Stopper.tyStopperADC.tyBtnBlk.bValue = TRUE) THEN	
					
					eStopperAAct	:= PneuActSetExt;
					
					IF p_eStopperAStat = PneuActSetExt AND p_eStopperAStatus = Done THEN
						eStopperAAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eStopperAAct	:= PneuActRstAll;
					
					IF p_eStopperAStat = PneuActRstAll AND p_eStopperAStatus = Done THEN
						eStopperAAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperADC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperADC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		//Update Status
		tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bValue		:= FALSE;
		tyP0922Stopper.tyStopperAFB.tyBtnBlk.bValue			:= FALSE;	
		tyP0922Stopper.tyStopperAFB.tyBtnUnblk.bRtCompl		:= FALSE;
		tyP0922Stopper.tyStopperAFB.tyBtnBlk.bRtCompl		:= FALSE;	
		
	END_IF	
		
END_ACTION
