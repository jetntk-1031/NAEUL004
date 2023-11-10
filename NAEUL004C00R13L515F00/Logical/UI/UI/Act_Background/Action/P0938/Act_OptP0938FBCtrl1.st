
ACTION Act_OptP0938FBCtrl1:
	
	//Motor
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	IF EDGENEG(bMagAWSelfTest) THEN
		eMag1AWEngageAct	:= PneuActIdle;
		eMagAWOpen1Act	:= MagAWActIdle;
	END_IF
	
	IF bMagAWSelfTest = FALSE THEN
		
		usiMagAWSelfTestStep := 0;
		//Interruption
		IF tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl = TRUE AND (EDGENEG(p_tyDI.bMagPresentSen1) OR EDGEPOS(p_eMag1AWEngageStatus = Error)) THEN
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtCompl	:= TRUE;
		END_IF
		
		IF EDGEPOS((p_udiMagAWOpen1AxisErrID = 21570 OR p_udiMagAWOpen1AxisErrID = 21571) AND tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue = FALSE) THEN
			fbLmtRstTm.IN	:= TRUE;
		END_IF
		
		IF fbLmtRstTm.Q = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtCompl		:= TRUE;
		END_IF
		
		IF (tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue = FALSE) AND (p_bMagAWOpen1Jogging = TRUE) THEN
			bJogStopMagAW1	:= TRUE;
		END_IF
		
		IF tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtCompl = TRUE THEN
			
			IF tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
				eMagAWOpen1Act		:= MagAWActEngageStop;
				eMag1AWEngageAct	:= PneuActIdle;
			ELSE
				eMagAWOpen1Act		:= MagAWActStop;
			END_IF
			
			IF (p_eMagAWOpen1Stat = MagAWActStop AND p_eMagAWOpen1Status = Done) OR (p_eMagAWOpen1Stat = MagAWActEngageStop AND p_eMagAWOpen1Status = Done) THEN	
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl				:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bValue				:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bValue		:= FALSE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtLk					:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtLk		:= FALSE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtCompl = TRUE) OR (tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtCompl = TRUE) OR (bJogStopMagAW1 = TRUE) THEN
			bJogSlow					:= FALSE;
			bJogFast					:= FALSE;
			fbJogSlowToFastDlyTm.IN		:= FALSE;
			
			eMagAWOpen1Act	:= MagAWActJogStop;
			
			IF p_eMagAWOpen1Stat = MagAWActJogStop AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				bJogStopMagAW1	:= FALSE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl				:= FALSE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bValue				:= FALSE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtLk					:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtLk	:= TRUE;
			
			IF tyP0938MagAW.tyMotionStd1.tyBtnPwr.bValue = TRUE THEN
				eMagAWOpen1Act	:= MagAWActPwrOn;
				
				IF p_eMagAWOpen1Stat = MagAWActPwrOn AND p_eMagAWOpen1Status = Done THEN
					eMagAWOpen1Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtLk	:= FALSE;		
				END_IF
			ELSE
				eMagAWOpen1Act	:= MagAWActPwrOff;
				
				IF p_eMagAWOpen1Stat = MagAWActPwrOff AND p_eMagAWOpen1Status = Done THEN
					eMagAWOpen1Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd1.tyBtnPwr.bRtLk	:= FALSE;
				END_IF
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen1Act	:= MagAWActHoming;
			
			IF p_eMagAWOpen1Stat = MagAWActHoming AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnOrigin.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnRst.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtLk	:= TRUE;
			
			eMagAWOpen1Act	:= MagAWActRstAxisErr;
			
			IF p_eMagAWOpen1Stat = MagAWActRstAxisErr AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnRst.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnRst.bRtLk	:= FALSE;
				
				fbLmtRstTm.IN	:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW1.tyBtnGo.bValue		:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= FALSE;
			
			tyP0938MagAW.tyMagAW1.tyBtnGo.bRtLk			:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= FALSE;
			
			diMnlMagAW1GoWidth	:= tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValue;
			diMnlMagAW1NomSpd	:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActGoWidth;
			
			IF p_eMagAWOpen1Stat = MagAWActGoWidth AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnGo.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= TRUE;
				
				tyP0938MagAW.tyMagAW1.tyBtnGo.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW1TargetPos	:= tyP0938MagAW.tyMotionStd1.tyNumTargetPos.diValue;
			diMnlMagAW1NomSpd		:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActMovAbs;
				
			IF p_eMagAWOpen1Stat = MagAWActMovAbs AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnMovAbs.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= TRUE;
			END_IF
		
		ELSIF tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW1StepSize	:= tyP0938MagAW.tyMotionStd1.tyNumStepSize.diValue;
			diMnlMagAW1NomSpd	:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActMovRel;
			
			IF p_eMagAWOpen1Stat = MagAWActMovRel AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd1.tyBtnMovRel.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= TRUE;	
			END_IF
		
		ELSIF (tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW1JogSpd	:= tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen1Stat = MagAWActJogOpen AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen1Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd1.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW1JogSpd	:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen1Stat = MagAWActJogOpen AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen1Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW1JogSpd	:= tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen1Stat = MagAWActJogClose AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen1Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd1.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW1JogSpd	:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
			
			eMagAWOpen1Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen1Stat = MagAWActJogClose AND p_eMagAWOpen1Status = Done THEN
				eMagAWOpen1Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen1Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtLk	:= TRUE;
			tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen1Act	:= MagAWActEngage;
			
			IF p_bMagAWOpen1Engaging = TRUE THEN
				eMag1AWEngageAct	:= PneuActExt;
				
				tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue	:= FALSE;
			END_IF
			
			IF (p_eMagAWOpen1Stat = MagAWActEngage AND p_eMagAWOpen1Status = Done) AND (p_eMag1AWEngageStat = PneuActExt AND p_eMag1AWEngageStatus = Done) THEN
				eMagAWOpen1Act		:= MagAWActIdle;
				eMag1AWEngageAct	:= PneuActIdle;
				
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bValue			:= TRUE;
				
				tyP0938MagAW.tyMagAW1.tyBtnMtrGearEngage.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd1.tyBtnStop.bRtLk			:= TRUE;
			END_IF
			
		END_IF
		
		
		
		//Pneumatic
		IF p_bMag1AWEngageTwoCtrlOut = FALSE THEN
			
			IF tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue	:= FALSE;
				
				eMag1AWEngageAct	:= PneuActSetRet;
				
				IF p_eMag1AWEngageStat = PneuActSetRet AND p_eMag1AWEngageStatus = Done THEN
					eMag1AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue	:= FALSE;
				
				eMag1AWEngageAct	:= PneuActSetExt;
				
				IF p_eMag1AWEngageStat = PneuActSetExt AND p_eMag1AWEngageStatus = Done THEN
					eMag1AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl = TRUE) OR (tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl = TRUE) THEN
				
				IF (tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue = TRUE) THEN
					eMag1AWEngageAct	:= PneuActSetAll;
					
					IF p_eMag1AWEngageStat = PneuActSetAll AND p_eMag1AWEngageStatus = Done THEN
						eMag1AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF	
					
				ELSIF (tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue = FALSE) THEN	
					eMag1AWEngageAct	:= PneuActSetRet;
					
					IF p_eMag1AWEngageStat = PneuActSetRet AND p_eMag1AWEngageStatus = Done THEN
						eMag1AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0938MagAW.tyMagAW1.tyBtnDisengage.bValue = FALSE) AND (tyP0938MagAW.tyMagAW1.tyBtnEngage.bValue = TRUE) THEN	
					eMag1AWEngageAct	:= PneuActSetExt;
					
					IF p_eMag1AWEngageStat = PneuActSetExt AND p_eMag1AWEngageStatus = Done THEN
						eMag1AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSE	
					eMag1AWEngageAct	:= PneuActRstAll;
					
					IF p_eMag1AWEngageStat = PneuActRstAll AND p_eMag1AWEngageStatus = Done THEN
						eMag1AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW1.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW1.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF

	ELSE
	
		CASE usiMagAWSelfTestStep OF
			
			0: IF p_bMagConv2Clp1ClprFixClampCtrl THEN
					
					eMagAWOpen1Act	:= MagAWActEngage;
			
				
						eMag1AWEngageAct	:= PneuActExt;
						
						IF (p_eMagAWOpen1Stat = MagAWActEngage AND p_eMagAWOpen1Status = Done) 
							AND (p_eMag1AWEngageStat = PneuActExt AND p_eMag1AWEngageStatus = Done) 
						THEN
							eMagAWOpen1Act		:= MagAWActIdle;
							eMag1AWEngageAct	:= PneuActIdle;
							usiMagAWSelfTestStep := 10;
						END_IF
				
				END_IF	
				
			
			
			10:
				eMagAWOpen1Act	:= MagAWActHoming;
			
				IF p_eMagAWOpen1Stat = MagAWActHoming AND p_eMagAWOpen1Status = Done THEN
					eMagAWOpen1Act	:= MagAWActIdle;
					usiMagAWSelfTestStep := 20;
				END_IF
			
		
			20:
					
				diMnlMagAW1GoWidth	:= tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValue;
				diMnlMagAW1NomSpd		:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
				eMagAWOpen1Act	:= MagAWActGoWidth;
			
				IF p_eMagAWOpen1Stat = MagAWActGoWidth AND p_eMagAWOpen1Status = Done THEN
					eMagAWOpen1Act	:= MagAWActIdle;
					usiMagAWSelfTestStep := 30;
				END_IF
				
			30: 
				eMag1AWEngageAct	:= PneuActSetRet;
					
				IF p_eMag1AWEngageStat = PneuActSetRet AND p_eMag1AWEngageStatus = Done THEN
					eMag1AWEngageAct	:= PneuActIdle;
					usiMagAWSelfTestStep := 40;
				END_IF
			
			40: 
				fbMagAWSelfTestTim(IN:= TRUE);
				IF fbMagAWSelfTestTim.Q THEN
						usiMagAWSelfTestStep := 0;
						fbMagAWSelfTestTim(IN:= FALSE);
					END_IF
		END_CASE
	END_IF	
						
			
			
END_ACTION
