(** 2021-04-20 **)
ACTION Act_Background:
	
		
	IF tylocalUSSOT.Out.bConvStart = FALSE AND tylocalUSSOT.Out.bConvStop = FALSE THEN

		IF tylocalUSSOT.In.tylocalUSSOT.Out.bVirtualEn = TRUE THEN
			tylocalUSSOT.Out.bVirtual	:= TRUE;
		ELSE
			tylocalUSSOT.Out.bVirtual	:= FALSE;
		END_IF
	END_IF
	
	IF tylocalUSSOT.Out.bVirtual = TRUE THEN
		
		fbSigInChk.bNomSig	:= tylocalUSSOT.In.bUBAVirtual;	
	ELSE
		
		fbSigInChk.bNomSig	:= tylocalUSSOT.In.bUMA;
		fbSigInChk.bMagSizeSig := tylocalUSSOT.In.bUMASize;
	
	END_IF
	
	fbSigInChk;
	
	tylocalUSSOT.Out.bUSRdy			:= fbSigInChk.bSigInValid;	
	tylocalUSSOT.Out.bUSLargeMagRdy	:= fbSigInChk.bMagSizeLarge;
	
END_ACTION
