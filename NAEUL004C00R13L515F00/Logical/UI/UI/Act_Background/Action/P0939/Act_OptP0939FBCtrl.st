
ACTION Act_OptP0939FBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Lifter Safety Sensor Interruption
	IF EDGENEG(p_tyDI.bLifterSafetyLmtSW1 AND p_tyDI.bLifterSafetyLmtSW2 AND p_tyDI.bLifterTimingBeltSen) THEN
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiLifter2AxisErrID = 21570 OR p_udiLifter2AxisErrID = 21571) 
	IF EDGEPOS((p_bLifter2FwdLmtSen OR p_bLifter2RevLmtSen OR p_udiLifter2AxisErrID = 21570 OR p_udiLifter2AxisErrID = 21571) 
		AND tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue = FALSE 
		AND tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue = FALSE) 
	THEN
		fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue = FALSE AND tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue = FALSE) AND (p_bLifter2Jogging = TRUE) THEN
		bJogStopLifter	:= TRUE;
	END_IF
	
	IF tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtCompl = TRUE THEN
		eLifter2Act		:= LifterActStop;
	
		IF p_eLifter2Stat = LifterActStop AND p_eLifter2Status = Done THEN	
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtCompl			:= FALSE;

			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bValue					:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bValue			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bValue			:= FALSE;

					
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtLk					:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtLk			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtLk			:= FALSE;

		END_IF
		
	ELSIF (tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtCompl = TRUE) OR (tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtCompl = TRUE) OR (bJogStopLifter = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eLifter2Act		:= LifterActJogStop;

		IF p_eLifter2Stat = LifterActJogStop AND p_eLifter2Status = Done THEN	
			eLifter2Act		:= LifterActIdle;
			
			bJogStopLifter	:= FALSE;
			
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtCompl		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtCompl			:= FALSE;

			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bValue					:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bValue				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bValue			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bValue			:= FALSE;

			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtLk					:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtLk				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtLk			:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtLk			:= FALSE;

		END_IF	
		
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtLk					:= TRUE;
		
		IF tyP0939Lifter2.tyMotionStd.tyBtnPwr.bValue = TRUE THEN
			eLifter2Act		:= LifterActPwrOn;
			
			IF p_eLifter2Stat = LifterActPwrOn AND p_eLifter2Status = Done THEN
				eLifter2Act	:= LifterActIdle;
				
				tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eLifter2Act		:= LifterActPwrOff;
			
			IF p_eLifter2Stat = LifterActPwrOff AND p_eLifter2Status = Done THEN
				eLifter2Act	:= LifterActIdle;
				
				tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtLk					:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		eLifter2Act		:= LifterActHoming;
			
		IF p_eLifter2Stat = LifterActHoming AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bValue		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		
		END_IF
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtLk				:= TRUE;
		
		eLifter2Act		:= LifterActRstAxisErr;
			
		IF p_eLifter2Stat = LifterActRstAxisErr AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtCompl			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnRst.bValue			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnGo.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue			:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGo.bRtLk				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk			:= FALSE;
		
		(*diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;*)
		diMnlLifterNomSpd2		:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0939Lifter2.tyLifter.tyNumMagPos.diValue OF
			1: 
				eLifter2Act	:= LifterActGoASltPos;
				diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
				
			2: 
				eLifter2Act	:= LifterActGoBSltPos;
				diMnlLifterMag2GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
				
			3: 
				eLifter2Act	:= LifterActGoCSltPos;
				diMnlLifterMag3GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
		
			4: 
				eLifter2Act	:= LifterActGoDSltPos;
				diMnlLifterMag3GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
		END_CASE
			
		IF (p_eLifter2Stat = LifterActGoASltPos 
			OR p_eLifter2Stat = LifterActGoBSltPos
			OR p_eLifter2Stat = LifterActGoCSltPos
			OR p_eLifter2Stat = LifterActGoDSltPos)
			AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnGo.bValue				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnGo.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtLk				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
	
		(*diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;*)
		diMnlLifterNomSpd2		:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0939Lifter2.tyLifter.tyNumMagPos.diValue OF
			1: 
				eLifter2Act	:= LifterActGoNxtASltPos;
				diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
			2: 
				eLifter2Act	:= LifterActGoNxtBSltPos;
				diMnlLifterMag2GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
			3: 
				eLifter2Act	:= LifterActGoNxtCSltPos;
				diMnlLifterMag3GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
			4: 
				eLifter2Act	:= LifterActGoNxtDSltPos;	
		//		diMnlLifterMag4GoSlt	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
			
		END_CASE
			
		IF (p_eLifter2Stat = LifterActGoNxtASltPos 
			OR p_eLifter2Stat = LifterActGoNxtBSltPos
			OR p_eLifter2Stat = LifterActGoNxtCSltPos
			OR p_eLifter2Stat = LifterActGoNxtDSltPos)
			AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtLk				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
	
	//	diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
		diMnlLifterNomSpd2		:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0939Lifter2.tyLifter.tyNumMagPos.diValue OF
			
			1: 
				eLifter2Act	:= LifterActGoPrevASltPos;
				diMnlLifterMag1GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
				
			2: 
				eLifter2Act	:= LifterActGoPrevBSltPos;
				diMnlLifterMag2GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
				
			3: 
				eLifter2Act	:= LifterActGoPrevCSltPos;
				diMnlLifterMag3GoSlt2	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
				
			4: 
				eLifter2Act	:= LifterActGoPrevDSltPos;	
		//		diMnlLifterMag4GoSlt	:= tyP0939Lifter2.tyLifter.tyNumNewSlt.diValue;
			
		END_CASE
			
		IF (p_eLifter2Stat = LifterActGoPrevASltPos 
			OR p_eLifter2Stat = LifterActGoPrevBSltPos
			OR p_eLifter2Stat = LifterActGoPrevCSltPos
			OR p_eLifter2Stat = LifterActGoPrevDSltPos)
			AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl				:= FALSE;
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bValue					:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue					:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtLk					:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bValue	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtLk	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act	:= LifterActGoAPos;
		
		IF p_eLifter2Stat = LifterActGoAPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl	:= FALSE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bValue	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtLk	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bValue	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtLk	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act	:= LifterActGoBPos;
		
		IF p_eLifter2Stat = LifterActGoBPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl	:= FALSE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bValue	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtLk	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bValue	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtLk	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act	:= LifterActGoGPos;
		
		IF p_eLifter2Stat = LifterActGoGPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtCompl	:= FALSE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bValue	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtLk	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bValue	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtLk	:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act	:= LifterActGoHPos;
		
		IF p_eLifter2Stat = LifterActGoHPos AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtCompl	:= FALSE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bValue	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtLk	:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtLk					:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlLifterTargetPos2	:= tyP0939Lifter2.tyMotionStd.tyNumTargetPos.diValue;
		diMnlLifterNomSpd2		:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act			:= LifterActMovAbs;
			
		IF p_eLifter2Stat = LifterActMovAbs AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bValue		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bValue			:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtLk				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlLifterStepSize2		:= tyP0939Lifter2.tyMotionStd.tyNumStepSize.diValue;
		diMnlLifterNomSpd2		:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActMovRel;
			
		IF p_eLifter2Stat = LifterActMovRel AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bValue		:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;	
		
		END_IF
	
	ELSIF (tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.diValue;
		
		eLifter2Act		:= LifterActJogDown;
			
		IF p_eLifter2Stat = LifterActJogDown AND p_eLifter2Status = Done THEN
			
			eLifter2Act	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
			
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		
		END_IF
	
	ELSIF (tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
	
		eLifter2Act		:= LifterActJogDown;
			
		IF p_eLifter2Stat = LifterActJogDown AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eLifter2Status = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.diValue;
		
		eLifter2Act		:= LifterActJogUp;
			
		IF p_eLifter2Stat = LifterActJogUp AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd2	:= tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifter2Act		:= LifterActJogUp;
			
		IF p_eLifter2Stat = LifterActJogUp AND p_eLifter2Status = Done THEN
			eLifter2Act	:= LifterActIdle;
			bJogFast	:= TRUE;
		
		ELSIF p_eLifter2Status = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF

	
	//Shutter Control
	IF tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
END_ACTION
