
ACTION Act_OptP0934FBCtrl:
	
	fbJogSlowToFastDlyTm.PT	:= T#2s;
	fbJogSlowToFastDlyTm;
	fbLmtRstTm;
	
	//Conveyor Sensor Interruption
	IF (p_tyDI.bConvLftSen OR p_tyDI.bConvMidSen OR p_tyDI.bConvRgtSen OR p_tyDI.bConvClrSen OR p_tyDI.bPusherRetRS = FALSE)
		AND eCurrPage = UIP0934AW
		THEN
		tyP0934AW.tyMotionStd.tyBtnStop.bRtCompl	:= TRUE;
	END_IF
	
//	IF EDGEPOS((p_udiAWOpenAxisErrID = 21570 OR p_udiAWOpenAxisErrID = 21571) 
	IF EDGEPOS((p_bAWOpenFwdLmtSen OR p_bAWOpenRevLmtSen OR p_udiAWOpenAxisErrID = 21570 OR p_udiAWOpenAxisErrID = 21571) 
		AND tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue = FALSE 
		AND tyP0934AW.tyMotionStd.tyBtnJogClose.bValue = FALSE) 
	THEN
		fbLmtRstTm.IN	:= TRUE;
	END_IF
	
	IF fbLmtRstTm.Q = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnRst.bRtCompl		:= TRUE;
	END_IF
	
	IF (tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue = FALSE AND tyP0934AW.tyMotionStd.tyBtnJogClose.bValue = FALSE) AND (p_bAWOpenJogging = TRUE) THEN
		bJogStopAW	:= TRUE;
	END_IF
	
	IF tyP0934AW.tyMotionStd.tyBtnStop.bRtCompl = TRUE THEN
		eAWOpenAct		:= AWActStop;
	
		IF p_eAWOpenStat = AWActStop AND p_eAWOpenStatus = Done THEN	
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bRtCompl		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bRtCompl						:= FALSE;
				
			tyP0934AW.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bValue						:= FALSE;
					
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bRtLk			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bRtLk			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bRtLk						:= FALSE;
		END_IF
		
	ELSIF (tyP0934AW.tyMotionStd.tyBtnJogOpen.bRtCompl = TRUE) OR (tyP0934AW.tyMotionStd.tyBtnJogClose.bRtCompl = TRUE) OR (bJogStopAW = TRUE) THEN
		bJogSlow					:= FALSE;
		bJogFast					:= FALSE;
		fbJogSlowToFastDlyTm.IN		:= FALSE;
		
		eAWOpenAct		:= AWActJogStop;

		IF p_eAWOpenStat = AWActJogStop AND p_eAWOpenStatus = Done THEN	
			eAWOpenAct	:= AWActIdle;
			
			bJogStopAW	:= FALSE;
			
			tyP0934AW.tyMotionStd.tyBtnStop.bRtCompl		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bRtCompl		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bRtCompl	:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtCompl		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtCompl		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtCompl		:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bRtCompl					:= FALSE;
					
			tyP0934AW.tyMotionStd.tyBtnStop.bValue			:= TRUE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bValue		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bValue		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bValue		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bValue		:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bValue					:= FALSE;
				
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk			:= TRUE;
			tyP0934AW.tyMotionStd.tyBtnJogOpen.bRtLk		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnJogClose.bRtLk		:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtLk			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtLk			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtLk			:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bRtLk					:= FALSE;
		END_IF	
		
	ELSIF tyP0934AW.tyMotionStd.tyBtnPwr.bRtCompl = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnPwr.bRtLk					:= TRUE;
		
		IF tyP0934AW.tyMotionStd.tyBtnPwr.bValue = TRUE THEN
			eAWOpenAct		:= AWActPwrOn;
			
			IF p_eAWOpenStat = AWActPwrOn AND p_eAWOpenStatus = Done THEN
				eAWOpenAct	:= AWActIdle;
				
				tyP0934AW.tyMotionStd.tyBtnPwr.bRtCompl			:= FALSE;
				tyP0934AW.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;		
			END_IF
		ELSE
			eAWOpenAct		:= AWActPwrOff;
			
			IF p_eAWOpenStat = AWActPwrOff AND p_eAWOpenStatus = Done THEN
				eAWOpenAct	:= AWActIdle;
				
				tyP0934AW.tyMotionStd.tyBtnPwr.bRtCompl			:= FALSE;
				tyP0934AW.tyMotionStd.tyBtnPwr.bRtLk			:= FALSE;
			END_IF
		END_IF
	
	ELSIF tyP0934AW.tyMotionStd.tyBtnOrigin.bRtCompl = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnOrigin.bValue				:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0934AW.tyMotionStd.tyBtnOrigin.bRtLk					:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		eAWOpenAct		:= AWActHoming;
			
		IF p_eAWOpenStat = AWActHoming AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0934AW.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
	ELSIF tyP0934AW.tyMotionStd.tyBtnRst.bRtCompl = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnRst.bValue					:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnRst.bRtLk					:= TRUE;
		
		eAWOpenAct		:= AWActRstAxisErr;
			
		IF p_eAWOpenStat = AWActRstAxisErr AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyMotionStd.tyBtnRst.bRtCompl				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnRst.bValue				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnRst.bRtLk				:= FALSE;
			
			fbLmtRstTm.IN			:= FALSE;
		END_IF
	
	ELSIF tyP0934AW.tyAW.tyBtnGo.bRtCompl = TRUE THEN
		tyP0934AW.tyAW.tyBtnGo.bValue							:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0934AW.tyAW.tyBtnGo.bRtLk							:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlAWGoWidth		:= tyP0934AW.tyAW.tyNumNewWidth.diValue;
		diMnlAWNomSpd		:= tyP0934AW.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWOpenAct		:= AWActGoWidth;
			
		IF p_eAWOpenStat = AWActGoWidth AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyAW.tyBtnGo.bRtCompl						:= FALSE;
			tyP0934AW.tyAW.tyBtnGo.bValue						:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0934AW.tyAW.tyBtnGo.bRtLk						:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
	ELSIF tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtCompl = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnMovAbs.bValue				:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtLk					:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlAWTargetPos	:= tyP0934AW.tyMotionStd.tyNumTargetPos.diValue;
		diMnlAWNomSpd		:= tyP0934AW.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWOpenAct		:= AWActMovAbs;
			
		IF p_eAWOpenStat = AWActMovAbs AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0934AW.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		END_IF
	
	ELSIF tyP0934AW.tyMotionStd.tyBtnMovRel.bRtCompl = TRUE THEN
		tyP0934AW.tyMotionStd.tyBtnMovRel.bValue				:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		
		tyP0934AW.tyMotionStd.tyBtnMovRel.bRtLk					:= TRUE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		diMnlAWStepSize		:= tyP0934AW.tyMotionStd.tyNumStepSize.diValue;
		diMnlAWNomSpd		:= tyP0934AW.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWOpenAct		:= AWActMovRel;
			
		IF p_eAWOpenStat = AWActMovRel AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bValue				:= TRUE;
			
			tyP0934AW.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
			tyP0934AW.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;	
		END_IF
	
	ELSIF (tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWJogSpd		:= tyP0934AW.tyMotionStd.tyNumSlwSpd.diValue;
		
		eAWOpenAct		:= AWActJogOpen;
			
		IF p_eAWOpenStat = AWActJogOpen AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eAWOpenStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0934AW.tyMotionStd.tyBtnJogOpen.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWJogSpd		:= tyP0934AW.tyMotionStd.tyNumNomSpd.diValue;
	
		eAWOpenAct		:= AWActJogOpen;
			
		IF p_eAWOpenStat = AWActJogOpen AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eAWOpenStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	
	ELSIF (tyP0934AW.tyMotionStd.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = FALSE) AND (bJogSlow = FALSE) THEN
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWJogSpd		:= tyP0934AW.tyMotionStd.tyNumSlwSpd.diValue;
		
		eAWOpenAct		:= AWActJogClose;
			
		IF p_eAWOpenStat = AWActJogClose AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			bJogSlow				:= TRUE;
		ELSIF p_eAWOpenStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogSlow				:= TRUE;
		END_IF
	
	ELSIF (tyP0934AW.tyMotionStd.tyBtnJogClose.bValue = TRUE) AND (fbJogSlowToFastDlyTm.Q = TRUE) AND (bJogFast = FALSE) THEN
		tyP0934AW.tyMotionStd.tyBtnStop.bValue					:= FALSE;
		tyP0934AW.tyMotionStd.tyBtnStop.bRtLk					:= FALSE;
		
		fbJogSlowToFastDlyTm.IN		:= TRUE;
		
		diMnlAWJogSpd		:= tyP0934AW.tyMotionStd.tyNumNomSpd.diValue;
		
		eAWOpenAct		:= AWActJogClose;
			
		IF p_eAWOpenStat = AWActJogClose AND p_eAWOpenStatus = Done THEN
			eAWOpenAct	:= AWActIdle;
			bJogFast				:= TRUE;
		ELSIF p_eAWOpenStatus = Error THEN
			fbJogSlowToFastDlyTm.IN	:= FALSE;
			bJogFast				:= TRUE;
		END_IF
	END_IF
	
	//Shutter Control
	IF tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bRtCompl = TRUE THEN
		tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
				
		tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bValue	:= TRUE;
		tyP0934AW.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
				
	ELSIF tyP0934AW.tyInOutletShutterFB.tyBtnClose.bRtCompl = TRUE THEN
		tyP0934AW.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
			
		tyP0934AW.tyInOutletShutterFB.tyBtnClose.bValue	:= TRUE;
		tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	END_IF
			
	IF tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bValue = TRUE THEN
		eInShutterAct	:= PneuActRet;
		eOutShutterAct	:= PneuActRet;
		
		IF (p_eInShutterStat = PneuActRet AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActRet AND p_eOutShutterStatus = Done)
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN
			tyP0934AW.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		END_IF	
					
	ELSIF tyP0934AW.tyInOutletShutterFB.tyBtnClose.bValue = TRUE THEN
		eInShutterAct	:= PneuActExt;
		eOutShutterAct	:= PneuActExt;		
		IF (p_eInShutterStat = PneuActExt AND p_eInShutterStatus = Done) 
			AND (p_eOutShutterStat = PneuActExt AND p_eOutShutterStatus = Done) 
			THEN
			eInShutterAct	:= PneuActIdle;
			eOutShutterAct	:= PneuActIdle;		
			tyP0934AW.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		ELSIF p_eInShutterStatus = Error OR p_eOutShutterStatus = Error THEN	
			tyP0934AW.tyInOutletShutterFB.tyBtnClose.bValue := FALSE; 
		END_IF	
	END_IF
	
END_ACTION
