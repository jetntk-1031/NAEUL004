
ACTION Act_OptP0930MagConv1FBStat:
	
IF tyP0930MagConv1.tyFB.tyBtnFixedClamp.bValue = TRUE OR tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bValue = TRUE 
	OR tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bValue = TRUE OR tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bValue = TRUE 
		THEN	
		tyP0930MagConv1.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp1StatTxt;
ELSIF (tyP0930MagConv1.tyFB.tyBtnFixedClamp.bValue = FALSE AND  tyP0930MagConv1.tyFB.tyBtnRemoteClamp.bValue = FALSE 
		AND tyP0930MagConv1.tyFB.tyBtnFixedUnclamp.bValue = FALSE AND  tyP0930MagConv1.tyFB.tyBtnRemoteUnclamp.bValue = FALSE 
		AND p_eMagConv2Clp1Status <> Busy)
		THEN	
		tyP0930MagConv1.tyFB.tyStringStat.sValue	:= p_sMagConv2Clp1StatTxt;
ELSIF tyP0930MagConv1.tyFB.tyBtnSelUnclamp.bValue = TRUE OR tyP0930MagConv1.tyFB.tyBtnSelClamp.bValue = TRUE 
		THEN
		tyP0930MagConv1.tyFB.tyStringStat.sValue	:= p_sSelClamp1StatTxt;
END_IF		
		
END_ACTION
