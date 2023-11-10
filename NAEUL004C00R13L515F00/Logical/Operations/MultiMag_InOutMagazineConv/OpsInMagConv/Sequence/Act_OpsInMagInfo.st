(** 2019-04-16 **)
ACTION Act_OpsInMagInfo:
	
	IF p_bLinkInMagConvMidSen = TRUE AND p_bLinkInMagConvExtSen = TRUE AND p_bCurtainSensorStat = TRUE THEN
		udiStatus1		:= 10001;//Top magazine conveyor full.
	ELSE
		udiStatus1		:= 0;
	END_IF
	

END_ACTION
