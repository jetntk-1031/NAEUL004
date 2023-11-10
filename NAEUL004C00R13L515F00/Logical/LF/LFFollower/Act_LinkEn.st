(** 2019-04-26 **)
ACTION Act_LinkEn:
	
	//Link bPrep, bEn & bDis
	IF p_bLinkNtParamProjLaneBPrep = FALSE THEN
		p_bDis	:= (p_bLinkStartupRun = TRUE) OR (p_eLinkMcParamUSACommMod = McSetCommModHermes);
	ELSE
		p_bDis	:= (p_bLinkStartupRun = TRUE) OR (p_eLinkMcParamUSACommMod = McSetCommModHermes) OR (p_eLinkMcParamUSBCommMod = McSetCommModHermes);
	END_IF
	
END_ACTION
