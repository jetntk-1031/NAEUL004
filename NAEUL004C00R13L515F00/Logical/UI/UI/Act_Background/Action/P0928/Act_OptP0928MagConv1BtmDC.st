
ACTION Act_OptP0928MagConv1BtmDC:
	
	//Magazine Conveyor
	IF tyP0928MagConv.tyBtmDC.tyBtnStop.bRtCompl = TRUE THEN
		eOutMagConvAct	:= MagConvActStop;
		
		IF p_eOutMagConvStat = MagConvActStop AND p_eOutMagConvStatus = Done THEN
			eOutMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyBtmDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0928MagConv.tyBtmDC.tyBtnStop.bValue		:= TRUE;
			tyP0928MagConv.tyBtmDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0928MagConv.tyBtmDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0928MagConv.tyBtmDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyBtmDC.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjOutMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjOutMagConvDir = ConvDirLToL THEN
			
			eOutMagConvAct	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eOutMagConvStat = MagConvActSetMtrSigOnOrLToR AND p_eOutMagConvStatus = Done THEN
				eOutMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eOutMagConvAct	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eOutMagConvStat = MagConvActSetMtrDirOrRToL AND p_eOutMagConvStatus = Done THEN
				eOutMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyBtmDC.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyBtmDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjOutMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjOutMagConvDir = ConvDirRToR THEN
			
			eOutMagConvAct	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eOutMagConvStat = MagConvActSetMtrSigOnOrLToR AND p_eOutMagConvStatus = Done THEN
				eOutMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eOutMagConvAct	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eOutMagConvStat = MagConvActSetMtrDirOrRToL AND p_eOutMagConvStatus = Done THEN
				eOutMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	

	IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
	
		//Mag Conv Stopper4
		IF p_bStopper4TwoCtrlOut = FALSE THEN
			IF tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl = TRUE THEN
				tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue := TRUE;
				tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue := FALSE;
				
				eStopper4Act	:= PneuActSetExt;
				
				IF p_eStopper4Stat = PneuActSetExt AND p_eStopper4Status = Done THEN
					eStopper4Act	:= PneuActIdle;
					
					tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl = TRUE THEN	
				tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue := TRUE;
				tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue := FALSE;
				
				eStopper4Act	:= PneuActSetRet;
				
				IF p_eStopper4Stat = PneuActSetRet AND p_eStopper4Status = Done THEN
					eStopper4Act	:= PneuActIdle;
					
					tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl = TRUE) OR (tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl = TRUE) THEN
				IF (tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue = TRUE) THEN
					eStopper4Act	:= PneuActSetAll;
					
					IF p_eStopper4Stat = PneuActSetAll AND p_eStopper4Status = Done THEN
						eStopper4Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue = FALSE) THEN	
					eStopper4Act	:= PneuActSetExt;(**)
					
					IF p_eStopper4Stat = PneuActSetExt (**) AND p_eStopper4Status = Done THEN
						eStopper4Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bValue = FALSE) AND (tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bValue = TRUE) THEN	
					eStopper4Act	:= PneuActSetRet;
					
					IF p_eStopper4Stat = PneuActSetRet AND p_eStopper4Status = Done THEN
						eStopper4Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper4Act	:= PneuActRstAll;
					
					IF p_eStopper4Stat = PneuActRstAll AND p_eStopper4Status = Done THEN
						eStopper4Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//Stopper4
		
		//Mag Conv Stopper5
		IF p_bStopper5TwoCtrlOut = FALSE THEN
			IF tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl = TRUE THEN
				tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue := TRUE;
				tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue := FALSE;
				
				eStopper5Act	:= PneuActSetExt;
				
				IF p_eStopper5Stat = PneuActSetExt AND p_eStopper5Status = Done THEN
					eStopper5Act	:= PneuActIdle;
					
					tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl = TRUE THEN	
				tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue := TRUE;
				tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue := FALSE;
				
				eStopper5Act	:= PneuActSetRet;
				
				IF p_eStopper5Stat = PneuActSetRet AND p_eStopper5Status = Done THEN
					eStopper5Act	:= PneuActIdle;
					
					tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl = TRUE) OR (tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl = TRUE) THEN
				IF (tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue = TRUE) THEN
					eStopper5Act	:= PneuActSetAll;
					
					IF p_eStopper5Stat = PneuActSetAll AND p_eStopper5Status = Done THEN
						eStopper5Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue = FALSE) THEN	
					eStopper5Act	:= PneuActSetExt;(**)
					
					IF p_eStopper5Stat = PneuActSetExt (**) AND p_eStopper5Status = Done THEN
						eStopper5Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bValue = FALSE) AND (tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bValue = TRUE) THEN	
					eStopper5Act	:= PneuActSetRet;
					
					IF p_eStopper5Stat = PneuActSetRet AND p_eStopper5Status = Done THEN
						eStopper5Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper5Act	:= PneuActRstAll;
					
					IF p_eStopper5Stat = PneuActRstAll AND p_eStopper5Status = Done THEN
						eStopper5Act	:= PneuActIdle;
						
						tyP0928MagConv.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//Stopper5
		
		//mid
		tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bRtCompl		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprExt.bValue		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnMidStprRet.bValue		:= FALSE;	
	
		//ext
		tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bRtCompl		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprExt.bValue		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		tyP0928MagConv.tyBtmFB.tyBtnExtStprRet.bValue		:= FALSE;	
	END_IF
	
	
	//Mask
//	IF p_eOutMagConvStatus = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0928MagConv.tyBtmDC.tyBtnMagIn.bValue = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0928MagConv.tyBtmDC.tyBtnMagOut.bValue = TRUE THEN
//		
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	END_IF
//	
	

END_ACTION


