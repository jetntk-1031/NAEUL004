
ACTION Act_Initial:
	
	//Initial
	tylocalUSSMEMA.Out.sStatTxt		:= a_sStatText[tylocalUSSMEMA.Out.eStat];
	fbSMEMA_Std(bEn := FALSE);
	fbSMEMA_9851(bEn := FALSE);	
	fbTimerDlyTm(IN := FALSE);
	fbTimeTrig(CLK := TRUE);
	
END_ACTION
