
ACTION Act_OptP1031LifterFBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Lifter Safety Sensor Interruption
	IF EDGENEG(p_tyDI.bLifterSafetyLmtSW1 AND p_tyDI.bLifterSafetyLmtSW2 AND p_tyDI.bLifterTimingBeltSen) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiLifterBtmAxisErrID = 21570 OR p_udiLifterBtmAxisErrID = 21571) AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE) THEN
	IF EDGEPOS((p_bLifterBtmFwdLmtSen OR p_bLifterBtmRevLmtSen OR p_udiLifterBtmAxisErrID = 21570 OR p_udiLifterBtmAxisErrID = 21571) 
		AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE
		AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE) THEN
			fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE) AND (p_bLifterBtmJogging = TRUE) THEN
		bJogStopLifter	:= TRUE;
	END_IF
	
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl = TRUE THEN
		eLifterBtmAct		:= LifterActStop;
	
		IF p_eLifterBtmStat = LifterActStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
		
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bValue		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bValue		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bValue		:= FALSE;
		
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtLk		:= FALSE;
		
		END_IF
		
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl = TRUE) OR (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl = TRUE) OR (bJogStopLifter = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eLifterBtmAct		:= LifterActJogStop;

		IF p_eLifterBtmStat = LifterActJogStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct		:= LifterActIdle;
			
			bJogStopLifter	:= FALSE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
					
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bValue		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bValue		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bValue		:= FALSE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtLk		:= FALSE;
			
		END_IF	
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk					:= TRUE;
		
		IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bValue = TRUE THEN
			eLifterBtmAct		:= LifterActPwrOn;
			
			IF p_eLifterBtmStat = LifterActPwrOn AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eLifterBtmAct		:= LifterActPwrOff;
			
			IF p_eLifterBtmStat = LifterActPwrOff AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue					:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk					:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		eLifterBtmAct		:= LifterActHoming;
			
		IF p_eLifterBtmStat = LifterActHoming AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
		
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk				:= TRUE;
		
		eLifterBtmAct		:= LifterActRstAxisErr;
			
		IF p_eLifterBtmStat = LifterActRstAxisErr AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtLk		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= FALSE;
		
		//diMnlLifterMag1GoSlt	:= 1;
		diMnlLifterMag1GoSlt	:= tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoASltPos;
			
		IF p_eLifterBtmStat = LifterActGoASltPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= TRUE;
			
			tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtLk			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		//diMnlLifterMag2GoSlt	:= 1;
		diMnlLifterMag2GoSlt	:= tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoBSltPos;
			
		IF p_eLifterBtmStat = LifterActGoBSltPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= TRUE;
			
			tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtLk			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		//diMnlLifterMag3GoSlt	:= 1;
		diMnlLifterMag3GoSlt	:= tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActGoCSltPos;
			
		IF p_eLifterBtmStat = LifterActGoCSltPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl			:= FALSE;
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= TRUE;
			
			tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
		END_IF
		
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlLifterTargetPos	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.diValue;
		diMnlLifterNomSpd		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct			:= LifterActMovAbs;
			
		IF p_eLifterBtmStat = LifterActMovAbs AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl	:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue		:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk		:= TRUE;
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlLifterStepSize		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.diValue;
		diMnlLifterNomSpd		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActMovRel;
			
		IF p_eLifterBtmStat = LifterActMovRel AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;	
		
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue					:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
	
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast	:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF

	
	IF tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
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
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error OR p_eOutShutterStatus2 = Error OR p_eOutShutterStatus3 = Error THEN	
			tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
	IF p_eLifterBtmStat = LifterActStop AND (p_eLifterBtmStatus = Done OR p_eLifterBtmStatus = Error) THEN	
		eLifterBtmAct	:= LifterActIdle;
	END_IF
		
	//bypass curtain sensor
	IF bTeachLifterMag1Slt1Pos OR bTeachLifterMag2Slt1Pos OR bTeachLifterMag3Slt1Pos THEN
		bBypCurtainSen			:= tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.bValue;
		bBypCurtainPBLED		:= tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.bValue OR tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.bValue;
	END_IF
	
END_ACTION
