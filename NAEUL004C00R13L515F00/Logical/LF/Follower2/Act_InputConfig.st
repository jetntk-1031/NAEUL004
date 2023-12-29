(** 2019-06-12 **)
ACTION Act_InputConfig:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Internal Use

	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp2;
	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp1;	//Follower 2 Assign With Follower 1 Recipe
	
	
	
	tylocalFollower.In.bDis	:= (g_tyStartUp.bRun = TRUE);
	tylocalFollower.In.bPrep := NOT(g_tyNtParamCurr.bAutoRcpPrep) OR g_tyMcParamCurr.bAutoRcpDisable; 
	
	
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	IF g_tyNtParamCurr.eProjMag = ULMagDual THEN
		bBffrMagRemoved		:= (g_tyBuffer1.bMagRemoved = TRUE) AND (g_tyBuffer2.bMagRemoved = TRUE);
		bOpsInitDone		:= g_tyOpsMagConvUL1.bInitDone AND g_tyOpsMagConvUL2.bInitDone;
	ELSIF g_tyNtParamCurr.eProjMag = ULMagTriple THEN
		bBffrMagRemoved		:= (g_tyBuffer1.bMagRemoved = TRUE) AND (g_tyBuffer2.bMagRemoved = TRUE) AND (g_tyBuffer3.bMagRemoved = TRUE);
		bOpsInitDone		:= g_tyOpsMagConvUL1.bInitDone AND g_tyOpsMagConvUL2.bInitDone AND g_tyOpsMagConvUL3.bInitDone;
	END_IF
		
	IF bBffrMagRemoved = FALSE THEN
		p_sInfoMsg		:= 'New Recipe Loaded';
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , '$r$n');
		p_sInfoMsg		:= CONCAT(p_sInfoMsg , 'Please Remove All Magazines.');
	ELSE
		p_sInfoMsg		:= '';
	END_IF
	
	
	//Accept New Recipe Condition (Before Loaded New Recipe)
	p_bAccNewRcpCond	:=  bBffrMagRemoved = TRUE;
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;
	
	//Recipe Different
	p_bInternalReqProdRcpDiff	:= memcmp(ADR(p_tyCurrProdRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
		
END_ACTION
