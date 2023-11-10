
ACTION Act_OptP0936RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eTravStatus = Error)) THEN
		
		eTravAct	:= TravActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtCompl				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.bValue				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.bRtLk					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneA.uiMaskRtStat.0		:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtCompl				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.bValue				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.bRtLk					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiMaskRtStat.0		:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtCompl				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag1.bValue					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag1.bRtLk					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag1.uiMaskRtStat.0			:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtCompl				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag2.bValue					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag2.bRtLk					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag2.uiMaskRtStat.0			:= FALSE;
		
		tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtCompl				:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag3.bValue					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag3.bRtLk					:= FALSE;
		tyP0936Trav.tyTrav.tyBtnGoToMag3.uiMaskRtStat.0			:= FALSE;
		
		tyP0936Trav.tyMotionStd.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtCompl				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnRst.bRtCompl				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtCompl			:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtCompl			:= FALSE;
			
		tyP0936Trav.tyMotionStd.tyBtnPwr.bValue					:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bValue				:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnOrigin.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnRst.bValue					:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovRel.bValue				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogFront.bValue			:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogRear.bValue				:= FALSE;
				
		tyP0936Trav.tyMotionStd.tyBtnPwr.bRtLk					:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnStop.bRtLk					:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnRst.bRtLk					:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogFront.bRtLk				:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogRear.bRtLk				:= FALSE;
		
		tyP0936Trav.tyMotionStd.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0936Trav.tyMotionStd.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogFront.uiMaskRtStat		:= FALSE;
		tyP0936Trav.tyMotionStd.tyBtnJogRear.uiMaskRtStat		:= FALSE;
		
	END_IF
	
	eInShutterAct	:= PneuActIdle;
	eOutShutterAct	:= PneuActIdle;
		
	tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
	tyP0936Trav.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
	tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
	tyP0936Trav.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	
	
END_ACTION
