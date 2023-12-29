(** 2021-04-20 **)
ACTION Act_Background:
	
	//background
	IF tylocalDSSOT.Out.bConvStart = FALSE AND tylocalDSSOT.Out.bConvStop = FALSE THEN	
		IF tylocalDSSOT.In.bVirtualEn = TRUE THEN
			tylocalDSSOT.Out.bVirtual	:= TRUE;
		ELSE
			tylocalDSSOT.Out.bVirtual	:= FALSE;
		END_IF
	END_IF
	
	IF tylocalDSSOT.Out.bVirtual = TRUE THEN
		
		fbSigInChk.bNomSig			:= tylocalDSSOT.In.bDSBVirtual;
	
	ELSE
		
		fbSigInChk.bNomSig			:= tylocalDSSOT.In.bDSB;
	
	END_IF
	
	fbSigInChk;
	
	tylocalDSSOT.Out.bDSRdy	:= fbSigInChk.bSigInValid;
	
END_ACTION
