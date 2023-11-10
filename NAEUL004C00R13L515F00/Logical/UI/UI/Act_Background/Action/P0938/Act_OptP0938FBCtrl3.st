
ACTION Act_OptP0938FBCtrl3:
	
	//Motor
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;

		
	IF EDGENEG(bMagAWSelfTest) THEN
		eMag3AWEngageAct	:= PneuActIdle;
		eMagAWOpen3Act	:= MagAWActIdle;
	END_IF
	
	IF bMagAWSelfTest = FALSE THEN
		usiMagAWSelfTestStep2 := 0;
		//Interruption
		IF tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl = TRUE AND (EDGENEG(p_tyDI.bMagPresentSen3) OR EDGEPOS(p_eMag3AWEngageStatus = Error)) THEN
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtCompl	:= TRUE;
		END_IF
		
		IF EDGEPOS((p_udiMagAWOpen3AxisErrID = 21570 OR p_udiMagAWOpen3AxisErrID = 21571) AND tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue = FALSE) THEN
			fbLmtRstTm.IN	:= TRUE;
		END_IF
		
		IF fbLmtRstTm.Q = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtCompl		:= TRUE;
		END_IF
		
		IF (tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue = FALSE AND tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue = FALSE) AND (p_bMagAWOpen3Jogging = TRUE) THEN
			bJogStopMagAW3	:= TRUE;
		END_IF
		
		IF tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtCompl = TRUE THEN
			
			IF tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
				eMagAWOpen3Act		:= MagAWActEngageStop;
				eMag3AWEngageAct	:= PneuActIdle;
			ELSE
				eMagAWOpen3Act		:= MagAWActStop;
			END_IF
			
			IF (p_eMagAWOpen3Stat = MagAWActStop AND p_eMagAWOpen3Status = Done) OR (p_eMagAWOpen3Stat = MagAWActEngageStop AND p_eMagAWOpen3Status = Done) THEN	
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl				:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
					
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bValue				:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bValue		:= FALSE;
						
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtLk					:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtLk		:= FALSE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtCompl = TRUE) OR (tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtCompl = TRUE) OR (bJogStopMagAW3 = TRUE) THEN
			bJogSlow					:= FALSE;
			bJogFast					:= FALSE;
			fbJogSlowToFastDlyTm.IN		:= FALSE;
			
			eMagAWOpen3Act	:= MagAWActJogStop;
			
			IF p_eMagAWOpen3Stat = MagAWActJogStop AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				bJogStopMagAW3	:= FALSE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl				:= FALSE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue			:= TRUE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bValue		:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bValue				:= FALSE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk			:= TRUE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtLk			:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtLk					:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtLk	:= TRUE;
			
			IF tyP0938MagAW.tyMotionStd3.tyBtnPwr.bValue = TRUE THEN
				eMagAWOpen3Act	:= MagAWActPwrOn;
				
				IF p_eMagAWOpen3Stat = MagAWActPwrOn AND p_eMagAWOpen3Status = Done THEN
					eMagAWOpen3Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtLk	:= FALSE;		
				END_IF
			ELSE
				eMagAWOpen3Act	:= MagAWActPwrOff;
				
				IF p_eMagAWOpen3Stat = MagAWActPwrOff AND p_eMagAWOpen3Status = Done THEN
					eMagAWOpen3Act	:= MagAWActIdle;
					
					tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtCompl	:= FALSE;
					tyP0938MagAW.tyMotionStd3.tyBtnPwr.bRtLk	:= FALSE;
				END_IF
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen3Act	:= MagAWActHoming;
			
			IF p_eMagAWOpen3Stat = MagAWActHoming AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnOrigin.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnRst.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtLk	:= TRUE;
			
			eMagAWOpen3Act	:= MagAWActRstAxisErr;
			
			IF p_eMagAWOpen3Stat = MagAWActRstAxisErr AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnRst.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnRst.bRtLk	:= FALSE;
				
				fbLmtRstTm.IN	:= FALSE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW3.tyBtnGo.bValue		:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= FALSE;
			
			tyP0938MagAW.tyMagAW3.tyBtnGo.bRtLk			:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= FALSE;
			
			diMnlMagAW3GoWidth	:= tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValue;
			diMnlMagAW3NomSpd	:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActGoWidth;
			
			IF p_eMagAWOpen3Stat = MagAWActGoWidth AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtCompl		:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnGo.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= TRUE;
				
				tyP0938MagAW.tyMagAW3.tyBtnGo.bRtLk			:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW3TargetPos	:= tyP0938MagAW.tyMotionStd3.tyNumTargetPos.diValue;
			diMnlMagAW3NomSpd		:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActMovAbs;
				
			IF p_eMagAWOpen3Stat = MagAWActMovAbs AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnMovAbs.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= TRUE;
			END_IF
		
		ELSIF tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtLk		:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= FALSE;
			
			diMnlMagAW3StepSize	:= tyP0938MagAW.tyMotionStd3.tyNumStepSize.diValue;
			diMnlMagAW3NomSpd	:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActMovRel;
			
			IF p_eMagAWOpen3Stat = MagAWActMovRel AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act	:= MagAWActIdle;
				
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bValue	:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= TRUE;
				
				tyP0938MagAW.tyMotionStd3.tyBtnMovRel.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= TRUE;	
			END_IF
		
		ELSIF (tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW3JogSpd	:= tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen3Stat = MagAWActJogOpen AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen3Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd3.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW3JogSpd	:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActJogOpen;
			
			IF p_eMagAWOpen3Stat = MagAWActJogOpen AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen3Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW3JogSpd	:= tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen3Stat = MagAWActJogClose AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act				:= MagAWActIdle;
				bJogSlow				:= TRUE;
			ELSIF p_eMagAWOpen3Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogSlow				:= TRUE;
			END_IF
			
		ELSIF (tyP0938MagAW.tyMotionStd3.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue	:= FALSE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk	:= FALSE;
			
			fbJogSlowToFastDlyTm.IN	:= TRUE;
			
			diMnlMagAW3JogSpd	:= tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue;
			
			eMagAWOpen3Act	:= MagAWActJogClose;
			
			IF p_eMagAWOpen3Stat = MagAWActJogClose AND p_eMagAWOpen3Status = Done THEN
				eMagAWOpen3Act				:= MagAWActIdle;
				bJogFast				:= TRUE;
			ELSIF p_eMagAWOpen3Status = Error THEN
				fbJogSlowToFastDlyTm.IN	:= FALSE;
				bJogFast				:= TRUE;
			END_IF
			
		ELSIF tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl = TRUE THEN
			tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bValue	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue		:= FALSE;
			
			tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtLk	:= TRUE;
			tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk		:= FALSE;
			
			eMagAWOpen3Act	:= MagAWActEngage;
			
			IF p_bMagAWOpen3Engaging = TRUE THEN
				eMag3AWEngageAct	:= PneuActExt;
				
				tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue	:= FALSE;
			END_IF
			
			IF (p_eMagAWOpen3Stat = MagAWActEngage AND p_eMagAWOpen3Status = Done) AND (p_eMag3AWEngageStat = PneuActExt AND p_eMag3AWEngageStatus = Done) THEN
				eMagAWOpen3Act		:= MagAWActIdle;
				eMag3AWEngageAct	:= PneuActIdle;
				
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtCompl	:= FALSE;
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bValue		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bValue			:= TRUE;
				
				tyP0938MagAW.tyMagAW3.tyBtnMtrGearEngage.bRtLk		:= FALSE;
				tyP0938MagAW.tyMotionStd3.tyBtnStop.bRtLk			:= TRUE;
			END_IF
			
		END_IF
		
		
		
		//Pneumatic
		IF p_bMag3AWEngageTwoCtrlOut = FALSE THEN
			
			IF tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue	:= FALSE;
				
				eMag3AWEngageAct	:= PneuActSetRet;
				
				IF p_eMag3AWEngageStat = PneuActSetRet AND p_eMag3AWEngageStatus = Done THEN
					eMag3AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
				END_IF
				
			ELSIF tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl = TRUE THEN
				tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue	:= TRUE;
				tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue	:= FALSE;
				
				eMag3AWEngageAct	:= PneuActSetExt;
				
				IF p_eMag3AWEngageStat = PneuActSetExt AND p_eMag3AWEngageStatus = Done THEN
					eMag3AWEngageAct	:= PneuActIdle;
					
					tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl	:= FALSE;
				END_IF
				
			END_IF	
					
		ELSE
			
			IF (tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl = TRUE) OR (tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl = TRUE) THEN
				
				IF (tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue = TRUE) THEN
					eMag3AWEngageAct	:= PneuActSetAll;
					
					IF p_eMag3AWEngageStat = PneuActSetAll AND p_eMag3AWEngageStatus = Done THEN
						eMag3AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF	
					
				ELSIF (tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue = TRUE) AND (tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue = FALSE) THEN	
					eMag3AWEngageAct	:= PneuActSetRet;
					
					IF p_eMag3AWEngageStat = PneuActSetRet AND p_eMag3AWEngageStatus = Done THEN
						eMag3AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSIF (tyP0938MagAW.tyMagAW3.tyBtnDisengage.bValue = FALSE) AND (tyP0938MagAW.tyMagAW3.tyBtnEngage.bValue = TRUE) THEN	
					eMag3AWEngageAct	:= PneuActSetExt;
					
					IF p_eMag3AWEngageStat = PneuActSetExt AND p_eMag3AWEngageStatus = Done THEN
						eMag3AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				ELSE	
					eMag3AWEngageAct	:= PneuActRstAll;
					
					IF p_eMag3AWEngageStat = PneuActRstAll AND p_eMag3AWEngageStatus = Done THEN
						eMag3AWEngageAct	:= PneuActIdle;
						
						tyP0938MagAW.tyMagAW3.tyBtnDisengage.bRtCompl	:= FALSE;
						tyP0938MagAW.tyMagAW3.tyBtnEngage.bRtCompl		:= FALSE;
					END_IF
					
				END_IF
				
			END_IF	
			
		END_IF

	ELSE
		CASE usiMagAWSelfTestStep2 OF
				
			0: IF p_bMagConv2Clp3ClprFixClampCtrl THEN
						
					eMagAWOpen3Act	:= MagAWActEngage;
				
					
					eMag3AWEngageAct	:= PneuActExt;
							
					IF (p_eMagAWOpen3Stat = MagAWActEngage AND p_eMagAWOpen3Status = Done) 
						AND (p_eMag3AWEngageStat = PneuActExt AND p_eMag3AWEngageStatus = Done) 
						THEN
						eMagAWOpen3Act		:= MagAWActIdle;
						eMag3AWEngageAct	:= PneuActIdle;
						usiMagAWSelfTestStep2 := 10;
					END_IF
					
				END_IF	
					
				
				
			10:
				eMagAWOpen3Act	:= MagAWActHoming;
				
				IF p_eMagAWOpen3Stat = MagAWActHoming AND p_eMagAWOpen3Status = Done THEN
					eMagAWOpen3Act	:= MagAWActIdle;
					usiMagAWSelfTestStep2 := 20;
				END_IF
				
			
			20:
						
				diMnlMagAW3GoWidth	:= tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValue;
				diMnlMagAW3NomSpd		:= tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue;
				eMagAWOpen3Act	:= MagAWActGoWidth;
				
				IF p_eMagAWOpen3Stat = MagAWActGoWidth AND p_eMagAWOpen3Status = Done THEN
					eMagAWOpen3Act	:= MagAWActIdle;
					usiMagAWSelfTestStep2 := 30;
				END_IF
					
			30: 
				eMag3AWEngageAct	:= PneuActSetRet;
						
				IF p_eMag3AWEngageStat = PneuActSetRet AND p_eMag3AWEngageStatus = Done THEN
					eMag3AWEngageAct	:= PneuActIdle;
					usiMagAWSelfTestStep2 := 40;
				END_IF
				
			40: 
				fbMagAWSelfTestTim2(IN:= TRUE);
				IF fbMagAWSelfTestTim2.Q THEN
					usiMagAWSelfTestStep2 := 0;
					fbMagAWSelfTestTim2(IN:= FALSE);
				END_IF
		END_CASE
	END_IF	
	
END_ACTION
