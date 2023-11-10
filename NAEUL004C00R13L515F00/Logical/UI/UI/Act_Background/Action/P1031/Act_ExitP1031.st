
ACTION Act_ExitP1031:
	
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
	tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.bValue				:= FALSE;
	tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.bValue				:= FALSE;
	tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.bValue				:= FALSE;
	tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.bValue				:= FALSE;
	tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.bValue				:= FALSE;
	tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.bValue				:= FALSE;
	
	//Traverser
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
	
	//Lifter
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
	
END_ACTION
