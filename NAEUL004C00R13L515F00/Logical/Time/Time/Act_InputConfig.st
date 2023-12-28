
ACTION Act_InputConfig:
	
	p_tyLFFollower ACCESS p_LFFollower;
	
	tylocalTime.In.eAct 		:= p_tyLFFollower.eTimeAct;
	tylocalTime.In.dtSetDT		:= p_tyLFFollower.dtTm;
	tylocalTime.In.udiRstErr	:= g_tyRstErrOut.bSafetyRlyRst;
	tylocalTime.In.sProgNm		:= g_tyNtParamCurr.sTimeProgNm;	

END_ACTION
