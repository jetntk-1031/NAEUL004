
ACTION Act_OptP0929MagConv2BtmDC:
	
	//Magazine Conv2eyor
	IF tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtCompl = TRUE THEN
		eOutMagConv2Act	:= MagConvActStop;
		
		IF p_eOutMagConv2Stat = MagConvActStop AND p_eOutMagConv2Status = Done THEN
			eOutMagConv2Act	:= MagConvActIdle;
			
			tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0929MagConv2.tyBtmDC.tyBtnStop.bValue		:= TRUE;
			tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjOutMagConv2Dir = ConvDirLToR OR p_tyNtParamCurr.eProjOutMagConv2Dir = ConvDirLToL THEN
			
			eOutMagConv2Act	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eOutMagConv2Stat = MagConvActSetMtrSigOnOrLToR AND p_eOutMagConv2Status = Done THEN
				eOutMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eOutMagConv2Act	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eOutMagConv2Stat = MagConvActSetMtrDirOrRToL AND p_eOutMagConv2Status = Done THEN
				eOutMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bValue	:= FALSE;
		tyP0929MagConv2.tyBtmDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjOutMagConv2Dir = ConvDirLToR OR p_tyNtParamCurr.eProjOutMagConv2Dir = ConvDirRToR THEN
			
			eOutMagConv2Act	:= MagConvActSetMtrSigOnOrLToR;
			
			IF p_eOutMagConv2Stat = MagConvActSetMtrSigOnOrLToR AND p_eOutMagConv2Status = Done THEN
				eOutMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eOutMagConv2Act	:= MagConvActSetMtrDirOrRToL;
			
			IF p_eOutMagConv2Stat = MagConvActSetMtrDirOrRToL AND p_eOutMagConv2Status = Done THEN
				eOutMagConv2Act	:= MagConvActIdle;
				
				tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	

	IF tyP0929MagConv2.tyCom.tyBtnSwitch.bValue = TRUE THEN
	
		//Mag Conv2 Stopper4
		IF p_bStopper4TwoCtrlOut = FALSE THEN
			IF tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl = TRUE THEN
				tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue := TRUE;
				tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue := FALSE;
				
				eStopper4Act2	:= PneuActSetExt;
				
				IF p_eStopper4Stat2 = PneuActSetExt AND p_eStopper4Status2 = Done THEN
					eStopper4Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl = TRUE THEN	
				tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue := TRUE;
				tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue := FALSE;
				
				eStopper4Act2	:= PneuActSetRet;
				
				IF p_eStopper4Stat2 = PneuActSetRet AND p_eStopper4Status2 = Done THEN
					eStopper4Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl = TRUE) OR (tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl = TRUE) THEN
				IF (tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue = TRUE) THEN
					eStopper4Act2	:= PneuActSetAll;
					
					IF p_eStopper4Stat2 = PneuActSetAll AND p_eStopper4Status2 = Done THEN
						eStopper4Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue = FALSE) THEN	
					eStopper4Act2	:= PneuActSetExt;(**)
					
					IF p_eStopper4Stat2 = PneuActSetExt (**) AND p_eStopper4Status2 = Done THEN
						eStopper4Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bValue = FALSE) AND (tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bValue = TRUE) THEN	
					eStopper4Act2	:= PneuActSetRet;
					
					IF p_eStopper4Stat2 = PneuActSetRet AND p_eStopper4Status2 = Done THEN
						eStopper4Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper4Act2	:= PneuActRstAll;
					
					IF p_eStopper4Stat2 = PneuActRstAll AND p_eStopper4Status2 = Done THEN
						eStopper4Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnMidStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//Stopper4
		
		//Mag Conv2 Stopper5
		IF p_bStopper5TwoCtrlOut = FALSE THEN
			IF tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl = TRUE THEN
				tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue := TRUE;
				tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue := FALSE;
				
				eStopper5Act2	:= PneuActSetExt;
				
				IF p_eStopper5Stat2 = PneuActSetExt AND p_eStopper5Status2 = Done THEN
					eStopper5Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl = TRUE THEN	
				tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue := TRUE;
				tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue := FALSE;
				
				eStopper5Act2	:= PneuActSetRet;
				
				IF p_eStopper5Stat2 = PneuActSetRet AND p_eStopper5Status2 = Done THEN
					eStopper5Act2	:= PneuActIdle;
					
					tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl = TRUE) OR (tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl = TRUE) THEN
				IF (tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue = TRUE) THEN
					eStopper5Act2	:= PneuActSetAll;
					
					IF p_eStopper5Stat2 = PneuActSetAll AND p_eStopper5Status2 = Done THEN
						eStopper5Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF	
					/////////i edited the ret to ext			
				ELSIF (tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue = TRUE) AND (tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue = FALSE) THEN	
					eStopper5Act2	:= PneuActSetExt;(**)
					
					IF p_eStopper5Stat2 = PneuActSetExt (**) AND p_eStopper5Status2 = Done THEN
						eStopper5Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bValue = FALSE) AND (tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bValue = TRUE) THEN	
					eStopper5Act2	:= PneuActSetRet;
					
					IF p_eStopper5Stat2 = PneuActSetRet AND p_eStopper5Status2 = Done THEN
						eStopper5Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eStopper5Act2	:= PneuActRstAll;
					
					IF p_eStopper5Stat2 = PneuActRstAll AND p_eStopper5Status2 = Done THEN
						eStopper5Act2	:= PneuActIdle;
						
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprExt.bRtCompl		:= FALSE;
						tyP0929MagConv2.tyBtmDC.tyBtnExtStprRet.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF//Stopper5
				
		//mid
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprExt.bValue		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnMidStprRet.bValue		:= FALSE;	
	
		//ext
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprExt.bValue		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bRtCompl		:= FALSE;
		tyP0929MagConv2.tyBtmFB.tyBtnExtStprRet.bValue		:= FALSE;	
	END_IF
	
	
	//Mask
//	IF p_eOutMagConv2Status = Error THEN
//		
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0929MagConv2.tyBtmDC.tyBtnMagIn.bValue = TRUE THEN
//		
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSIF tyP0929MagConv2.tyBtmDC.tyBtnMagOut.bValue = TRUE THEN
//		
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatOff(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	ELSE
//		
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagIn.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnMagOut.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnFixedUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnRemoteUnclamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelClamp.uiMaskRtStat));
//		fUIInRtStatHide(ADR(tyP0929MagConv2.tyBtmDC.tyBtnSelUnclamp.uiMaskRtStat));	
//		
//	END_IF
//	
	

END_ACTION


