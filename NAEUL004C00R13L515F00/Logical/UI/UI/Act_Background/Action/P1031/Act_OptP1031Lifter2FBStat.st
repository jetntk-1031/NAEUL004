
ACTION Act_OptP1031Lifter2FBStat: 

	IF p_bLifter2AxisErr = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifter2AxisErrTxt;
	ELSE
		tyP1031MagSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifter2StatTxt;
	END_IF
	
END_ACTION
