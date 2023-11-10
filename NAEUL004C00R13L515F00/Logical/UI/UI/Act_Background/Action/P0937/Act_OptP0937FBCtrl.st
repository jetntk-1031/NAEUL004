
ACTION Act_OptP0937FBCtrl:
	
	fbJogSlowToFastDlyTm.PT			:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Conveyor Sensor Interruption
	IF p_tyDI.bPusherRetRS = FALSE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiAWPushOrPullerAxisErrID = 21570 OR p_udiAWPushOrPullerAxisErrID = 21571) 
	IF EDGEPOS ((p_bAWPushOrPullerFwdLmtSen OR p_bAWPushOrPullerRevLmtSen)
		AND tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue = FALSE 
		AND tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue = FALSE) 
	THEN
		fbLmtRstTm.IN	:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue = FALSE AND tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue = FALSE) AND (p_bAWPushOrPullerJogging = TRUE) THEN
		bJogStopAWPushOrPuller	:= TRUE;
	END_IF
	
	IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtCompl = TRUE THEN
		eAWPushOrPullerAct		:= AWActStop;
	
		IF p_eAWPushOrPullerStat = AWActStop AND p_eAWPushOrPullerStatus = Done THEN	
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtCompl:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl				:= FALSE;
				
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= TRUE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bValue				:= FALSE;
					
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= TRUE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtLk	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtLk	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtLk				:= FALSE;
		END_IF
		
	ELSIF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtCompl = TRUE) OR (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtCompl = TRUE) OR (bJogStopAWPushOrPuller = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eAWPushOrPullerAct		:= AWActJogStop;

		IF p_eAWPushOrPullerStat = AWActJogStop AND p_eAWPushOrPullerStatus = Done THEN	
			eAWPushOrPullerAct	:= AWActIdle;
			
			bJogStopAWPushOrPuller	:= FALSE;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtCompl:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl				:= FALSE;
					
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= TRUE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bValue	:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bValue				:= FALSE;
				
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= TRUE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bRtLk	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bRtLk	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtLk				:= FALSE;
		END_IF	
		
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtLk	:= TRUE;
		
		IF tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bValue = TRUE THEN
			eAWPushOrPullerAct		:= AWActPwrOn;
			
			IF p_eAWPushOrPullerStat = AWActPwrOn AND p_eAWPushOrPullerStatus = Done THEN
				eAWPushOrPullerAct	:= AWActIdle;
				
				tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtCompl	:= FALSE;
				tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtLk		:= FALSE;		
			END_IF
		ELSE
			eAWPushOrPullerAct	:= AWActPwrOff;
			
			IF p_eAWPushOrPullerStat = AWActPwrOff AND p_eAWPushOrPullerStatus = Done THEN
				eAWPushOrPullerAct	:= AWActIdle;
				
				tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtCompl			:= FALSE;
				tyP0937AWPushOrPuller.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bValue	:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtLk	:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= FALSE;
		
		eAWPushOrPullerAct		:= AWActHoming;
			
		IF p_eAWPushOrPullerStat = AWActHoming AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bValue		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= TRUE;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnOrigin.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bValue					:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtLk					:= TRUE;
		
		eAWPushOrPullerAct		:= AWActRstAxisErr;
			
		IF p_eAWPushOrPullerStat = AWActRstAxisErr AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtCompl		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bValue			:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnRst.bRtLk			:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.bValue				:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		
		tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtLk				:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= FALSE;
		
		diMnlAWPushOrPullerGoWidth	:= (tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.diValue)/2;
		diMnlAWPushOrPullerNomSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWPushOrPullerAct		:= AWActGoWidth;
			
		IF p_eAWPushOrPullerStat = AWActGoWidth AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtCompl			:= FALSE;
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bValue				:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue	:= TRUE;
			
			tyP0937AWPushOrPuller.tyAW.tyBtnGo.bRtLk				:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= TRUE;
		END_IF
	
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bValue		:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= FALSE;
		
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtLk		:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= FALSE;
		
		diMnlAWPushOrPullerTargetPos	:= tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.diValue;
		diMnlAWPushOrPullerNomSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWPushOrPullerAct		:= AWActMovAbs;
			
		IF p_eAWPushOrPullerStat = AWActMovAbs AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bValue		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= TRUE;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovAbs.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
		END_IF
	
	ELSIF tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bValue			:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue			:= FALSE;
		
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtLk			:= TRUE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk				:= FALSE;
		
		diMnlAWPushOrPullerStepSize	:= tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.diValue;
		diMnlAWPushOrPullerNomSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWPushOrPullerAct		:= AWActMovRel;
			
		IF p_eAWPushOrPullerStat = AWActMovRel AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtCompl	:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bValue		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= TRUE;
			
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnMovRel.bRtLk		:= FALSE;
			tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;	
		END_IF
	
	ELSIF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue		:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk			:= FALSE;
		
		fbJogSlowToFastDlyTm.IN	:= TRUE;
		
		diMnlAWPushOrPullerJogSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.diValue;
		
		eAWPushOrPullerAct		:= AWActJogOpen;
			
		IF p_eAWPushOrPullerStat = AWActJogOpen AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			bJogSlow		:= TRUE;
		ELSIF p_eAWPushOrPullerStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow		:= TRUE;
		END_IF
	
	ELSIF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWPushOrPullerJogSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue;
	
		eAWPushOrPullerAct	:= AWActJogOpen;
			
		IF p_eAWPushOrPullerStat = AWActJogOpen AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eAWPushOrPullerStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWPushOrPullerJogSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.diValue;
		
		eAWPushOrPullerAct		:= AWActJogClose;
			
		IF p_eAWPushOrPullerStat = AWActJogClose AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eAWPushOrPullerStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0937AWPushOrPuller.tyMotionStd.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bValue	:= FALSE;
		tyP0937AWPushOrPuller.tyMotionStd.tyBtnStop.bRtLk		:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWPushOrPullerJogSpd		:= tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWPushOrPullerAct			:= AWActJogClose;
			
		IF p_eAWPushOrPullerStat = AWActJogClose AND p_eAWPushOrPullerStatus = Done THEN
			eAWPushOrPullerAct	:= AWActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eAWPushOrPullerStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
		

	END_IF
	
	
END_ACTION
