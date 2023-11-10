
ACTION Act_OptP0929MagConv2TopDC:
	
	//Magazine Conv2eyor
	IF tyP0929MagConv2.tyTopDC.tyBtnStop.bRtCompl = TRUE THEN
		eInMagConv2Act	:= MagConvActStop;
		
		IF p_eInMagConv2Stat = MagConvActStop AND p_eInMagConv2Status = Done THEN
			eInMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyTopDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0929MagConv2.tyTopDC.tyBtnStop.bValue		:= TRUE;
			tyP0929MagConv2.tyTopDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyTopDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyTopDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0929MagConv2.tyTopDC.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjInMagConv2Dir = ConvDirLToR OR p_tyNtParamCurr.eProjInMagConv2Dir = ConvDirLToL THEN
			
			eInMagConv2Act	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eInMagConv2Stat = MagConvActSetMtrSigOnOrLToR AND p_eInMagConv2Status = Done THEN
				eInMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eInMagConv2Act	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eInMagConv2Stat = MagConvActSetMtrDirOrRToL AND p_eInMagConv2Status = Done THEN
				eInMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyTopDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0929MagConv2.tyTopDC.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyTopDC.tyBtnStop.bRtLk	:= FALSE;
	
		IF p_tyNtParamCurr.eProjInMagConv2Dir = ConvDirLToR OR p_tyNtParamCurr.eProjInMagConv2Dir = ConvDirRToR THEN
			
			eInMagConv2Act	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eInMagConv2Stat = MagConvActSetMtrSigOnOrLToR AND p_eInMagConv2Status = Done THEN
				eInMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eInMagConv2Act	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eInMagConv2Stat = MagConvActSetMtrDirOrRToL AND p_eInMagConv2Status = Done THEN
				eInMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyTopDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	

	IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
		//Mag Conv2 Stopper1
		IF p_bStopper1TwoCtrlOut = FALSE THEN
			IF tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl = TRUE THEN
				tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue := FALSE;
				
				eStopper1Act2	:= PneuActSetExt;
				
				IF p_eStopper1Stat2 = PneuActSetExt AND p_eStopper1Status2 = Done THEN
					eStopper1Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl = TRUE THEN	
				tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue := FALSE;
				
				eStopper1Act2	:= PneuActSetRet;
				
				IF p_eStopper1Stat2 = PneuActSetRet AND p_eStopper1Status2 = Done THEN
					eStopper1Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl = TRUE) OR (tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl = TRUE) THEN
				IF (tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue = TRUE) THEN
					eStopper1Act2	:= PneuActSetAll;
					
					IF p_eStopper1Stat2 = PneuActSetAll AND p_eStopper1Status2 = Done THEN
						eStopper1Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue = FALSE) THEN	
					eStopper1Act2	:= PneuActSetExt;(**)
					
					IF p_eStopper1Stat2 = PneuActSetExt (**) AND p_eStopper1Status2 = Done THEN
						eStopper1Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bValue = FALSE) AND (tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bValue = TRUE) THEN	
					eStopper1Act2	:= PneuActSetRet;
					
					IF p_eStopper1Stat2 = PneuActSetRet AND p_eStopper1Status2 = Done THEN
						eStopper1Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper1Act2	:= PneuActRstAll;
					
					IF p_eStopper1Stat2 = PneuActRstAll AND p_eStopper1Status2 = Done THEN
						eStopper1Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnEntStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnEntStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper1
	
		//Mag Conv2 Stopper2
		IF p_bStopper2TwoCtrlOut = FALSE THEN
			IF tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl = TRUE THEN
				tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue := FALSE;
				
				eStopper2Act2	:= PneuActSetExt;
				
				IF p_eStopper2Stat2 = PneuActSetExt AND p_eStopper2Status2 = Done THEN
					eStopper2Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl = TRUE THEN	
				tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue := FALSE;
				
				eStopper2Act2	:= PneuActSetRet;
				
				IF p_eStopper2Stat2 = PneuActSetRet AND p_eStopper2Status2 = Done THEN
					eStopper2Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl = TRUE) OR (tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl = TRUE) THEN
				IF (tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue = TRUE) THEN
					eStopper2Act2	:= PneuActSetAll;
					
					IF p_eStopper2Stat2 = PneuActSetAll AND p_eStopper2Status2 = Done THEN
						eStopper2Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue = FALSE) THEN	
					eStopper2Act2	:= PneuActSetExt;(**)
					
					IF p_eStopper2Stat2 = PneuActSetExt (**) AND p_eStopper2Status2 = Done THEN
						eStopper2Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bValue = FALSE) AND (tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bValue = TRUE) THEN	
					eStopper2Act2	:= PneuActSetRet;
					
					IF p_eStopper2Stat2 = PneuActSetRet AND p_eStopper2Status2 = Done THEN
						eStopper2Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper2Act2	:= PneuActRstAll;
					
					IF p_eStopper2Stat2 = PneuActRstAll AND p_eStopper2Status2 = Done THEN
						eStopper2Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper2
		
		//Mag Conv2 Stopper3
		IF p_bStopper3TwoCtrlOut = FALSE THEN
			IF tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl = TRUE THEN
				tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue := FALSE;
				
				eStopper3Act2	:= PneuActSetExt;
				
				IF p_eStopper3Stat2 = PneuActSetExt AND p_eStopper3Status2 = Done THEN
					eStopper3Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl = TRUE THEN	
				tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue := TRUE;
				tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue := FALSE;
				
				eStopper3Act2	:= PneuActSetRet;
				
				IF p_eStopper3Stat2 = PneuActSetRet AND p_eStopper3Status2 = Done THEN
					eStopper3Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl = TRUE) OR (tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl = TRUE) THEN
				IF (tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue = TRUE) THEN
					eStopper3Act2	:= PneuActSetAll;
					
					IF p_eStopper3Stat2 = PneuActSetAll AND p_eStopper3Status2 = Done THEN
						eStopper3Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue = FALSE) THEN	
					eStopper3Act2	:= PneuActSetExt;(**)
					
					IF p_eStopper3Stat2 = PneuActSetExt (**) AND p_eStopper3Status2 = Done THEN
						eStopper3Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bValue = FALSE) AND (tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bValue = TRUE) THEN	
					eStopper3Act2	:= PneuActSetRet;
					
					IF p_eStopper3Stat2 = PneuActSetRet AND p_eStopper3Status2 = Done THEN
						eStopper3Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper3Act2	:= PneuActRstAll;
					
					IF p_eStopper3Stat2 = PneuActRstAll AND p_eStopper3Status2 = Done THEN
						eStopper3Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyTopDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyTopDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//stopper3
		
		//ent
		tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprExt.bValue		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnEntStprRet.bValue		:= FALSE;
		
		//mid
		tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprExt.bValue		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnMidStprRet.bValue		:= FALSE;	
	
		//ext
		tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprExt.bValue		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyTopFB.tyBtnExtStprRet.bValue		:= FALSE;	
	END_IF
	
	
	//Mask
//	IF p_eInMagConv2Status = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0929MagConv2.tyTopDC.tyBtnMagIn.bValue = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0929MagConv2.tyTopDC.tyBtnMagOut.bValue = TRUE THEN
//		
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyTopDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	END_IF
//	
	

END_ACTION


