
ACTION Act_Main_P0938:
	
	//Display
	//Magazine Auto Width 1
	tyP0938MagAW.tyMotionStd1.tyNumTargetPos.diValue	:= 0;
	tyP0938MagAW.tyMotionStd1.tyNumStepSize.diValue		:= 0;
	tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWNomSpd.diMax + p_tyNtParamCurr.tyUIMagAWNomSpd.diMin) / 2;
	tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax + p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin) / 3;
	
	tyP0938MagAW.tyMotionStd1.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd1.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUIMagAWTargetPos.diMin;
	
	tyP0938MagAW.tyMotionStd1.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd1.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMax * -1;
	
	tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMax;
	tyP0938MagAW.tyMotionStd1.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMin;
	
	tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax;
	tyP0938MagAW.tyMotionStd1.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin;
	
	tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMagAW1.tyNumNewWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	
	//Magazine Auto Width 2
	tyP0938MagAW.tyMotionStd2.tyNumTargetPos.diValue	:= 0;
	tyP0938MagAW.tyMotionStd2.tyNumStepSize.diValue		:= 0;
	tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWNomSpd.diMax + p_tyNtParamCurr.tyUIMagAWNomSpd.diMin) / 2;
	tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax + p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin) / 3;
	
	tyP0938MagAW.tyMotionStd2.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd2.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUIMagAWTargetPos.diMin;
	
	tyP0938MagAW.tyMotionStd2.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd2.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMax * -1;
	
	tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMax;
	tyP0938MagAW.tyMotionStd2.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMin;
	
	tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax;
	tyP0938MagAW.tyMotionStd2.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin;
	
	tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMagAW2.tyNumNewWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	
	//Magazine Auto Width 3
	tyP0938MagAW.tyMotionStd3.tyNumTargetPos.diValue	:= 0;
	tyP0938MagAW.tyMotionStd3.tyNumStepSize.diValue		:= 0;
	tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWNomSpd.diMax + p_tyNtParamCurr.tyUIMagAWNomSpd.diMin) / 2;
	tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.diValue		:= (p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax + p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin) / 3;
	
	tyP0938MagAW.tyMotionStd3.tyNumTargetPos.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd3.tyNumTargetPos.diValueMin	:= p_tyNtParamCurr.tyUIMagAWTargetPos.diMin;
	
	tyP0938MagAW.tyMotionStd3.tyNumStepSize.diValueMax	:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMotionStd3.tyNumStepSize.diValueMin	:= p_tyNtParamCurr.tyProdRcpWidth.diMax * -1;
	
	tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMax;
	tyP0938MagAW.tyMotionStd3.tyNumNomSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWNomSpd.diMin;
	
	tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.diValueMax	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMax;
	tyP0938MagAW.tyMotionStd3.tyNumSlwSpd.diValueMin	:= p_tyNtParamCurr.tyUIMagAWSlwSpd.diMin;
	
	tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValueMax		:= p_tyNtParamCurr.tyProdRcpWidth.diMax;
	tyP0938MagAW.tyMagAW3.tyNumNewWidth.diValueMin		:= p_tyNtParamCurr.tyProdRcpWidth.diMin;
	
END_ACTION
