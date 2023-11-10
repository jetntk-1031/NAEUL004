
ACTION Act_OptP0939RstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifter2Status = Error)) THEN
		
		eLifter2Act	:= LifterActIdle;
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP0939Lifter2.tyLifter.tyBtnGo.bRtCompl					:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtCompl				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtCompl			:= FALSE;
	
		tyP0939Lifter2.tyLifter.tyBtnGo.bValue					:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bValue				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bValue				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bValue				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bValue				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bValue				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bValue				:= FALSE;
	
		tyP0939Lifter2.tyLifter.tyBtnGo.bRtLk					:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.bRtLk				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.bRtLk				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.bRtLk				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.bRtLk				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.bRtLk				:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.bRtLk				:= FALSE;
	
		tyP0939Lifter2.tyLifter.tyBtnGo.uiMaskRtStat.0			:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnNxtSlt.uiMaskRtStat.0		:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnPrevSlt.uiMaskRtStat.0		:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiMaskRtStat.0		:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiMaskRtStat.0		:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat.0		:= FALSE;
		tyP0939Lifter2.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat.0		:= FALSE;
		
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtCompl				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtCompl				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtCompl			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtCompl			:= FALSE;
			
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bValue				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bValue			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bValue			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bValue			:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bValue				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bValue			:= FALSE;
				
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnStop.bRtLk				:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnRst.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogUp.bRtLk				:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogDown.bRtLk			:= FALSE;
		
		tyP0939Lifter2.tyMotionStd.tyBtnPwr.uiMaskRtStat			:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnRst.uiMaskRtStat			:= TRUE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogUp.uiMaskRtStat		:= FALSE;
		tyP0939Lifter2.tyMotionStd.tyBtnJogDown.uiMaskRtStat		:= FALSE;
		
	END_IF
	
	
	eInShutterAct	:= PneuActIdle;
	eOutShutterAct	:= PneuActIdle;
		
	tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
	tyP0939Lifter2.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
	tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
	tyP0939Lifter2.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
	
	
END_ACTION
