
ACTION Act_OptP0939FBStat: 
	
	IF p_bLifter2AxisErr = TRUE THEN
		tyP0939Lifter2.tyMotionStd.tyStringStat.sValue	:= p_sLifter2AxisErrTxt;
	ELSE
		IF NOT(p_bLifter2Jogging AND p_eLifter2Stat = LifterActIdle) THEN
			tyP0939Lifter2.tyMotionStd.tyStringStat.sValue	:= p_sLifter2StatTxt;
		END_IF
	END_IF
	
END_ACTION
