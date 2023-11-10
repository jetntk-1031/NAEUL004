(** 2021-04-20 **)
ACTION Act_Initial:
	
	//Initial
	sStatTxt	:= a_sStatText[eStat];
	
	fbSOT.tRstDlyTm	:= p_tRstDlyTm;
	fbSOT(bEn := FALSE);
	
	fbSigInChk.tSigInChkTm	:= p_tSigInChkTm;
	
END_ACTION
