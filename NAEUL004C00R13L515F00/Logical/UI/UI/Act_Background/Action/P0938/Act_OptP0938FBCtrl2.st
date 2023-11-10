
ACTION Act_OptP0938FBCtrl2:
	
	//Motor
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	IF EDGENEG(bMagAWSelfTest) THEN
		eMag2AWEngageAct	:= PneuActIdle;
		eMagAWOpen2Act	:= MagAWActIdle;
	END_IF
	
	IF bMagAWSelfTest = FALSE THEN
		usiMagAWSelfTestStep1 := 0;
		//Interruption
		IF tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl = TRUE AND (EDGENEG(p_tyDI.bMagPresentSen2) OR EDGEPOS(p_eMag2AWEngageStatus = Error)) THEN
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtCompl	:= TRUE;
		END_IF
		
		IF EDGEPOS((p_udiMagAWOpen2AxisErrID = 21570 OR p_udiMagAWOpen2AxisErrID = 21571) AND tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue = FALSE) THEN
			fbLmtRstTm.IN	:= TRUE;
		END_IF
		
		IF fbLmtRstTm.Q = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtCompl		:= TRUE;
		END_IF
		
		IF (tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue = FALSE) AND (p_bMagAWOpen2Jogging = TRUE) THEN
			bJogStopMagAW2	:= TRUE;
		END_IF
		
		IF tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtCompl = TRUE THEN
			
			IF tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
				eMagAWOpen2Act		:= MagAWActEngageStop;
				eMag2AWEngageAct	:= PneuActIdle;
			ELSE
				eMagAWOpen2Act		:= MagAWActStop;
			END_IF
			
			IF (p_eMagAWOpen2Stat = MagAWActStop AND p_eMagAWOpen2Status = Done) OR (p_eMagAWOpen2Stat = MagAWActEngageStop AND p_eMagAWOpen2Status = Done) THEN	
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl				:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
					
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bValue				:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bValue		:= FALSE;
						
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtLk					:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtLk		:= FALSE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtCompl = TRUE) OR (tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtCompl = TRUE) OR (bJogStopMagAW2 = TRUE) THEN
			bJogSlow					:= FALSE;
			bJogFast					:= FALSE;
			fbJogSlowToFastDlyTm.IN		:= FALSE;
			
			eMagAWOpen2Act	:= MagAWActJogStop;
			
			IF p_eMagAWOpen2Stat = MagAWActJogStop AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				bJogStopMagAW2	:= FALSE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl				:= FALSE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bValue				:= FALSE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtLk					:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtLk	:= TRUE;
			
			IF tyP0938MagAW.tyMotionStd2.tyBtnPwr.bValue = TRUE THEN
				eMagAWOpen2Act	:= MagAWActPwrOn;
				
				IF p_eMagAWOpen2Stat = MagAWActPwrOn AND p_eMagAWOpen2Status = Done THEN
					eMagAWOpen2Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtLk	:= FALSE;		
				END_IF
			ELSE
				eMagAWOpen2Act	:= MagAWActPwrOff;
				
				IF p_eMagAWOpen2Stat = MagAWActPwrOff AND p_eMagAWOpen2Status = Done THEN
					eMagAWOpen2Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd2.tyBtnPwr.bRtLk	:= FALSE;
				END_IF
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen2Act	:= MagAWActHoming;
			
			IF p_eMagAWOpen2Stat = MagAWActHoming AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnOrigin.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnRst.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtLk	:= TRUE;
			
			eMagAWOpen2Act	:= MagAWActRstAxisErr;
			
			IF p_eMagAWOpen2Stat = MagAWActRstAxisErr AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnRst.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnRst.bRtLk	:= FALSE;
				
				fbLmtRstTm.IN	:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW2.tyBtnGo.bValue		:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= FALSE;
			
			tyP0938MagAW.tyMagAW2.tyBtnGo.bRtLk			:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= FALSE;
			
			diMnlMagAW2GoWidth	:= tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValue;
			diMnlMagAW2NomSpd	:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActGoWidth;
			
			IF p_eMagAWOpen2Stat = MagAWActGoWidth AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnGo.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= TRUE;
				
				tyP0938MagAW.tyMagAW2.tyBtnGo.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW2TargetPos	:= tyP0938MagAW.tyMotionStd2.tyNumTargetPos.diValue;
			diMnlMagAW2NomSpd		:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActMovAbs;
				
			IF p_eMagAWOpen2Stat = MagAWActMovAbs AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnMovAbs.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= TRUE;
			END_IF
		
		ELSIF tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW2StepSize	:= tyP0938MagAW.tyMotionStd2.tyNumStepSize.diValue;
			diMnlMagAW2NomSpd	:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActMovRel;
			
			IF p_eMagAWOpen2Stat = MagAWActMovRel AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd2.tyBtnMovRel.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= TRUE;	
			END_IF
		
		ELSIF (tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW2JogSpd	:= tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen2Stat = MagAWActJogOpen AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen2Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd2.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW2JogSpd	:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen2Stat = MagAWActJogOpen AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen2Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW2JogSpd	:= tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen2Stat = MagAWActJogClose AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen2Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd2.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW2JogSpd	:= tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue;
			
			eMagAWOpen2Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen2Stat = MagAWActJogClose AND p_eMagAWOpen2Status = Done THEN
				eMagAWOpen2Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen2Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtLk	:= TRUE;
			tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen2Act	:= MagAWActEngage;
			
			IF p_bMagAWOpen2Engaging = TRUE THEN
				eMag2AWEngageAct	:= PneuActExt;
				
				tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue	:= FALSE;
			END_IF
			
			IF (p_eMagAWOpen2Stat = MagAWActEngage AND p_eMagAWOpen2Status = Done) AND (p_eMag2AWEngageStat = PneuActExt AND p_eMag2AWEngageStatus = Done) THEN
				eMagAWOpen2Act		:= MagAWActIdle;
				eMag2AWEngageAct	:= PneuActIdle;
				
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bValue			:= TRUE;
				
				tyP0938MagAW.tyMagAW2.tyBtnMtrGearEngage.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd2.tyBtnStop.bRtLk			:= TRUE;
			END_IF
			
		END_IF
		
		
		
		//Pneumatic
		IF p_bMag2AWEngageTwoCtrlOut = FALSE THEN
			
			IF tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue	:= FALSE;
				
				eMag2AWEngageAct	:= PneuActSetRet;
				
				IF p_eMag2AWEngageStat = PneuActSetRet AND p_eMag2AWEngageStatus = Done THEN
					eMag2AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue	:= FALSE;
				
				eMag2AWEngageAct	:= PneuActSetExt;
				
				IF p_eMag2AWEngageStat = PneuActSetExt AND p_eMag2AWEngageStatus = Done THEN
					eMag2AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl = TRUE) OR (tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl = TRUE) THEN
				
				IF (tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue = TRUE) THEN
					eMag2AWEngageAct	:= PneuActSetAll;
					
					IF p_eMag2AWEngageStat = PneuActSetAll AND p_eMag2AWEngageStatus = Done THEN
						eMag2AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF	
					
				ELSIF (tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue = FALSE) THEN	
					eMag2AWEngageAct	:= PneuActSetRet;
					
					IF p_eMag2AWEngageStat = PneuActSetRet AND p_eMag2AWEngageStatus = Done THEN
						eMag2AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0938MagAW.tyMagAW2.tyBtnDisengage.bValue = FALSE) AND (tyP0938MagAW.tyMagAW2.tyBtnEngage.bValue = TRUE) THEN	
					eMag2AWEngageAct	:= PneuActSetExt;
					
					IF p_eMag2AWEngageStat = PneuActSetExt AND p_eMag2AWEngageStatus = Done THEN
						eMag2AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSE	
					eMag2AWEngageAct	:= PneuActRstAll;
					
					IF p_eMag2AWEngageStat = PneuActRstAll AND p_eMag2AWEngageStatus = Done THEN
						eMag2AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW2.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW2.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF
	
	ELSE
		CASE usiMagAWSelfTestStep1 OF
			
			0: IF p_bMagConv2Clp2ClprFixClampCtrl THEN
					
					eMagAWOpen2Act	:= MagAWActEngage;
			
				
					eMag2AWEngageAct	:= PneuActExt;
						
					IF (p_eMagAWOpen2Stat = MagAWActEngage AND p_eMagAWOpen2Status = Done) 
						AND (p_eMag2AWEngageStat = PneuActExt AND p_eMag2AWEngageStatus = Done) 
						THEN
						eMagAWOpen2Act		:= MagAWActIdle;
						eMag2AWEngageAct	:= PneuActIdle;
						usiMagAWSelfTestStep1 := 10;
					END_IF
				
				END_IF	
				
			
			
			10:
				eMagAWOpen2Act	:= MagAWActHoming;
			
				IF p_eMagAWOpen2Stat = MagAWActHoming AND p_eMagAWOpen2Status = Done THEN
					eMagAWOpen2Act	:= MagAWActIdle;
					usiMagAWSelfTestStep1 := 20;
				END_IF
			
		
			20:
					
				diMnlMagAW2GoWidth	:= tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValue;
				diMnlMagAW2NomSpd		:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
				eMagAWOpen2Act	:= MagAWActGoWidth;
			
				IF p_eMagAWOpen2Stat = MagAWActGoWidth AND p_eMagAWOpen2Status = Done THEN
					eMagAWOpen2Act	:= MagAWActIdle;
					usiMagAWSelfTestStep1 := 30;
				END_IF
				
			30: 
				eMag2AWEngageAct	:= PneuActSetRet;
					
				IF p_eMag2AWEngageStat = PneuActSetRet AND p_eMag2AWEngageStatus = Done THEN
					eMag2AWEngageAct	:= PneuActIdle;
					usiMagAWSelfTestStep1 := 40;
				END_IF
			
			40: 
				fbMagAWSelfTestTim1(IN:= TRUE);
				IF fbMagAWSelfTestTim1.Q THEN
					usiMagAWSelfTestStep1 := 0;
					fbMagAWSelfTestTim1(IN:= FALSE);
				END_IF
		END_CASE
	END_IF	
		
END_ACTION
