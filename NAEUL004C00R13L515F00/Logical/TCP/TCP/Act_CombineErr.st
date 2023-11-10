(** 2019-03-15 **)
ACTION Act_CombineErr:
	
	//Combine Error
	IF eStatus = Error OR eStatus1 = Error OR eStatus2 = Error THEN
		eMainStatus	:= Error;
	ELSE
		eMainStatus	:= eStatus;
	END_IF
	
END_ACTION
