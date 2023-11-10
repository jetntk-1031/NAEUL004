
ACTION Act_OptP0935FBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Lifter Safety Sensor Interruption
	IF EDGENEG(p_tyDI.bLifterSafetyLmtSW1 AND p_tyDI.bLifterSafetyLmtSW2 AND p_tyDI.bLifterTimingBeltSen) THEN
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiLifterBtmAxisErrID = 21570 OR p_udiLifterBtmAxisErrID = 21571) 
	IF EDGEPOS((p_bLifterBtmFwdLmtSen OR p_bLifterBtmRevLmtSen OR p_udiLifterBtmAxisErrID = 21570 OR p_udiLifterBtmAxisErrID = 21571) 
		AND tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue = FALSE 
		AND tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue = FALSE) 
	THEN
		fbLmtRstTm.IN				:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue = FALSE AND tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue = FALSE) AND (p_bLifterBtmJogging = TRUE) THEN
		bJogStopLifter	:= TRUE;
	END_IF
	
	IF tyP0935Lifter.tyMotionStd.tyBtnStop.bRtCompl = TRUE THEN
		eLifterBtmAct		:= LifterActStop;
	
		IF p_eLifterBtmStat = LifterActStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtCompl			:= FALSE;

			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bValue					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bValue				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bValue				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bValue			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bValue			:= FALSE;

					
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bRtLk					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtLk				:= FALSE;

		END_IF
		
	ELSIF (tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtCompl = TRUE) OR (tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtCompl = TRUE) OR (bJogStopLifter = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eLifterBtmAct		:= LifterActJogStop;

		IF p_eLifterBtmStat = LifterActJogStop AND p_eLifterBtmStatus = Done THEN	
			eLifterBtmAct		:= LifterActIdle;
			
			bJogStopLifter	:= FALSE;
			
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
					
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bValue					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
		
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bRtLk					:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
			
		END_IF	
		
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtLk					:= TRUE;
		
		IF tyP0935Lifter.tyMotionStd.tyBtnPwr.bValue = TRUE THEN
			eLifterBtmAct		:= LifterActPwrOn;
			
			IF p_eLifterBtmStat = LifterActPwrOn AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eLifterBtmAct		:= LifterActPwrOff;
			
			IF p_eLifterBtmStat = LifterActPwrOff AND p_eLifterBtmStatus = Done THEN
				eLifterBtmAct	:= LifterActIdle;
				
				tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtCompl		:= FALSE;
				tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtLk		:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtLk					:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		eLifterBtmAct		:= LifterActHoming;
			
		IF p_eLifterBtmStat = LifterActHoming AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bValue		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		
		END_IF
	
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnRst.bRtCompl = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyBtnRst.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnRst.bRtLk				:= TRUE;
		
		eLifterBtmAct		:= LifterActRstAxisErr;
			
		IF p_eLifterBtmStat = LifterActRstAxisErr AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyMotionStd.tyBtnRst.bRtCompl			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnRst.bValue			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnGo.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue			:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGo.bRtLk				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk			:= FALSE;
		
		(*diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;*)
		diMnlLifterNomSpd		:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0935Lifter.tyLifter.tyNumMagPos.diValue OF
			1: 
				eLifterBtmAct	:= LifterActGoASltPos;
				diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
				
			2: 
				eLifterBtmAct	:= LifterActGoBSltPos;
				diMnlLifterMag2GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
				
			3: 
				eLifterBtmAct	:= LifterActGoCSltPos;
				diMnlLifterMag3GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
		
			4: 
				eLifterBtmAct	:= LifterActGoDSltPos;
				diMnlLifterMag3GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
		END_CASE
			
		IF (p_eLifterBtmStat = LifterActGoASltPos 
			OR p_eLifterBtmStat = LifterActGoBSltPos
			OR p_eLifterBtmStat = LifterActGoCSltPos
			OR p_eLifterBtmStat = LifterActGoDSltPos)
			AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnGo.bValue				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnGo.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtLk				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
	
		(*diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;*)
		diMnlLifterNomSpd		:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0935Lifter.tyLifter.tyNumMagPos.diValue OF
			1: 
				eLifterBtmAct	:= LifterActGoNxtASltPos;
				diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
			2: 
				eLifterBtmAct	:= LifterActGoNxtBSltPos;
				diMnlLifterMag2GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
			3: 
				eLifterBtmAct	:= LifterActGoNxtCSltPos;
				diMnlLifterMag3GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
			4: 
				eLifterBtmAct	:= LifterActGoNxtDSltPos;	
		//		diMnlLifterMag4GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
			
		END_CASE
			
		IF (p_eLifterBtmStat = LifterActGoNxtASltPos 
			OR p_eLifterBtmStat = LifterActGoNxtBSltPos
			OR p_eLifterBtmStat = LifterActGoNxtCSltPos
			OR p_eLifterBtmStat = LifterActGoNxtDSltPos)
			AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtLk				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
	
	//	diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
		diMnlLifterNomSpd		:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		CASE tyP0935Lifter.tyLifter.tyNumMagPos.diValue OF
			
			1: 
				eLifterBtmAct	:= LifterActGoPrevASltPos;
				diMnlLifterMag1GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
				
			2: 
				eLifterBtmAct	:= LifterActGoPrevBSltPos;
				diMnlLifterMag2GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
				
			3: 
				eLifterBtmAct	:= LifterActGoPrevCSltPos;
				diMnlLifterMag3GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
				
			4: 
				eLifterBtmAct	:= LifterActGoPrevDSltPos;	
		//		diMnlLifterMag4GoSlt	:= tyP0935Lifter.tyLifter.tyNumNewSlt.diValue;
			
		END_CASE
			
		IF (p_eLifterBtmStat = LifterActGoPrevASltPos 
			OR p_eLifterBtmStat = LifterActGoPrevBSltPos
			OR p_eLifterBtmStat = LifterActGoPrevCSltPos
			OR p_eLifterBtmStat = LifterActGoPrevDSltPos)
			AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl				:= FALSE;
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bValue					:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue					:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtLk					:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.bValue	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtLk	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct	:= LifterActGoAPos;
		
		IF p_eLifterBtmStat = LifterActGoAPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtCompl	:= FALSE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bValue	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtLk	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.bValue	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtLk	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct	:= LifterActGoBPos;
		
		IF p_eLifterBtmStat = LifterActGoBPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtCompl	:= FALSE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bValue	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtLk	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bValue	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtLk	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct	:= LifterActGoDPos;
		
		IF p_eLifterBtmStat = LifterActGoDPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtCompl	:= FALSE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bValue	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtLk	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtCompl = TRUE THEN
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bValue	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtLk	:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= FALSE;
		
		diMnlLifterNomSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct	:= LifterActGoEPos;
		
		IF p_eLifterBtmStat = LifterActGoEPos AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtCompl	:= FALSE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bValue	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtLk	:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk	:= TRUE;
		END_IF
		
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtLk					:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlLifterTargetPos	:= tyP0935Lifter.tyMotionStd.tyNumTargetPos.diValue;
		diMnlLifterNomSpd		:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct			:= LifterActMovAbs;
			
		IF p_eLifterBtmStat = LifterActMovAbs AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bValue		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.bValue			:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtLk				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlLifterStepSize		:= tyP0935Lifter.tyMotionStd.tyNumStepSize.diValue;
		diMnlLifterNomSpd		:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActMovRel;
			
		IF p_eLifterBtmStat = LifterActMovRel AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bValue		:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			
			tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;	
		
		END_IF
	
	ELSIF (tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP0935Lifter.tyMotionStd.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		
		END_IF
	
	ELSIF (tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
	
		eLifterBtmAct		:= LifterActJogDown;
			
		IF p_eLifterBtmStat = LifterActJogDown AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP0935Lifter.tyMotionStd.tyNumSlwSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogSlow				:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlLifterJogSpd	:= tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue;
		
		eLifterBtmAct		:= LifterActJogUp;
			
		IF p_eLifterBtmStat = LifterActJogUp AND p_eLifterBtmStatus = Done THEN
			eLifterBtmAct	:= LifterActIdle;
			bJogFast	:= TRUE;
		
		ELSIF p_eLifterBtmStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF

	
	//Shutter Control
	IF tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
END_ACTION
