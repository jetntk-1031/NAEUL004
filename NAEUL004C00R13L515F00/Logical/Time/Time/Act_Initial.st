
ACTION Act_Initial:
	
	//Initial
	tylocalTime.Out.sStatTxt	:= a_sStatText[tylocalTime.Out.eStat];
	
	fbSetTime(enable := FALSE);
	
	fbSetTimeZone.option	:= cfgOPTION_NON_VOLATILE;
	fbSetTimeZone(enable := FALSE);
	
	fbGetTime(enable := FALSE);
	
	fbGetTime1(enable := FALSE);
	
	fbGetTimeDT.pDTStructure	:= ADR(tylocalTime.Out.tyCurrDTStruct);
	fbGetTimeDT(enable := FALSE);
	
	fbGetTimeDT1.pDTStructure	:= ADR(tylocalTime.Out.tyCurrDTStruct);
	fbGetTimeDT1(enable := FALSE);
	
	fbGetTimeZone(enable := FALSE);
	
	fbDlyTm(IN := FALSE);
	
END_ACTION
