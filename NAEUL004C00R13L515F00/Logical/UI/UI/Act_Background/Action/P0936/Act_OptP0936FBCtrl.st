
ACTION Act_OptP0936FBCtrl:
	
	fbJogSlowToFastDlyTm.PT			:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
//	IF EDGEPOS((p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571) 
	IF EDGEPOS ((p_bTravFwdLmtSen OR p_bTravRevLmtSen OR p_udiTravAxisErrID = 21570 OR p_udiTravAxisErrID = 21571)	
		AND tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue = FALSE 
		AND tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue = FALSE) 
	THEN
		fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue = FALSE AND tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue = FALSE) AND (p_bTravJogging = TRUE) THEN
		bJogStopTrav	:= TRUE;
	END_IF
	
	IF tyP0936Trav.tyMotionStd.tyBtnStop.bRtCompl = TRUE THEN
		eTravAct		:= TravActStop;
	
		IF p_eTravStat = TravActStop AND p_eTravStatus = Done THEN	
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl			:= FALSE;	
			
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bValue				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bValue				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bValue				:= FALSE;
					
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtLk				:= FALSE;
		END_IF
		
	ELSIF (tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtCompl = TRUE) OR (tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtCompl = TRUE) OR (bJogStopTrav = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eTravAct		:= TravActJogStop;

		IF p_eTravStat = TravActJogStop AND p_eTravStatus = Done THEN	
			eTravAct		:= TravActIdle;
			
			bJogStopTrav	:= FALSE;
			
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl			:= FALSE;
					
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bValue			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bValue				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bValue				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bValue				:= FALSE;
				
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtLk				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtLk				:= FALSE;
			
		END_IF	
		
	ELSIF tyP0936Trav.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnPwr.bRtLk					:= TRUE;
		
		IF tyP0936Trav.tyMotionStd.tyBtnPwr.bValue = TRUE THEN
			eTravAct		:= TravActPwrOn;
			
			IF p_eTravStat = TravActPwrOn AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP0936Trav.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0936Trav.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;		
			END_IF
		ELSE
			eTravAct		:= TravActPwrOff;
			
			IF p_eTravStat = TravActPwrOff AND p_eTravStatus = Done THEN
				eTravAct	:= TravActIdle;
				
				tyP0936Trav.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0936Trav.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnOrigin.bValue				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtLk				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		eTravAct		:= TravActHoming;
			
		IF p_eTravStat = TravActHoming AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyMotionStd.tyBtnRst.bRtCompl = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnRst.bValue					:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnRst.bRtLk					:= TRUE;
		
		eTravAct		:= TravActRstAxisErr;
			
		IF p_eTravStat = TravActRstAxisErr AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyMotionStd.tyBtnRst.bRtCompl			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnRst.bValue				:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnRst.bRtLk				:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl = TRUE THEN
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.bValue				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtLk					:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlTravNomSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoAPos;
			
		IF p_eTravStat = TravActGoAPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bValue				:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtLk					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
		
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl = TRUE THEN
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.bValue					:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtLk						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk						:= FALSE;
		
		diMnlTravNomSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoBPos;
			
		IF p_eTravStat = TravActGoBPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bValue				:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtLk					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl = TRUE THEN
		tyP0936Trav.tyTrav.tyBtnGoToMag1.bValue						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtLk						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk						:= FALSE;
		
		diMnlTravNomSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoDPos;
			
		IF p_eTravStat = TravActGoDPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bValue					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtLk					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl = TRUE THEN
		tyP0936Trav.tyTrav.tyBtnGoToMag2.bValue						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtLk						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk						:= FALSE;
		
	
		diMnlTravNomSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoEPos;
			
		IF p_eTravStat = TravActGoEPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bValue					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtLk					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl = TRUE THEN
		tyP0936Trav.tyTrav.tyBtnGoToMag3.bValue						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtLk						:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk						:= FALSE;
		
		diMnlTravNomSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActGoFPos;
			
		IF p_eTravStat = TravActGoFPos AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl				:= FALSE;
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bValue					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtLk					:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.bValue				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtLk				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlTravTargetPos	:= tyP0936Trav.tyMotionStd.tyNumTargetPos.diValue;
		diMnlTravNomSpd		:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovAbs;
			
		IF p_eTravStat = TravActMovAbs AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
	ELSIF tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP0936Trav.tyMotionStd.tyBtnMovRel.bValue				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtLk				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlTravStepSize	:= tyP0936Trav.tyMotionStd.tyNumStepSize.diValue;
		diMnlTravNomSpd		:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActMovRel;
			
		IF p_eTravStat = TravActMovRel AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;	
		END_IF
	
	ELSIF (tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP0936Trav.tyMotionStd.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk						:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
	
		eTravAct		:= TravActJogRear;
			
		IF p_eTravStat = TravActJogRear AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP0936Trav.tyMotionStd.tyNumSlwSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlTravJogSpd	:= tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue;
		
		eTravAct		:= TravActJogFront;
			
		IF p_eTravStat = TravActJogFront AND p_eTravStatus = Done THEN
			eTravAct	:= TravActIdle;
			bJogFast	:= TRUE;
		ELSIF p_eTravStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF
	
	//Shutter Control
	IF tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
END_ACTION
