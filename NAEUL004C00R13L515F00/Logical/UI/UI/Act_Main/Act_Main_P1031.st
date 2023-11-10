
ACTION Act_Main_P1031:
	
	//Display
	//Curtain sensor bypass
	IF p_tyNtParamCurr.tyDOSettings.diBypCurtainSen > 0 THEN
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachTravPosMag1.tyBtn4.usiTxtIdx := 47;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachTravPosMag2.tyBtn4.usiTxtIdx := 47;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachTravPosMag3.tyBtn4.usiTxtIdx := 47;
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachLifterMag1Slt1Pos.tyBtn4.usiTxtIdx := 47;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachLifterMag2Slt1Pos.tyBtn4.usiTxtIdx := 47;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.uiRtStat := FALSE;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.usiBitmapIdx := 5;
		tyP1031MagSetTeach.tyTeachLifterMag3Slt1Pos.tyBtn4.usiTxtIdx := 47;
	END_IF
	
	//Traverser
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.diValue		:= 0;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.diValue		:= 0;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue			:= (p_tyNtParamCurr.tyUITravNomSpd.diMax + p_tyNtParamCurr.tyUITravNomSpd.diMin) / 2;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue			:= (p_tyNtParamCurr.tyUITravSlwSpd.diMax + p_tyNtParamCurr.tyUITravSlwSpd.diMin) / 3;
	
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.diValueMax		:= p_tyNtParamCurr.tyUITravStepSize.diMax;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumStepSize.diValueMin		:= p_tyNtParamCurr.tyUITravStepSize.diMin;
	
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValueMax		:= p_tyNtParamCurr.tyUITravNomSpd.diMax;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumNomSpd.diValueMin		:= p_tyNtParamCurr.tyUITravNomSpd.diMin;
	
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValueMax		:= p_tyNtParamCurr.tyUITravSlwSpd.diMax;
	tyP1031MagSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValueMin		:= p_tyNtParamCurr.tyUITravSlwSpd.diMin;
	
	//Lifter
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.diValue		:= 0;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.diValue		:= 0;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUILifterNomSpd.diMax + p_tyNtParamCurr.tyUILifterNomSpd.diMin) / 2;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUILifterSlwSpd.diMax + p_tyNtParamCurr.tyUILifterSlwSpd.diMin) / 3;
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyUILifterStepSize.diMax;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyUILifterStepSize.diMin;
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValueMax		:= p_tyNtParamCurr.tyUILifterNomSpd.diMax;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumNomSpd.diValueMin		:= p_tyNtParamCurr.tyUILifterNomSpd.diMin;
	
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValueMax		:= p_tyNtParamCurr.tyUILifterSlwSpd.diMax;
	tyP1031MagSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValueMin		:= p_tyNtParamCurr.tyUILifterSlwSpd.diMin;
	
END_ACTION
