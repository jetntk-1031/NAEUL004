
ACTION Act_OptP1031LifterFBStat: 

	IF p_bLifterBtmAxisErr = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifterBtmAxisErrTxt;
	ELSE
		tyP1031MagSetTeach.tyMotionStdLifter.tyStringStat.sValue		:= p_sLifterBtmStatTxt;
	END_IF
	
END_ACTION
