(** 2020-08-06 **)
ACTION Act_Initial:
	fbDirCreate1.sDevice	:= 'F';
	fbDirCreate1.sDirName	:= 'User';
	fbDirCreate1(bEn := FALSE);
	
	fbDirCreate2.sDevice	:= 'User';
	fbDirCreate2.sDirName	:= 'Retain';
	fbDirCreate2(bEn := FALSE);
	
	
	
	
	CASE p_eNtParamAutoRcpPrecededBy OF  
		PrecededBySelf: 
			PrecededBySelfInitial;
		PrecededByF1:
			PrecededByF1Initial;
	END_CASE

END_ACTION
