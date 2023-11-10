(** 2019-07-04 **)
ACTION Act_Link:
	
	//Temporary (Recipe No Save)
	IF p_tyCurrProdRcp.sRcpNm = '' AND p_tyCurrProdRcp.diWidthInUM = 0 THEN
		p_tyCurrProdRcp	:= p_tyInternalReqProdRcp;
	END_IF
	
	//Info Message
	IF p_eLinkNtParamProjMag = ULMagDual THEN
		bBffrMagRemoved		:= (p_bLinkBffr1MagRemoved = TRUE) AND (p_bLinkBffr2MagRemoved = TRUE);
//		bOpsInitDone		:= ((p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagConvUL1InitDone) OR (NOT p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagUL1InitDone))
//								AND ((p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagConvUL2InitDone) OR (NOT p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagUL2InitDone));
		bOpsInitDone		:= p_bLinkOpsMagConvUL1InitDone AND p_bLinkOpsMagConvUL2InitDone;
	ELSIF p_eLinkNtParamProjMag = ULMagTriple THEN
		bBffrMagRemoved		:= (p_bLinkBffr1MagRemoved = TRUE) AND (p_bLinkBffr2MagRemoved = TRUE) AND (p_bLinkBffr3MagRemoved = TRUE);
//		bOpsInitDone		:= ((p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagConvUL1InitDone) OR (NOT p_bLinkNtParamProjMagConv1Prep AND p_bLinkOpsMagUL1InitDone))
//								AND ((p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagConvUL2InitDone) OR (NOT p_bLinkNtParamProjMagConv2Prep AND p_bLinkOpsMagUL2InitDone))
//								AND ((p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagConvUL3InitDone) OR (NOT p_bLinkNtParamProjMagConv3Prep AND p_bLinkOpsMagUL3InitDone));
		bOpsInitDone		:= p_bLinkOpsMagConvUL1InitDone AND p_bLinkOpsMagConvUL2InitDone AND p_bLinkOpsMagConvUL3InitDone;
	
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
