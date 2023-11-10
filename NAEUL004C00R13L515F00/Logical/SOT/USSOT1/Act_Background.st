(** 2021-04-20 **)
ACTION Act_Background:
	
	IF bConvStart = FALSE AND bConvStop = FALSE THEN

		IF p_bVirtualEn = TRUE THEN
			bVirtual	:= TRUE;
		ELSE
			bVirtual	:= FALSE;
		END_IF
	END_IF
	
	IF bVirtual = TRUE THEN
		
		fbSigInChk.bNomSig	:= p_bUBAVirtual;	
	ELSE
		
		fbSigInChk.bNomSig	:= p_bUMA;
		fbSigInChk.bMagSizeSig := p_bUMASize;
	
	END_IF
	
	fbSigInChk;
	
	bUSRdy			:= fbSigInChk.bSigInValid;	
	bUSLargeMagRdy	:= fbSigInChk.bMagSizeLarge;
	
END_ACTION
