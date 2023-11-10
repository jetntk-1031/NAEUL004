
ACTION Act_OptP0922StopperBDC: 

	IF tyP0922Stopper.tyStopperBCom.tyBtnSwitch.bValue = TRUE THEN
		// Direct Control
		IF p_bStopperBTwoCtrlOut = FALSE THEN
			IF tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl = TRUE THEN
				tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue	:= TRUE;
				tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue		:= FALSE;
				
				eStopperBAct	:= PneuActSetRet;
				
				IF p_eStopperBStat = PneuActSetRet AND p_eStopperBStatus = Done THEN
					eStopperBAct	:= PneuActIdle;
					
					tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl = TRUE THEN	
				tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue		:= TRUE;
				tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue	:= FALSE;
				
				eStopperBAct	:= PneuActSetExt;
				
				IF p_eStopperBStat = PneuActSetExt AND p_eStopperBStatus = Done THEN
					eStopperBAct	:= PneuActIdle;
					
					tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
					
		ELSE
			IF (tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl = TRUE) OR (tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl = TRUE) THEN
				IF (tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue = TRUE) THEN
					
					eStopperBAct	:= PneuActSetAll;
					
					IF p_eStopperBStat = PneuActSetAll AND p_eStopperBStatus = Done THEN
						eStopperBAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF	
					
				ELSIF (tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue = TRUE) AND (tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue = FALSE) THEN	
					
					eStopperBAct	:= PneuActSetRet;
					
					IF p_eStopperBStat = PneuActSetRet AND p_eStopperBStatus = Done THEN
						
						eStopperBAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bValue = FALSE) AND (tyP0922Stopper.tyStopperBDC.tyBtnBlk.bValue = TRUE) THEN	
					
					eStopperBAct	:= PneuActSetExt;
					
					IF p_eStopperBStat = PneuActSetExt AND p_eStopperBStatus = Done THEN
						eStopperBAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				ELSE	
					eStopperBAct	:= PneuActRstAll;
					
					IF p_eStopperBStat = PneuActRstAll AND p_eStopperBStatus = Done THEN
						eStopperBAct	:= PneuActIdle;
						
						tyP0922Stopper.tyStopperBDC.tyBtnUnblk.bRtCompl	:= FALSE;
						tyP0922Stopper.tyStopperBDC.tyBtnBlk.bRtCompl	:= FALSE;
					END_IF
					
				END_IF	
			END_IF	

		
			//Update Status
			tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bRtCompl		:= FALSE;
			tyP0922Stopper.tyStopperBFB.tyBtnBlk.bRtCompl		:= FALSE;
			tyP0922Stopper.tyStopperBFB.tyBtnUnblk.bValue		:= FALSE;
			tyP0922Stopper.tyStopperBFB.tyBtnBlk.bValue			:= FALSE;	
		
		END_IF	
	END_IF
		
END_ACTION
