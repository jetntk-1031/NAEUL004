
ACTION Act_OptP1026TravRstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eTravStatus = Error)) THEN
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
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
		
	END_IF
	
END_ACTION
