
ACTION Act_OptP0928MagConv1TopDC:
	
	//Magazine Conveyor
	IF tyP0928MagConv.tyTopDC.tyBtnStop.bRtCompl = TRUE THEN
		eInMagConvAct	:= MagConvActStop;
		
		IF p_eInMagConvStat = MagConvActStop AND p_eInMagConvStatus = Done THEN
			eInMagConvAct	:= MagConvActIdle;
			
			tyP0928MagConv.tyTopDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0928MagConv.tyTopDC.tyBtnStop.bValue		:= TRUE;
			tyP0928MagConv.tyTopDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0928MagConv.tyTopDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0928MagConv.tyTopDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0928MagConv.tyTopDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyTopDC.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjInMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjInMagConvDir = ConvDirLToL THEN
			
			eInMagConvAct	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eInMagConvStat = MagConvActSetMtrSigOnOrLToR AND p_eInMagConvStatus = Done THEN
				eInMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eInMagConvAct	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eInMagConvStat = MagConvActSetMtrDirOrRToL AND p_eInMagConvStatus = Done THEN
				eInMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0928MagConv.tyTopDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0928MagConv.tyTopDC.tyBtnStop.bValue	:= FALSE;
		tyP0928MagConv.tyTopDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjInMagConvDir = ConvDirRToR THEN
			
			eInMagConvAct	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eInMagConvStat = MagConvActSetMtrSigOnOrLToR AND p_eInMagConvStatus = Done THEN
				eInMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eInMagConvAct	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eInMagConvStat = MagConvActSetMtrDirOrRToL AND p_eInMagConvStatus = Done THEN
				eInMagConvAct	:= MagConvActIdle;
				
				tyP0928MagConv.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	

	IF tyP0928MagConv.tyCom.tyBtnSwitch.bValue = TRUE THEN
		//Mag Conv Stopper1
		IF p_bStopper1TwoCtrlOut = FALSE THEN
			IF tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl = TRUE THEN
				tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue := FALSE;
				
				eStopper1Act	:= PneuActSetExt;
				
				IF p_eStopper1Stat = PneuActSetExt AND p_eStopper1Status = Done THEN
					eStopper1Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl = TRUE THEN	
				tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue := FALSE;
				
				eStopper1Act	:= PneuActSetRet;
				
				IF p_eStopper1Stat = PneuActSetRet AND p_eStopper1Status = Done THEN
					eStopper1Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl = TRUE) OR (tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl = TRUE) THEN
				IF (tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue = TRUE) THEN
					eStopper1Act	:= PneuActSetAll;
					
					IF p_eStopper1Stat = PneuActSetAll AND p_eStopper1Status = Done THEN
						eStopper1Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue = FALSE) THEN	
					eStopper1Act	:= PneuActSetExt;(**)
					
					IF p_eStopper1Stat = PneuActSetExt (**) AND p_eStopper1Status = Done THEN
						eStopper1Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bValue = FALSE) AND (tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bValue = TRUE) THEN	
					eStopper1Act	:= PneuActSetRet;
					
					IF p_eStopper1Stat = PneuActSetRet AND p_eStopper1Status = Done THEN
						eStopper1Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper1Act	:= PneuActRstAll;
					
					IF p_eStopper1Stat = PneuActRstAll AND p_eStopper1Status = Done THEN
						eStopper1Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper1
	
		//Mag Conv Stopper2
		IF p_bStopper2TwoCtrlOut = FALSE THEN
			IF tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl = TRUE THEN
				tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue := FALSE;
				
				eStopper2Act	:= PneuActSetExt;
				
				IF p_eStopper2Stat = PneuActSetExt AND p_eStopper2Status = Done THEN
					eStopper2Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl = TRUE THEN	
				tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue := FALSE;
				
				eStopper2Act	:= PneuActSetRet;
				
				IF p_eStopper2Stat = PneuActSetRet AND p_eStopper2Status = Done THEN
					eStopper2Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl = TRUE) OR (tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl = TRUE) THEN
				IF (tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue = TRUE) THEN
					eStopper2Act	:= PneuActSetAll;
					
					IF p_eStopper2Stat = PneuActSetAll AND p_eStopper2Status = Done THEN
						eStopper2Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue = FALSE) THEN	
					eStopper2Act	:= PneuActSetExt;(**)
					
					IF p_eStopper2Stat = PneuActSetExt (**) AND p_eStopper2Status = Done THEN
						eStopper2Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bValue = FALSE) AND (tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bValue = TRUE) THEN	
					eStopper2Act	:= PneuActSetRet;
					
					IF p_eStopper2Stat = PneuActSetRet AND p_eStopper2Status = Done THEN
						eStopper2Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper2Act	:= PneuActRstAll;
					
					IF p_eStopper2Stat = PneuActRstAll AND p_eStopper2Status = Done THEN
						eStopper2Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper2
		
		//Mag Conv Stopper3
		IF p_bStopper3TwoCtrlOut = FALSE THEN
			IF tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl = TRUE THEN
				tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue := FALSE;
				
				eStopper3Act	:= PneuActSetExt;
				
				IF p_eStopper3Stat = PneuActSetExt AND p_eStopper3Status = Done THEN
					eStopper3Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl = TRUE THEN	
				tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue := TRUE;
				tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue := FALSE;
				
				eStopper3Act	:= PneuActSetRet;
				
				IF p_eStopper3Stat = PneuActSetRet AND p_eStopper3Status = Done THEN
					eStopper3Act	:= PneuActIdle;
					
					tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl = TRUE) OR (tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl = TRUE) THEN
				IF (tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue = TRUE) THEN
					eStopper3Act	:= PneuActSetAll;
					
					IF p_eStopper3Stat = PneuActSetAll AND p_eStopper3Status = Done THEN
						eStopper3Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue = FALSE) THEN	
					eStopper3Act	:= PneuActSetExt;(**)
					
					IF p_eStopper3Stat = PneuActSetExt (**) AND p_eStopper3Status = Done THEN
						eStopper3Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bValue = FALSE) AND (tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bValue = TRUE) THEN	
					eStopper3Act	:= PneuActSetRet;
					
					IF p_eStopper3Stat = PneuActSetRet AND p_eStopper3Status = Done THEN
						eStopper3Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper3Act	:= PneuActRstAll;
					
					IF p_eStopper3Stat = PneuActRstAll AND p_eStopper3Status = Done THEN
						eStopper3Act	:= PneuActIdle;
						
						tyP0928MagConv.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0928MagConv.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper3
		
		//ent
		tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprExt.bValue		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnEntStprRet.bValue		:= FALSE;
		
		//mid
		tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprExt.bValue		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnMidStprRet.bValue		:= FALSE;	
	
		//ext
		tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprExt.bValue		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		tyP0928MagConv.tyTopFB.tyBtnExtStprRet.bValue		:= FALSE;	
	END_IF
	
	
	//Mask
//	IF p_eInMagConvStatus = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0928MagConv.tyTopDC.tyBtnMagIn.bValue = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0928MagConv.tyTopDC.tyBtnMagOut.bValue = TRUE THEN
//		
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0928MagConv.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0928MagConv.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	END_IF
//	
	

END_ACTION


