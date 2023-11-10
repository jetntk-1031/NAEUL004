
ACTION Act_Main_P1026:
	
	//Display
	//Curtain sensor bypass
	IF p_tyNtParamCurr.tyDOSettings.diBypCurtainSen > 0 THEN
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.uiRtStat := FALSE;
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.usiBitmapIdx := 5;
		tyP1026McSetTeach.tyTeachLifterPosA.tyBtn4.usiTxtIdx := 47;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.uiRtStat := FALSE;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.usiBitmapIdx := 5;
		tyP1026McSetTeach.tyTeachLifterPosB.tyBtn4.usiTxtIdx := 47;
		tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.uiRtStat := FALSE;
		tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.usiBitmapIdx := 5;
		tyP1026McSetTeach.tyTeachTravPosA.tyBtn4.usiTxtIdx := 47;
		tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.uiRtStat := FALSE;
		tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.usiBitmapIdx := 5;
		tyP1026McSetTeach.tyTeachTravPosB.tyBtn4.usiTxtIdx := 47;
	END_IF
	
	//Traverser
	tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.diValue		:= 0;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.diValue			:= 0;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValue			:= (p_tyNtParamCurr.tyUITravNomSpd.diMax + p_tyNtParamCurr.tyUITravNomSpd.diMin) / 2;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValue			:= (p_tyNtParamCurr.tyUITravSlwSpd.diMax + p_tyNtParamCurr.tyUITravSlwSpd.diMin) / 3;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.diValueMax		:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumTargetPos.diValueMin		:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.diValueMax		:= p_tyNtParamCurr.tyUITravStepSize.diMax;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumStepSize.diValueMin		:= p_tyNtParamCurr.tyUITravStepSize.diMin;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValueMax		:= p_tyNtParamCurr.tyUITravNomSpd.diMax;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumNomSpd.diValueMin		:= p_tyNtParamCurr.tyUITravNomSpd.diMin;
	
	tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValueMax		:= p_tyNtParamCurr.tyUITravSlwSpd.diMax;
	tyP1026McSetTeach.tyMotionStdTrav.tyNumSlwSpd.diValueMin		:= p_tyNtParamCurr.tyUITravSlwSpd.diMin;
	
	//Lifter
	tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.diValue		:= 0;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.diValue		:= 0;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValue			:= (p_tyNtParamCurr.tyUILifterNomSpd.diMax + p_tyNtParamCurr.tyUILifterNomSpd.diMin) / 2;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValue			:= (p_tyNtParamCurr.tyUILifterSlwSpd.diMax + p_tyNtParamCurr.tyUILifterSlwSpd.diMin) / 3;
	
	tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	
	tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyUILifterStepSize.diMax;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyUILifterStepSize.diMin;
	
	tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValueMax		:= p_tyNtParamCurr.tyUILifterNomSpd.diMax;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumNomSpd.diValueMin		:= p_tyNtParamCurr.tyUILifterNomSpd.diMin;
	
	tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValueMax		:= p_tyNtParamCurr.tyUILifterSlwSpd.diMax;
	tyP1026McSetTeach.tyMotionStdLifter.tyNumSlwSpd.diValueMin		:= p_tyNtParamCurr.tyUILifterSlwSpd.diMin;
	
END_ACTION
