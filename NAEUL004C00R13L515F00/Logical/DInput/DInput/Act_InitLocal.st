(** 2019-03-25 **)
ACTION Act_InitLocal:
	
	//Input Reference Link To Local Variable
	p_udiMax ACCESS ADR(c_udiDInputMax);
	p_udiRstErr ACCESS ADR(udiRstErr);
	p_tyDISettings ACCESS ADR(tyDISettings);
	p_sProgNm ACCESS ADR(sProgNm);
	
	p_diConvLftSenOnTm ACCESS ADR(diConvLftSenOnTm);
	p_diConvLftSenOffTm ACCESS ADR(diConvLftSenOffTm);
	p_diConvMidSenOnTm ACCESS ADR(diConvMidSenOnTm);
	p_diConvMidSenOffTm ACCESS ADR(diConvMidSenOffTm);
	p_diConvRgtSenOnTm ACCESS ADR(diConvRgtSenOnTm);
	p_diConvRgtSenOffTm ACCESS ADR(diConvRgtSenOffTm);
	p_diConvClrSenOnTm ACCESS ADR(diConvClrSenOnTm);
	p_diConvClrSenOffTm ACCESS ADR(diConvClrSenOffTm);
	p_diMagConvEntSenOnTm ACCESS ADR(diMagConvEntSenOnTm);
	p_diMagConvEntSenOffTm ACCESS ADR(diMagConvEntSenOffTm);
	p_diMagConvPresentSenOnTm ACCESS ADR(diMagConvPresentSenOnTm);
	p_diMagConvPresentSenOffTm ACCESS ADR(diMagConvPresentSenOffTm);
	
	//MagConv IN/OUT 
	p_diInMagConvEntSenOnTm ACCESS ADR(diInMagConvEntSenOnTm);
	p_diInMagConvEntSenOffTm ACCESS ADR(diInMagConvEntSenOffTm);
	p_diInMagConvExtSenOnTm ACCESS ADR(diInMagConvExtSenOnTm);
	p_diInMagConvExtSenOffTm ACCESS ADR(diInMagConvExtSenOffTm);
	p_diInMagConvMidSenOnTm ACCESS ADR(diInMagConvMidSenOnTm);
	p_diInMagConvMidSenOffTm ACCESS ADR(diInMagConvMidSenOffTm);
	
	p_diOutMagConvEntSenOnTm ACCESS ADR(diOutMagConvEntSenOnTm);
	p_diOutMagConvEntSenOffTm ACCESS ADR(diOutMagConvEntSenOffTm);
	p_diOutMagConvExtSenOnTm ACCESS ADR(diOutMagConvExtSenOnTm);
	p_diOutMagConvExtSenOffTm ACCESS ADR(diOutMagConvExtSenOffTm);
	p_diOutMagConvMidSenOnTm ACCESS ADR(diOutMagConvMidSenOnTm);
	p_diOutMagConvMidSenOffTm ACCESS ADR(diOutMagConvMidSenOffTm);
	
	p_diInMagConv2EntSenOnTm ACCESS ADR(diInMagConv2EntSenOnTm);
	p_diInMagConv2EntSenOffTm ACCESS ADR(diInMagConv2EntSenOffTm);
	p_diInMagConv2ExtSenOnTm ACCESS ADR(diInMagConv2ExtSenOnTm);
	p_diInMagConv2ExtSenOffTm ACCESS ADR(diInMagConv2ExtSenOffTm);
	p_diInMagConv2MidSenOnTm ACCESS ADR(diInMagConv2MidSenOnTm);
	p_diInMagConv2MidSenOffTm ACCESS ADR(diInMagConv2MidSenOffTm);
	
	p_diOutMagConv2EntSenOnTm ACCESS ADR(diOutMagConv2EntSenOnTm);
	p_diOutMagConv2EntSenOffTm ACCESS ADR(diOutMagConv2EntSenOffTm);
	p_diOutMagConv2ExtSenOnTm ACCESS ADR(diOutMagConv2ExtSenOnTm);
	p_diOutMagConv2ExtSenOffTm ACCESS ADR(diOutMagConv2ExtSenOffTm);
	p_diOutMagConv2MidSenOnTm ACCESS ADR(diOutMagConv2MidSenOnTm);
	p_diOutMagConv2MidSenOffTm ACCESS ADR(diOutMagConv2MidSenOffTm);

//	p_eMidSenNcNoType		ACCESS ADR(eMidSenNcNoType);
END_ACTION
