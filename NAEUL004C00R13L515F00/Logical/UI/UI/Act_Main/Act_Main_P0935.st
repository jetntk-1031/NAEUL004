
ACTION Act_Main_P0935:
	
	tyP0935Lifter.tyLifter.tyBtnGoLaneB.uiRtStat.0	:= NOT p_tyNtParamCurr.bProjLaneBPrep;
	tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiRtStat 		:= p_tyNtParamCurr.bProjMagConvLane1Prep;
	tyP0935Lifter.tyLifter.tyBtnGoLaneA.uiMaskRtStat 	:= p_tyNtParamCurr.bProjMagConvLane1Prep;
	tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.uiRtStat 		:= NOT (p_tyNtParamCurr.bProjMagConvLane1Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneD_G.uiMaskRtStat 	:= NOT (p_tyNtParamCurr.bProjMagConvLane1Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.uiRtStat 		:= NOT (p_tyNtParamCurr.bProjMagConvLane1Prep);
	tyP0935Lifter.tyLifter.tyBtnGoLaneE_H.uiMaskRtStat 	:= NOT (p_tyNtParamCurr.bProjMagConvLane1Prep);

	//Display
	tyP0935Lifter.tyMotionStd.tyNumTargetPos.diValue	:= 0;
	tyP0935Lifter.tyMotionStd.tyNumStepSize.diValue		:= 0;
	tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUILifterNomSpd.diMax + p_tyNtParamCurr.tyUILifterNomSpd.diMin) / 2;
	tyP0935Lifter.tyMotionStd.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUILifterSlwSpd.diMax + p_tyNtParamCurr.tyUILifterSlwSpd.diMin) / 3;
	
	tyP0935Lifter.tyMotionStd.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyUILifterTargetPos.diMax;
	tyP0935Lifter.tyMotionStd.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUILifterTargetPos.diMin;
	
	tyP0935Lifter.tyMotionStd.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyUILifterStepSize.diMax;
	tyP0935Lifter.tyMotionStd.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyUILifterStepSize.diMin;
	
	tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUILifterNomSpd.diMax;
	tyP0935Lifter.tyMotionStd.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUILifterNomSpd.diMin;
	
	tyP0935Lifter.tyMotionStd.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUILifterSlwSpd.diMax;
	tyP0935Lifter.tyMotionStd.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUILifterSlwSpd.diMin;
	
	tyP0935Lifter.tyLifter.tyNumMagPos.diValue			:= 1;
	tyP0935Lifter.tyLifter.tyNumMagPos.diValueMin		:= 1;

	
	
	CASE p_tyNtParamCurr.eProjMag OF
		
		ULMagDual:
			IF p_tyNtParamCurr.bProjMagConvLane1Prep THEN
				tyP0935Lifter.tyLifter.tyNumMagPos.diValueMax		:= 1;
			ELSE
				tyP0935Lifter.tyLifter.tyNumMagPos.diValueMax		:= 2;
			END_IF
			
		ULMagTriple:
			tyP0935Lifter.tyLifter.tyNumMagPos.diValueMax		:= 3;	
		
		ULMagQuadruple:
			tyP0935Lifter.tyLifter.tyNumMagPos.diValueMax		:= 4;
	
	END_CASE
	
	
	IF p_tyNtParamCurr.bProjLifterMagPlatform THEN
		tyP0935Lifter.tyLifter.tyBtnGoLaneA.usiTxtIdx := 23;
	END_IF
	
	
END_ACTION
