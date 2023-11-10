(** 2019-03-29 **)
ACTION Act_Link:
	
	p_bRdySend	:= p_bLinkConvHvBrd AND p_eLinkOpsTravLifPosGo = TravLifULPosDS1;
	
	p_bComplSigOn	:= p_bLinkConvHvBrd = FALSE AND p_bClrSen = FALSE;
	
	p_bDirLToR	:= p_eLinkConvDir = ConvDirLToR OR p_eLinkConvDir = ConvDirLToL;
	
	
END_ACTION
