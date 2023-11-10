
ACTION Act_OptP0937FBStat: 

	IF p_bAWPushOrPullerAxisErr = TRUE THEN
		tyP0937AWPushOrPuller.tyMotionStd.tyStringStat.sValue		:= p_sAWPushOrPullerAxisErrTxt;
	ELSE
		IF NOT (p_bAWPushOrPullerJogging AND p_eAWPushOrPullerStat = AWActIdle) THEN
	 			tyP0937AWPushOrPuller.tyMotionStd.tyStringStat.sValue		:= p_sAWPushOrPullerStatTxt;
		END_IF
	
	END_IF
	
END_ACTION
