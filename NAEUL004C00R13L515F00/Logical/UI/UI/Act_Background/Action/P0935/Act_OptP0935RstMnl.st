
ACTION Act_OptP0935RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifterBtmStatus = Error)) THEN
		
		eLifterBtmAct	:= LifterActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0935Lifter.tyLifter.tyBtnGo.bRtCompl					:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtCompl			:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtCompl			:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtCompl			:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtCompl			:= FALSE;
	
		tyP0935Lifter.tyLifter.tyBtnGo.bValue					:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.bValue				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.bValue				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bValue				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bValue				:= FALSE;
	
		tyP0935Lifter.tyLifter.tyBtnGo.bRtLk					:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.bRtLk				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.bRtLk				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.bRtLk				:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.bRtLk				:= FALSE;
	
		tyP0935Lifter.tyLifter.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnNxtSlt.uiMaskRtStat.0		:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnPrevSlt.uiMaskRtStat.0		:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat.0		:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiMaskRtStat.0		:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat.0		:= FALSE;
		tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat.0		:= FALSE;
	
		tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnRst.bRtCompl				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtCompl			:= FALSE;
			
		tyP0935Lifter.tyMotionStd.tyBtnPwr.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bValue				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnRst.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogUp.bValue				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
				
		tyP0935Lifter.tyMotionStd.tyBtnPwr.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnRst.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
		
		tyP0935Lifter.tyMotionStd.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0935Lifter.tyMotionStd.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogUp.uiMaskRtStat		:= FALSE;
		tyP0935Lifter.tyMotionStd.tyBtnJogDown.uiMaskRtStat		:= FALSE;
		
	END_IF
	
	
	eInShutterAct	:= PneuActIdle;
	eOutShutterAct	:= PneuActIdle;
		
	tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
	tyP0935Lifter.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
	tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
	tyP0935Lifter.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	
	
END_ACTION
