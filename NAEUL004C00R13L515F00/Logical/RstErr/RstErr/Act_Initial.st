
ACTION Act_Initial:
	
	//Initial
	tylocalRstErr.Out.sStatTxt	:= a_sStatText[tylocalRstErr.Out.eStat];
	
	fbSafetyRlyRstTm(IN := FALSE);
	
END_ACTION
