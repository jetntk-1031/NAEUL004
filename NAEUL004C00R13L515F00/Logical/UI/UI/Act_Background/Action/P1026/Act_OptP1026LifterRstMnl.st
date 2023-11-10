
ACTION Act_OptP1026LifterRstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifterBtmStatus = Error)) THEN
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtCompl				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtCompl				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtCompl				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtCompl				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.bRtCompl				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.bRtCompl				:= FALSE;

		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bValue				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue			:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bValue				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bValue				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bValue				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bValue				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.bValue				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.bValue				:= FALSE;

		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk				:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.bRtLk				:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.bRtLk				:= FALSE;

		tyP1026McSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat	:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat		:= TRUE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat	:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat	:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat		:= FALSE;
		tyP1026McSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat	:= FALSE;
		
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn2.uiMaskRtStat			:= FALSE;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn2.uiMaskRtStat			:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos.tyBtn2.uiMaskRtStat			:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos.tyBtn2.uiMaskRtStat			:= FALSE;
		tyP1026McSetTeach.tyTeachLifterTopPos2.tyBtn2.uiMaskRtStat			:= FALSE;
		tyP1026McSetTeach.tyTeachLifterBtmPos2.tyBtn2.uiMaskRtStat			:= FALSE;
		
		eInShutterAct	:= PneuActIdle;
		eOutShutterAct	:= PneuActIdle;
		eOutShutterAct2	:= PneuActIdle;
		eOutShutterAct3	:= PneuActIdle;
		
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP1026McSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	
END_ACTION
