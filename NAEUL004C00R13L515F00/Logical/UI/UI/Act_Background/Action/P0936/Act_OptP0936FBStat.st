
ACTION Act_OptP0936FBStat: 

	IF p_bTravAxisErr = TRUE THEN
		tyP0936Trav.tyMotionStd.tyStringStat.sValue		:= p_sTravAxisErrTxt;
	ELSE
		IF NOT(p_bTravJogging AND p_eTravStat = TravActIdle) THEN
			tyP0936Trav.tyMotionStd.tyStringStat.sValue		:= p_sTravStatTxt;
		END_IF
	END_IF
	
END_ACTION
