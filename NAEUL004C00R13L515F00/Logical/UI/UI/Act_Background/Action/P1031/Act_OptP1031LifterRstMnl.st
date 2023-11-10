
ACTION Act_OptP1031LifterRstMnl:
	
	IF EDGEPOS((bManualMod = FALSE) OR (p_eLifterBtmStatus = Error)) THEN
		
		bJogSlow				:= FALSE;
		bJogFast				:= FALSE;
		fbJogSlowToFastDlyTm.IN	:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtCompl			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtCompl		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtCompl		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtCompl		:= FALSE;	
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bValue			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bValue			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bValue		:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bValue		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bValue		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bValue		:= FALSE;	
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnStop.bRtLk			:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.bRtLk				:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.bRtLk			:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.bRtLk			:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.bRtLk		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.bRtLk		:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.bRtLk		:= FALSE;
		
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnPwr.uiMaskRtStat		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnOrigin.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnRst.uiMaskRtStat		:= TRUE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovAbs.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnMovRel.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogUp.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyMotionStdLifter.tyBtnJogDown.uiMaskRtStat	:= FALSE;
		
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn2.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn2.uiMaskRtStat	:= FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn2.uiMaskRtStat	:= FALSE;
	
		eInShutterAct	:= PneuActIdle;
		eOutShutterAct	:= PneuActIdle;
		eOutShutterAct2	:= PneuActIdle;
		eOutShutterAct3	:= PneuActIdle;
		eLifterBtmAct	:= LifterActIdle;
		
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bRtCompl	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnClose.bValue	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bRtCompl	:= FALSE;
		tyP1031MagSetTeach.tyInOutletShutterFB.tyBtnOpen.bValue	:= FALSE;
		
	END_IF
	
END_ACTION
