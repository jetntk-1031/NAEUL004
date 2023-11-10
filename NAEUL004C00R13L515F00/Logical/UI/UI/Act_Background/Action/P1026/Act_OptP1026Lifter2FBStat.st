
ACTION Act_OptP1026Lifter2FBStat: 

	IF p_bLifter2AxisErr = TRUE THEN
		tyP1026McSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifter2AxisErrTxt;
	ELSE
		tyP1026McSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifter2StatTxt;
	END_IF
	
END_ACTION
