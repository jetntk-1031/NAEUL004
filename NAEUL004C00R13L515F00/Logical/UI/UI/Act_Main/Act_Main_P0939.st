
ACTION Act_Main_P0939:
	
	tyP0939Lifter2.tyLifter.tyBtnGoLaneB.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiRtStat.0	:= p_tyNtParamCurr.bProjMagConvLane2Prep;
	tyP0939Lifter2.tyLifter.tyBtnGoLaneA.uiRtStat.0	:= p_tyNtParamCurr.bProjMagConvLane2Prep;
	tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.uiRtStat 		:= NOT (p_tyNtParamCurr.bProjMagConvLane2Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat 	:= NOT (p_tyNtParamCurr.bProjMagConvLane2Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.uiRtStat 		:= NOT (p_tyNtParamCurr.bProjMagConvLane2Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat 	:= NOT (p_tyNtParamCurr.bProjMagConvLane2Prep);

	//Display
	tyP0939Lifter2.tyMotionStd.tyNumTargetPos.diValue	:= 0;
	tyP0939Lifter2.tyMotionStd.tyNumStepSize.diValue		:= 0;
	tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUILifterNomSpd.diMax + p_tyNtParamCurr.tyUILifterNomSpd.diMin) / 2;
	tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUILifterSlwSpd.diMax + p_tyNtParamCurr.tyUILifterSlwSpd.diMin) / 3;
	
	tyP0939Lifter2.tyMotionStd.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP0939Lifter2.tyMotionStd.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	
	tyP0939Lifter2.tyMotionStd.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyUILifterStepSize.diMax;
	tyP0939Lifter2.tyMotionStd.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyUILifterStepSize.diMin;
	
	tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUILifterNomSpd.diMax;
	tyP0939Lifter2.tyMotionStd.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUILifterNomSpd.diMin;
	
	tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUILifterSlwSpd.diMax;
	tyP0939Lifter2.tyMotionStd.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUILifterSlwSpd.diMin;
	
	tyP0939Lifter2.tyLifter.tyNumMagPos.diValue			:= 2;
	tyP0939Lifter2.tyLifter.tyNumMagPos.diValueMin		:= 2;
	tyP0939Lifter2.tyLifter.tyNumMagPos.diValueMax		:= 2;
	
	
	CASE p_tyNtParamCurr.eProjMag OF
		
		ULMagDual:
			tyP0939Lifter2.tyLifter.tyNumMagPos.diValueMax		:= 2;
			
		ULMagTriple:
			tyP0939Lifter2.tyLifter.tyNumMagPos.diValueMax		:= 3;	
		
		ULMagQuadruple:
			tyP0939Lifter2.tyLifter.tyNumMagPos.diValueMax		:= 4;
	
	END_CASE
	
	
	IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0939Lifter2.tyLifter.tyBtnGoLaneA.usiTxtIdx := 23;
	END_IF
	
	
END_ACTION
