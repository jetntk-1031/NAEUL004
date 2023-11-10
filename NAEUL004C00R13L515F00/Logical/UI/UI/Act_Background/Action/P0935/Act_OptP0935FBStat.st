
ACTION Act_OptP0935FBStat: 
	
	IF p_bLifterBtmAxisErr = TRUE THEN
		tyP0935Lifter.tyMotionStd.tyStringStat.sValue	:= p_sLifterBtmAxisErrTxt;
	ELSE
		IF NOT(p_bLifterBtmJogging AND p_eLifterBtmStat = LifterActIdle) THEN
			tyP0935Lifter.tyMotionStd.tyStringStat.sValue	:= p_sLifterBtmStatTxt;
		END_IF
	END_IF
	
END_ACTION
