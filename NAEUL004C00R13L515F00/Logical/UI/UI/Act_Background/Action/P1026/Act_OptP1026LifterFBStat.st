
ACTION Act_OptP1026LifterFBStat: 

	IF p_bLifterBtmAxisErr = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifterBtmAxisErrTxt;
	ELSE
		tyP1026McSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifterBtmStatTxt;
	END_IF
	
END_ACTION
