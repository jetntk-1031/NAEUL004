
ACTION Act_OptP1031Lifter2FBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Lifter Safety Sensor Interruption
	IF EDGENEG(p_tyDI.bLifterSafetyLmtSW1 AND p_tyDI.bLifterSafetyLmtSW2 AND p_tyDI.bLifterTimingBeltSen) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiLifter2AxisErrID = 21570 OR p_udiLifter2AxisErrID = 21571) AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE) THEN
	IF EDGEPOS((p_bLifter2FwdLmtSen OR p_bLifter2RevLmtSen OR p_udiLifter2AxisErrID = 21570 OR p_udiLifter2AxisErrID = 21571) 
		AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE
		AND tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE) THEN
			fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = FALSE AND tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = FALSE) AND (p_bLifter2Jogging = TRUE) THEN
		bJogStopLifter	:= TRUE;
	END_IF
	
	IF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl = TRUE THEN
		eLifter2Act		:= LifterActStop;
	
		IF p_eLifter2Stat = LifterActStop AND p_eLifter2Status = Done THEN	
			eLifter2Act	:= LifterActIdle;
			
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
		
		eLifter2Act		:= LifterActJogStop;

		IF p_eLifter2Stat = LifterActJogStop AND p_eLifter2Status = Done THEN	
			eLifter2Act		:= LifterActIdle;
			
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
			eLifter2Act		:= LifterActPwrOn;
			
			IF p_eLifter2Stat = LifterActPwrOn AND p_eLifter2Status = Done THEN
				eLifter2Act	:= LifterActIdle;
				
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eLifter2Act		:= LifterActPwrOff;
			
			IF p_eLifter2Stat = LifterActPwrOff AND p_eLifter2Status = Done THEN
				eLifter2Act	:= LifterActIdle;
				
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl		:= FALSE;
				tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue					:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk					:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		eLifter2Act		:= LifterActHoming;
			
		IF p_eLifter2Stat = LifterActHoming AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue		:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
			
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
			tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
		
		END_IF
	
	ELSIF tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk				:= TRUE;
		
		eLifter2Act		:= LifterActRstAxisErr;
			
		IF p_eLifter2Stat = LifterActRstAxisErr AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		diMnlLifterMag1GoSlt2	:= tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActGoASltPos;
			
		IF p_eLifter2Stat = LifterActGoASltPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		diMnlLifterMag2GoSlt2	:= tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActGoBSltPos;
			
		IF p_eLifter2Stat = LifterActGoBSltPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		diMnlLifterMag3GoSlt2	:= tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyNumNewSlt.diValue;
		diMnlLifterNomSpd2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActGoCSltPos;
			
		IF p_eLifter2Stat = LifterActGoCSltPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		
		diMnlLifterTargetPos2	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.diValue;
		diMnlLifterNomSpd2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act			:= LifterActMovAbs;
			
		IF p_eLifter2Stat = LifterActMovAbs AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		
		diMnlLifterStepSize2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.diValue;
		diMnlLifterNomSpd2		:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActMovRel;
			
		IF p_eLifter2Stat = LifterActMovRel AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
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
		
		diMnlLifterJogSpd2	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifter2Act		:= LifterActJogDown;
			
		IF p_eLifter2Stat = LifterActJogDown AND p_eLifter2Status = Done THEN
			
			eLifter2Act	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
			
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue					:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
	
		eLifter2Act		:= LifterActJogDown;
			
		IF p_eLifter2Stat = LifterActJogDown AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eLifter2Status = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue;
		
		eLifter2Act		:= LifterActJogUp;
			
		IF p_eLifter2Stat = LifterActJogUp AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActJogUp;
			
		IF p_eLifter2Stat = LifterActJogUp AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogFast	:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
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
	
	IF p_eLifter2Stat = LifterActStop AND (p_eLifter2Status = Done OR p_eLifter2Status = Error) THEN	
		eLifter2Act	:= LifterActIdle;
	END_IF
	
	
END_ACTION
