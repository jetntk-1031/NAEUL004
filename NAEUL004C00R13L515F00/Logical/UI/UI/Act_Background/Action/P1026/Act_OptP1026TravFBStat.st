
ACTION Act_OptP1026TravFBStat: 

	IF p_bTravAxisErr = TRUE THEN
		tyP1026McSetTeach.tyMotionStdTrav.tyStringStat.sValue		:= p_sTravAxisErrTxt;
	ELSE
		tyP1026McSetTeach.tyMotionStdTrav.tyStringStat.sValue		:= p_sTravStatTxt;
	END_IF
	
END_ACTION
