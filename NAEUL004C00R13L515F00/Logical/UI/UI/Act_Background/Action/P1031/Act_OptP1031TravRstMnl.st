
ACTION Act_OptP1031TravRstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eTravStatus = Error)) THEN
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtCompl		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtCompl			:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bValue				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bValue				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bValue			:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bValue				:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bValue				:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bValue				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnStop.bRtLk				:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.bRtLk			:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.bRtLk				:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnPwr.uiMaskRtStat		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnOrigin.uiMaskRtStat		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnRst.uiMaskRtStat		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovAbs.uiMaskRtStat		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnMovRel.uiMaskRtStat		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogFront.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyMotionStdTrav.tyBtnJogRear.uiMaskRtStat	:= FALSE;
		
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn2.uiMaskRtStat		:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn2.uiMaskRtStat		:= FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn2.uiMaskRtStat		:= FALSE;
		
		eInShutterAct	:= PneuActIdle;
		eOutShutterAct	:= PneuActIdle;
		eOutShutterAct2	:= PneuActIdle;
		eOutShutterAct3	:= PneuActIdle;
		eTravAct	:= TravActIdle;
		
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	
END_ACTION
