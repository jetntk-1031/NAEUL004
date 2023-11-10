
ACTION Act_OptP1026LifterFBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Lifter Safety Sensor Interruption
	IF EDGENEG(p_tyDI.bLifterSafetyLmtSW1 AND p_tyDI.bLifterSafetyLmtSW2 AND p_tyDI.bLifterTimingBeltSen) THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
	IF EDGEPOS((p_udiLifterBtmAxisErrID = 21570 OR p_udiLifterBtmAxisErrID = 21571) AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE) THEN
		fbLmtRstTm.IN	:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl	:= TRUE;
	END_IF
	
	IF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE) AND (p_bLifterBtmJogging = TRUE) THEN
		bJogStopLifter	:= TRUE;
	END_IF
	
	IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl = TRUE THEN
		eLifterBtmAct		:= LifterActStop;
	
		IF p_eLifterBtmStat = LifterActStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtCompl				:= FALSE;//
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtCompl				:= FALSE;//

			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bValue				:= FALSE;

			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtLk				:= FALSE;

		END_IF
		
	ELSIF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl = TRUE) OR (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl = TRUE) OR (bJogStopLifter = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eLifterBtmAct	:= LifterActJogStop;

		IF p_eLifterBtmStat = LifterActJogStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct		:= LifterActIdle;
			
			bJogStopLifter	:= FALSE;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtCompl				:= FALSE;//
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtCompl				:= FALSE;//
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bValue				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bValue				:= FALSE;
		
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtLk				:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtLk				:= FALSE;
		
		END_IF	
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk	:= TRUE;
		
		IF tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bValue = TRUE THEN
			eLifterBtmAct	:= LifterActPwrOn;
			
			IF p_eLifterBtmStat = LifterActPwrOn AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl	:= FALSE;
				tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eLifterBtmAct	:= LifterActPwrOff;
			
			IF p_eLifterBtmStat = LifterActPwrOff AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl	:= FALSE;
				tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue	:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk	:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= FALSE;
		
		eLifterBtmAct	:= LifterActHoming;
			
		IF p_eLifterBtmStat = LifterActHoming AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue		:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
		
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bValue	:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk	:= TRUE;
		
		eLifterBtmAct	:= LifterActRstAxisErr;
			
		IF p_eLifterBtmStat = LifterActRstAxisErr AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk		:= FALSE;
			
			fbLmtRstTm.IN	:= FALSE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bValue			:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue		:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtLk			:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= FALSE;
		
		diMnlLifterNomSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct	:= LifterActGoAPos;
			
		IF p_eLifterBtmStat = LifterActGoAPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bValue		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlLifterNomSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoBPos;
			
		IF p_eLifterBtmStat = LifterActGoBPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bValue		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlLifterNomSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoDPos;
			
		IF p_eLifterBtmStat = LifterActGoDPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bValue		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtLk		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlLifterNomSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoEPos;
			
		IF p_eLifterBtmStat = LifterActGoEPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= TRUE;
			
			tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= TRUE;
		END_IF
		
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue	:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue	:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk	:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlLifterTargetPos	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.diValue;
		diMnlLifterNomSpd		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct			:= LifterActMovAbs;
			
		IF p_eLifterBtmStat = LifterActMovAbs AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl	:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue		:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlLifterStepSize		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.diValue;
		diMnlLifterNomSpd		:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActMovRel;
			
		IF p_eLifterBtmStat = LifterActMovRel AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;	
		
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue					:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
	
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast	:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
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
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error OR p_eOutShutterStatus2 = Error OR p_eOutShutterStatus3 = Error THEN	
			tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
	IF p_eLifterBtmStat = LifterActStop AND (p_eLifterBtmStatus = Done OR p_eLifterBtmStatus = Error) THEN	
		eLifterBtmAct	:= LifterActIdle;
	END_IF
		
	//bypass curtain sensor
	IF bTeachLifterPosA OR bTeachLifterPosB THEN
		bBypCurtainSen			:= tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.bValue OR tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.bValue;
		bBypCurtainPBLED		:= tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.bValue OR tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.bValue;
	END_IF
	
END_ACTION
