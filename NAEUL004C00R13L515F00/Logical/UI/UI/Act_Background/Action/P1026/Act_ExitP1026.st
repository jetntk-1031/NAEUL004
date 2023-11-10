
ACTION Act_ExitP1026:
	
	usiChgPage	:= 1;
	
	//Manual Deactivated
	bManualMod	:= FALSE;
	
	//Reset UI
	bJogSlow				:= FALSE;
	bJogFast				:= FALSE;
	fbJogSlowToFastDlyTm.IN	:= FALSE;
	
	fbLmtRstTm(IN := FALSE);
	//bypass curtain sensor
	bBypCurtainSen := FALSE;
	bBypCurtainPBLED := FALSE;
	tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.bValue				:= FALSE;
	tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.bValue				:= FALSE;
	tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.bValue				:= FALSE;
	tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.bValue				:= FALSE;

	//Traverser
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl		:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl			:= FALSE;
	
	tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtCompl				:= FALSE;
	tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtCompl				:= FALSE;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bValue				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= TRUE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bValue				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue			:= FALSE;
	
	tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bValue					:= FALSE;
	tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bValue					:= FALSE;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= TRUE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk				:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk			:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk			:= FALSE;
	
	tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.bRtLk					:= FALSE;
	tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.bRtLk					:= FALSE;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat			:= TRUE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat		:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat			:= TRUE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat		:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat	:= FALSE;
	tyP1026McSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat		:= FALSE;
	
	tyP1026McSetTeach.tyTeachTravPosA.tyBtn2.uiMaskRtStat			:= FALSE;
	tyP1026McSetTeach.tyTeachTravPosB.tyBtn2.uiMaskRtStat			:= FALSE;
	
	//Lifter
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
	//Lifter top/bottom
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
	
END_ACTION
