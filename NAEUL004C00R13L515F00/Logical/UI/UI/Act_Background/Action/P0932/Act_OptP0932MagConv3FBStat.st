
ACTION Act_OptP0932MagConv3FBStat:
	

	IF tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue = TRUE 
		OR tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
		THEN	
		tyP0932MagConv3.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp3StatTxt;
	ELSIF (tyP0932MagConv3.tyFB.tyBtnFixedClamp.bValue = FALSE AND  tyP0932MagConv3.tyFB.tyBtnRemoteClamp.bValue = FALSE 
		AND tyP0932MagConv3.tyFB.tyBtnFixedUnclamp.bValue = FALSE AND  tyP0932MagConv3.tyFB.tyBtnRemoteUnclamp.bValue = FALSE 
		AND p_eMagConv2Clp3Status <> Busy) 
		THEN	
		tyP0932MagConv3.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp3StatTxt;	
	
	ELSIF tyP0932MagConv3.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0932MagConv3.tyFB.tyBtnSelClamp.bValue = TRUE 
		THEN
		tyP0932MagConv3.tyFB.tyStringStat.sValue	:= p_sSelClamp3StatTxt;
	END_IF	
END_ACTION
