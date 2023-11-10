
ACTION Act_OptP0938FBStat: 
	
	(*Magazine Auto Width 1*)
	IF p_bMagAWOpen1AxisErr = TRUE THEN
		tyP0938MagAW.tyMotionStd1.tyStringStat.sValue	:= p_sMagAWOpen1AxisErrTxt;
	ELSE
		tyP0938MagAW.tyMotionStd1.tyStringStat.sValue	:= p_sMagAWOpen1StatTxt;
	END_IF
	
	
	
	(*Magazine Auto Width 2*)
	IF p_bMagAWOpen2AxisErr = TRUE THEN
		tyP0938MagAW.tyMotionStd2.tyStringStat.sValue	:= p_sMagAWOpen2AxisErrTxt;
	ELSE
		tyP0938MagAW.tyMotionStd2.tyStringStat.sValue	:= p_sMagAWOpen2StatTxt;
	END_IF
	
	
	
	(*Magazine Auto Width 3*)
	IF p_bMagAWOpen3AxisErr = TRUE THEN
		tyP0938MagAW.tyMotionStd3.tyStringStat.sValue	:= p_sMagAWOpen3AxisErrTxt;
	ELSE
		tyP0938MagAW.tyMotionStd3.tyStringStat.sValue	:= p_sMagAWOpen3StatTxt;
	END_IF
	
END_ACTION
