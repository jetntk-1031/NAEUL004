(** 2019-06-27 **)
ACTION Act_InputConfig:
	
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp1;
	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0; //Follower 1 Assign With Default Recipe
	
	
	
	//US width check sensor selection
	tylocalFollower.In.bUSWidthChkSen := g_tyDInput.bUSWidthChkSen;
	
	//Link bPrep, bEn & bDis
	tylocalFollower.In.bDis	:= (g_tyStartUp.bRun = TRUE);
	IF g_tyNtParamCurr.bAutoRcpPrep AND NOT(g_tyMcParamCurr.bAutoRcpDisable) THEN 
		CASE p_eNtParamAutoRcpPrecededBy OF 
			PrecededBySelf:
				tylocalFollower.In.bPrep := FALSE;
			PrecededByF1:
				tylocalFollower.In.bPrep := TRUE;
		END_CASE
	ELSE
		tylocalFollower.In.bPrep := TRUE;
	END_IF
	
	
	
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	p_sInfoMsg	:= '';
	
	//Accept New Recipe Condition (Before Loaded New Recipe)
	p_bAccNewRcpCond	:= (g_tyOps.bRun = TRUE) AND (g_tyOpsTravLifUL.bInitDone = TRUE) AND (g_tyPshrConv.bHvBrd = FALSE);
	
	//Update New Recipe Condition (After Loaded New Recipe)
	p_bUpdtNewRcpCond	:= TRUE;

	//Recipe Different
	p_bInternalReqProdRcpDiff	:= memcmp(ADR(p_tyCurrProdRcp) , ADR(p_tyInternalReqProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;
	p_bUpdtProdRcpDiff			:= memcmp(ADR(p_tyCurrProdRcp) , ADR(tylocalFollower.Out.tyUpdtProdRcp) , SIZEOF(p_tyCurrProdRcp)) <> 0;

END_ACTION
