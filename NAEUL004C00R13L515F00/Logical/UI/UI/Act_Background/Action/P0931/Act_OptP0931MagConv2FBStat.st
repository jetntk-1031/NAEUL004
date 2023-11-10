
ACTION Act_OptP0931MagConv2FBStat:
	
	IF tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue = TRUE 
		OR tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
		THEN	
		tyP0931MagConv2.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp2StatTxt;
	
	ELSIF (tyP0931MagConv2.tyFB.tyBtnFixedClamp.bValue = FALSE AND  tyP0931MagConv2.tyFB.tyBtnRemoteClamp.bValue = FALSE 
		AND tyP0931MagConv2.tyFB.tyBtnFixedUnclamp.bValue = FALSE AND  tyP0931MagConv2.tyFB.tyBtnRemoteUnclamp.bValue = FALSE 
		AND p_eMagConv2Clp2Status <> Busy )
		THEN		
		tyP0931MagConv2.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp2StatTxt;
		
	ELSIF tyP0931MagConv2.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0931MagConv2.tyFB.tyBtnSelClamp.bValue = TRUE 
		THEN
		tyP0931MagConv2.tyFB.tyStringStat.sValue	:= p_sSelClamp2StatTxt;
	END_IF	
END_ACTION
