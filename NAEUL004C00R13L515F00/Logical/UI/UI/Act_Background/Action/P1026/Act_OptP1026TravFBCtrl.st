
ACTION Act_OptP1026TravFBCtrl:
	
	fbJogSlowToFastDlyTm.PT			:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
//	IF EDGEPOS((p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571) 
	IF EDGEPOS((p_bTravFwdLmtSen OR p_bTravRevLmtSen OR p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571) 		
		AND tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = FALSE 
		AND tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = FALSE) THEN
	
		fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = FALSE AND tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = FALSE) AND (p_bTravJogging = TRUE) THEN
		bJogStopTrav	:= TRUE;
	END_IF
	
	IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl = TRUE THEN
		eTravAct		:= TravActStop;
	
		IF p_eTravStat = TravActStop AND p_eTravStatus = Done THEN	
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl			:= FALSE;
				
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bValue				:= FALSE;
					
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk			:= FALSE;
		
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtLk						:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtLk						:= FALSE;
		END_IF	
		
	ELSIF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl = TRUE) OR (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl = TRUE) OR (bJogStopTrav = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eTravAct		:= TravActJogStop;

		IF p_eTravStat = TravActJogStop AND p_eTravStatus = Done THEN	
			eTravAct		:= TravActIdle;
			
			bJogStopTrav	:= FALSE;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl			:= FALSE;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bValue				:= FALSE;
				
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtLk				:= FALSE;
		END_IF	
		
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk				:= TRUE;
		
		IF tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bValue = TRUE THEN
			eTravAct		:= TravActPwrOn;
			
			IF p_eTravStat = TravActPwrOn AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eTravAct		:= TravActPwrOff;
			
			IF p_eTravStat = TravActPwrOff AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue			:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk				:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		eTravAct		:= TravActHoming;
			
		IF p_eTravStat = TravActHoming AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bValue				:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk				:= TRUE;
		
		eTravAct		:= TravActRstAxisErr;
			
		IF p_eTravStat = TravActRstAxisErr AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bValue		:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlTravNomSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoAPos;
			
		IF p_eTravStat = TravActGoAPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	
	ELSIF tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bValue		:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlTravNomSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoBPos;
			
		IF p_eTravStat = TravActGoBPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue	:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue		:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlTravTargetPos	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.diValue;
		diMnlTravNomSpd		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovAbs;
			
		IF p_eTravStat = TravActMovAbs AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue			:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk				:= TRUE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlTravStepSize	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.diValue;
		diMnlTravNomSpd		:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovRel;
			
		IF p_eTravStat = TravActMovRel AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue			:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk			:= TRUE;	
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue					:= FALSE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
	
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast	:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF
	
	IF tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		eOutShutterAct2	:= PneuActRet;
		eOutShutterAct3	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			AND (p_eOutShutterStat2 = PneuActRet AND p_eOutShutterStatus2 = Done)
			AND (p_eOutShutterStat3 = PneuActRet AND p_eOutShutterStatus3 = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;	
			eOutShutterAct2	:= PneuActIdle;
			eOutShutterAct3	:= PneuActIdle;
			tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error OR p_eOutShutterStatus2 = Error OR p_eOutShutterStatus3 = Error THEN
			tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
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
			tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
	IF p_eTravStat = TravActJogStop AND (p_eTravStatus = Done OR p_eTravStatus = Error) THEN	
		eTravAct		:= TravActIdle;
	END_IF
		
	//bypass curtain sensor
	IF bTeachTravPosA OR bTeachTravPosB THEN
		bBypCurtainSen			:= tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.bValue OR tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.bValue;
		bBypCurtainPBLED		:= tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.bValue OR tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.bValue;
	END_IF

END_ACTION
