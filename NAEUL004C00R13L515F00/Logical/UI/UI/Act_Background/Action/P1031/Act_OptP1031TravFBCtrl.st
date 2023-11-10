
ACTION Act_OptP1031TravFBCtrl:
	
	fbJogSlowToFastDlyTm.PT			:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
//	IF EDGEPOS((p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571) 
	IF EDGEPOS((p_bTravFwdLmtSen OR p_bTravRevLmtSen OR p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571) 		
		AND tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = FALSE 
		AND tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = FALSE) THEN
		fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = FALSE AND tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = FALSE) AND (p_bTravJogging = TRUE) THEN
		bJogStopTrav	:= TRUE;
	END_IF
	
	IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl = TRUE THEN
		eTravAct		:= TravActStop;
	
		IF p_eTravStat = TravActStop AND p_eTravStatus = Done THEN	
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl		:= FALSE;
				
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bValue			:= FALSE;
					
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk		:= FALSE;
		
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtLk			:= FALSE;
		END_IF	
		
	ELSIF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl = TRUE) OR (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl = TRUE) OR (bJogStopTrav = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eTravAct		:= TravActJogStop;

		IF p_eTravStat = TravActJogStop AND p_eTravStatus = Done THEN	
			eTravAct		:= TravActIdle;
			
			bJogStopTrav	:= FALSE;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl		:= FALSE;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bValue			:= FALSE;
				
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtLk			:= FALSE;
				
		END_IF	
		
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk				:= TRUE;
		
		IF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bValue = TRUE THEN
			eTravAct		:= TravActPwrOn;
			
			IF p_eTravStat = TravActPwrOn AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl	:= FALSE;
				tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eTravAct		:= TravActPwrOff;
			
			IF p_eTravStat = TravActPwrOff AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		eTravAct		:= TravActHoming;
			
		IF p_eTravStat = TravActHoming AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk				:= TRUE;
		
		eTravAct		:= TravActRstAxisErr;
			
		IF p_eTravStat = TravActRstAxisErr AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bValue		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtLk		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlTravNomSpd		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoDPos;
			
		IF p_eTravStat = TravActGoDPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
		
	
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bValue		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtLk		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlTravNomSpd		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoEPos;
			
		IF p_eTravStat = TravActGoEPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bValue		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtLk		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk		:= FALSE;
		
	
		diMnlTravNomSpd		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoFPos;
			
		IF p_eTravStat = TravActGoFPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlTravTargetPos	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.diValue;
		diMnlTravNomSpd		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovAbs;
			
		IF p_eTravStat = TravActMovAbs AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlTravStepSize	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.diValue;
		diMnlTravNomSpd		:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovRel;
			
		IF p_eTravStat = TravActMovRel AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;	
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue					:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
	
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast	:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF
	
	IF tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		eOutShutterAct2 := PneuActRet;
		eOutShutterAct3 := PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			AND (p_eOutShutterStat2 = PneuActRet AND p_eOutShutterStatus2 = Done)
			AND (p_eOutShutterStat3 = PneuActRet AND p_eOutShutterStatus3 = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;	
			eOutShutterAct2	:= PneuActIdle;	
			eOutShutterAct3	:= PneuActIdle;	
			tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error OR p_eOutShutterStatus2 = Error OR p_eOutShutterStatus3 = Error THEN
			tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;
		eOutShutterAct2	:= PneuActExt;
		eOutShutterAct3	:= PneuActExt;
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			AND (p_eOutShutterStat2 = PneuActExt AND p_eOutShutterStatus2 = Done) 
			AND (p_eOutShutterStat3 = PneuActExt AND p_eOutShutterStatus3 = Done) 
			
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;	
			eOutShutterAct2	:= PneuActIdle;
			eOutShutterAct3	:= PneuActIdle;
			tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
	IF p_eTravStat = TravActJogStop AND (p_eTravStatus = Done OR p_eTravStatus = Error) THEN	
		eTravAct		:= TravActIdle;
	END_IF
		
	//bypass curtain sensor
	IF bTeachTravPosMag1 OR bTeachTravPosMag2 OR bTeachTravPosMag3 THEN
		bBypCurtainSen			:= tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.bValue;
		bBypCurtainPBLED		:= tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.bValue;
	END_IF

END_ACTION
