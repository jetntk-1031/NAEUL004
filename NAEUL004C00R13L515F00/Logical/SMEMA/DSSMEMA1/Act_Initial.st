(** 2019-04-27 **)
ACTION Act_Initial:
	
	//Initial
	tylocalDSSMEMA.Out.sStatTxt	:= a_sStatText[eStat];
	
	fbSMEMA_OppFirst.tRstDlyTm	:= tylocalDSSMEMA.In.tRstDlyTm;
	fbSMEMA_OppFirst(bEn := FALSE);
	
	fbSMEMA.tRstDlyTm	:= tylocalDSSMEMA.In.tRstDlyTm;
	fbSMEMA(bEn := FALSE);
	
	fbTimerDlyTm(IN := FALSE);
	fbTimeTrig(CLK := TRUE);
	
	fbSigInChk.tSigInChkTm	:= tylocalDSSMEMA.In.tSigInChkTm;
	
END_ACTION
