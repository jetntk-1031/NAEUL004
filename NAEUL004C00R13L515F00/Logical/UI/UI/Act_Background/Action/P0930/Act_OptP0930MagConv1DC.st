
ACTION Act_OptP0930MagConv1DC:
	
	//Magazine Conveyor
	IF tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl = TRUE THEN
		eMagConv2Clp1Act	:= MagConv2ClpActStop;
		
		IF p_eMagConv2Clp1Stat = MagConv2ClpActStop AND p_eMagConv2Clp1Status = Done THEN
			eMagConv2Clp1Act	:= MagConv2ClpActIdle;
			
			tyP0930MagConv1.tyDC.tyBtnStop.bRtCompl		:= FALSE;
			tyP0930MagConv1.tyDC.tyBtnStop.bValue		:= TRUE;
			tyP0930MagConv1.tyDC.tyBtnStop.bRtLk		:= TRUE;
			
			tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			tyP0930MagConv1.tyDC.tyBtnMagIn.bValue		:= FALSE;
			tyP0930MagConv1.tyDC.tyBtnMagIn.bRtLk		:= FALSE;
			
			tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			tyP0930MagConv1.tyDC.tyBtnMagOut.bValue		:= FALSE;
			tyP0930MagConv1.tyDC.tyBtnMagOut.bRtLk		:= FALSE;
		END_IF
		
	ELSIF tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl = TRUE THEN
		tyP0930MagConv1.tyDC.tyBtnMagIn.bValue	:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnMagIn.bRtLk	:= TRUE;
		
		tyP0930MagConv1.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjMagConvDir = ConvDirLToL THEN
			
			eMagConv2Clp1Act	:= MagConv2ClpActSetMtrSigOnOrLToR;
			
			IF p_eMagConv2Clp1Stat = MagConv2ClpActSetMtrSigOnOrLToR AND p_eMagConv2Clp1Status = Done THEN
				eMagConv2Clp1Act	:= MagConv2ClpActIdle;
				
				tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eMagConv2Clp1Act	:= MagConv2ClpActSetMtrDirOrRToL;
			
			IF p_eMagConv2Clp1Stat = MagConv2ClpActSetMtrDirOrRToL AND p_eMagConv2Clp1Status = Done THEN
				eMagConv2Clp1Act	:= MagConv2ClpActIdle;
				
				tyP0930MagConv1.tyDC.tyBtnMagIn.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	ELSIF tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl = TRUE THEN
		tyP0930MagConv1.tyDC.tyBtnMagOut.bValue	:= TRUE;
		tyP0930MagConv1.tyDC.tyBtnMagOut.bRtLk	:= TRUE;
		
		tyP0930MagConv1.tyDC.tyBtnStop.bValue	:= FALSE;
		tyP0930MagConv1.tyDC.tyBtnStop.bRtLk	:= FALSE;
		
		IF p_tyNtParamCurr.eProjMagConvDir = ConvDirLToR OR p_tyNtParamCurr.eProjMagConvDir = ConvDirRToR THEN
			
			eMagConv2Clp1Act	:= MagConv2ClpActSetMtrSigOnOrLToR;
			
			IF p_eMagConv2Clp1Stat = MagConv2ClpActSetMtrSigOnOrLToR AND p_eMagConv2Clp1Status = Done THEN
				eMagConv2Clp1Act	:= MagConv2ClpActIdle;
				
				tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		ELSE
			
			eMagConv2Clp1Act	:= MagConv2ClpActSetMtrDirOrRToL;
			
			IF p_eMagConv2Clp1Stat = MagConv2ClpActSetMtrDirOrRToL AND p_eMagConv2Clp1Status = Done THEN
				eMagConv2Clp1Act	:= MagConv2ClpActIdle;
				
				tyP0930MagConv1.tyDC.tyBtnMagOut.bRtCompl	:= FALSE;
			END_IF
			
		END_IF
		
	END_IF
	
	//Magazine Clamper
	IF tyP0930MagConv1.tyCom.tyBtnSwitch.bValue = TRUE THEN
		IF p_bSelClamp1TwoCtrlOut = FALSE THEN
			IF tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue := TRUE;
				tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue := FALSE;
				
				eMagConvSelClp1Act	:= PneuActSetExt;
				
				IF p_eSelClamp1Stat = PneuActSetExt AND p_eSelClamp1Status = Done THEN
					eMagConvSelClp1Act	:= PneuActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl	:= FALSE;
				END_IF	
					
			ELSIF tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl = TRUE THEN	
				tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue := TRUE;
				tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue := FALSE;
				
				eMagConvSelClp1Act	:= PneuActSetRet;
				
				IF p_eSelClamp1Stat = PneuActSetRet AND p_eSelClamp1Status = Done THEN
					eMagConvSelClp1Act	:= PneuActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl	:= FALSE;
				END_IF	
			END_IF	
			
		ELSE	
			IF (tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl = TRUE) OR (tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl = TRUE) THEN
				IF (tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue = TRUE) THEN
					eMagConvSelClp1Act	:= PneuActSetAll;
					
					IF p_eSelClamp1Stat = PneuActSetAll AND p_eSelClamp1Status = Done THEN
						eMagConvSelClp1Act	:= PneuActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF	
		/////////i edited the ret to ext			
				ELSIF (tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue = FALSE) THEN	
					eMagConvSelClp1Act	:= PneuActSetExt;(**)
					
					IF p_eSelClamp1Stat = PneuActSetExt (**) AND p_eSelClamp1Status = Done THEN
						eMagConvSelClp1Act	:= PneuActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					
				ELSIF (tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bValue = FALSE) AND (tyP0930MagConv1.tyDC.tyBtnSelClamp.bValue = TRUE) THEN	
						eMagConvSelClp1Act	:= PneuActSetRet;
					
					IF p_eSelClamp1Stat = PneuActSetRet AND p_eSelClamp1Status = Done THEN
						eMagConvSelClp1Act	:= PneuActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					///////
				ELSE	
					eMagConvSelClp1Act	:= PneuActRstAll;
					
					IF p_eSelClamp1Stat = PneuActRstAll AND p_eSelClamp1Status = Done THEN
						eMagConvSelClp1Act	:= PneuActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnSelUnclamp.bRtCompl		:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnSelClamp.bRtCompl			:= FALSE;
					END_IF
					
				END_IF	
			END_IF	
		END_IF
		
		
		IF p_bMagConv2Clp1ClprTwoOutputCtrl = FALSE THEN
			
			//Fixed
			IF tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue		:= TRUE;
				tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue	:= FALSE;
				
				eMagConv2Clp1Act	:= MagConv2ClpActFixClprSetClamp;
				
				IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprSetClamp AND p_eMagConv2Clp1Status = Done THEN
					eMagConv2Clp1Act	:= MagConv2ClpActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue	:= TRUE;
				tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue		:= FALSE;
				
				eMagConv2Clp1Act	:= MagConv2ClpActFixClprSetUnclamp;
				
				IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprSetUnclamp AND p_eMagConv2Clp1Status = Done THEN
					eMagConv2Clp1Act	:= MagConv2ClpActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
			//Remote
			IF tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue		:= TRUE;
				tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue		:= FALSE;
				
				eMagConv2Clp1Act	:= MagConv2ClpActRmtClprSetClamp;
				
				IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprSetClamp AND p_eMagConv2Clp1Status = Done THEN
					eMagConv2Clp1Act	:= MagConv2ClpActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl = TRUE THEN
				tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue	:= TRUE;
				tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue	:= FALSE;
				
				eMagConv2Clp1Act	:= MagConv2ClpActRmtClprSetUnclamp;
				
				IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprSetUnclamp AND p_eMagConv2Clp1Status = Done THEN
					eMagConv2Clp1Act	:= MagConv2ClpActIdle;
					
					tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
				END_IF
				
			END_IF
			
		ELSE
			
			//Fixed
			IF (tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl = TRUE) OR (tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl = TRUE) THEN
				
				IF (tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue = TRUE) THEN
					
					eMagConv2Clp1Act	:= MagConv2ClpActFixClprSetAll;
					
					IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprSetAll AND p_eMagConv2Clp1Status = Done THEN
						
						eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue = FALSE) THEN
					eMagConv2Clp1Act	:= MagConv2ClpActFixClprSetClamp;
					
					IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprSetClamp AND p_eMagConv2Clp1Status = Done THEN
						
						eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSIF (tyP0930MagConv1.tyDC.tyBtnFixedClamp.bValue = FALSE) AND (tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bValue = TRUE) THEN
					eMagConv2Clp1Act	:= MagConv2ClpActFixClprSetUnclamp;
					
					IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprSetUnclamp AND p_eMagConv2Clp1Status = Done THEN
						
						eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				ELSE
					eMagConv2Clp1Act	:= MagConv2ClpActFixClprRstAll;
					
					IF p_eMagConv2Clp1Stat = MagConv2ClpActFixClprRstAll AND p_eMagConv2Clp1Status = Done THEN
						
						eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
						tyP0930MagConv1.tyDC.tyBtnFixedClamp.bRtCompl	:= FALSE;
						tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.bRtCompl	:= FALSE;
					END_IF
					
				END_IF
				
				//Remote
				IF (tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl = TRUE) OR (tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl = TRUE) THEN
				
					IF (tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue = TRUE) THEN
					
						eMagConv2Clp1Act	:= MagConv2ClpActRmtClprSetAll;
					
						IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprSetAll AND p_eMagConv2Clp1Status = Done THEN
						
							eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
							tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl		:= FALSE;
							tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSIF (tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue = TRUE) AND (tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue = FALSE) THEN
						eMagConv2Clp1Act	:= MagConv2ClpActRmtClprSetClamp;
					
						IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprSetClamp AND p_eMagConv2Clp1Status = Done THEN
						
							eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
							tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSIF (tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bValue = FALSE) AND (tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bValue = TRUE) THEN
						eMagConv2Clp1Act	:= MagConv2ClpActRmtClprSetUnclamp;
					
						IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprSetUnclamp AND p_eMagConv2Clp1Status = Done THEN
						
							eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
							tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					ELSE
						eMagConv2Clp1Act	:= MagConv2ClpActRmtClprRstAll;
					
						IF p_eMagConv2Clp1Stat = MagConv2ClpActRmtClprRstAll AND p_eMagConv2Clp1Status = Done THEN
						
							eMagConv2Clp1Act	:= MagConv2ClpActIdle;
						
							tyP0930MagConv1.tyDC.tyBtnRemoteClamp.bRtCompl	:= FALSE;
							tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
						END_IF
					
					END_IF
				END_IF
				
			END_IF
			
		END_IF
		
		//Fixed
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.bRtCompl		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnFixedClamp.bValue			:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bRtCompl		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bValue		:= FALSE;
			
		//Remote
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bRtCompl		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bValue		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bRtCompl	:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bValue		:= FALSE;	
		
		//Top
		tyP0930MagConv1.tyFB.tyBtnSelClamp.bRtCompl		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnSelClamp.bValue		:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bRtCompl	:= FALSE;
		tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bValue		:= FALSE;	
	END_IF
	
	//Mask
	IF p_eMagConv2Clp1Status = Error THEN
		
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelUnclamp.uiMaskRtStat));	
		
	ELSIF tyP0930MagConv1.tyDC.tyBtnMagIn.bValue = TRUE THEN
		
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelUnclamp.uiMaskRtStat));	
		
	ELSIF tyP0930MagConv1.tyDC.tyBtnMagOut.bValue = TRUE THEN
		
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatOff(ADR(tyP0930MagConv1.tyDC.tyBtnSelUnclamp.uiMaskRtStat));	
		
	ELSE
		
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnMagIn.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnMagOut.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnFixedClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnFixedUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnRemoteUnclamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnSelClamp.uiMaskRtStat));
		fUIInRtStatHide(ADR(tyP0930MagConv1.tyDC.tyBtnSelUnclamp.uiMaskRtStat));	
		
	END_IF
	
	

END_ACTION
