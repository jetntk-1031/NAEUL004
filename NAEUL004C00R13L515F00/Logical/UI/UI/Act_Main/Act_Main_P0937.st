
ACTION Act_Main_P0937:
	
	//Display
	tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.diValue	:= 0;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.diValue		:= 0;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUIAWNomSpd.diMax + p_tyNtParamCurr.tyUIAWNomSpd.diMin) / 2;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUIAWSlwSpd.diMax + p_tyNtParamCurr.tyUIAWSlwSpd.diMin) / 3;
	
	tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUIAWTargetPos.diMin;
	
	tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMax * -1;
	
	tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUIAWNomSpd.diMax;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUIAWNomSpd.diMin;
	
	tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUIAWSlwSpd.diMax;
	tyP0937AWPushOrPuller.tyMotionStd.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUIAWSlwSpd.diMin;
	
	tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.diValueMax			:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0937AWPushOrPuller.tyAW.tyNumNewWidth.diValueMin			:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	
	
END_ACTION
