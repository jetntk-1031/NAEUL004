
ACTION Act_Main_P0936:
	
	//Display
	tyP0936Trav.tyTrav.tyBtnGoToLaneB.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP0936Trav.tyTrav.tyBtnGoToMag3.uiRtStat.0		:= NOT(p_tyNtParamCurr.eProjMag = ULMagTriple);
	
	tyP0936Trav.tyMotionStd.tyNumTargetPos.diValue		:= 0;
	tyP0936Trav.tyMotionStd.tyNumStepSize.diValue		:= 0;
	tyP0936Trav.tyMotionStd.tyNumNomSpd.diValue			:= (p_tyNtParamCurr.tyUITravNomSpd.diMax + p_tyNtParamCurr.tyUITravNomSpd.diMin) / 2;
	tyP0936Trav.tyMotionStd.tyNumSlwSpd.diValue			:= (p_tyNtParamCurr.tyUITravSlwSpd.diMax + p_tyNtParamCurr.tyUITravSlwSpd.diMin) / 3;
	
	tyP0936Trav.tyMotionStd.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUITravTargetPos.diMax;
	tyP0936Trav.tyMotionStd.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUITravTargetPos.diMin;
	
	tyP0936Trav.tyMotionStd.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyUITravStepSize.diMax;
	tyP0936Trav.tyMotionStd.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyUITravStepSize.diMin;
	
	tyP0936Trav.tyMotionStd.tyNumNomSpd.diValueMax		:= p_tyNtParamCurr.tyUITravNomSpd.diMax;
	tyP0936Trav.tyMotionStd.tyNumNomSpd.diValueMin		:= p_tyNtParamCurr.tyUITravNomSpd.diMin;
	
	tyP0936Trav.tyMotionStd.tyNumSlwSpd.diValueMax		:= p_tyNtParamCurr.tyUITravSlwSpd.diMax;
	tyP0936Trav.tyMotionStd.tyNumSlwSpd.diValueMin		:= p_tyNtParamCurr.tyUITravSlwSpd.diMin;
	
END_ACTION
