
ACTION Act_OptP1031TravFBStat: 

	IF p_bTravAxisErr = TRUE THEN
		tyP1031MagSetTeach.tyMotionStdTrav.tyStringStat.sValue		:= p_sTravAxisErrTxt;
	ELSE
		tyP1031MagSetTeach.tyMotionStdTrav.tyStringStat.sValue		:= p_sTravStatTxt;
	END_IF
	
END_ACTION
