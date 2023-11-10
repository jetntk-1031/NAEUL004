(** 2018-12-10 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_eLinkAGVComProtocol ACCESS p_McParamAGVComProtocol;
	p_bLinkNtParamProjSOTSenPrep ACCESS p_NtParamProjSOTSenPrep;
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_bOpsTravLifULBypCurtainSenCtrl ACCESS p_OpsTravLifULBypCurtainSenCtrl;
	p_bOpsRun ACCESS p_OpsRun;
	p_bCurtainSenPrep ACCESS p_NtParamCurtainSenPrep;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_tyDISettings ACCESS p_NtParamDISettings;
	p_sProgNm ACCESS p_NtParamDIProgNm;
	
	p_diConvLftSenOnTm ACCESS p_McParamConvLftSenOnTm;
	p_diConvLftSenOffTm ACCESS p_McParamConvLftSenOffTm;
	p_diConvMidSenOnTm ACCESS p_McParamConvMidSenOnTm;
	p_diConvMidSenOffTm ACCESS p_McParamConvMidSenOffTm;
	p_diConvRgtSenOnTm ACCESS p_McParamConvRgtSenOnTm;
	p_diConvRgtSenOffTm ACCESS p_McParamConvRgtSenOffTm;
	p_diConvClrSenOnTm ACCESS p_McParamConvClrSenOnTm;
	p_diConvClrSenOffTm ACCESS p_McParamConvClrSenOffTm;
	
	p_diMagConvEntSenOnTm ACCESS p_McParamMagConvEntrySenOnTm;
	p_diMagConvEntSenOffTm ACCESS p_McParamMagConvEntrySenOffTm;
	p_diMagConvPresentSenOnTm ACCESS p_McParamMagConvPresentSenOnTm;
	p_diMagConvPresentSenOffTm ACCESS p_McParamMagConvPresentSenOffTm;
	
	p_tyBufferStat1 ACCESS p_Buffer1BffrStat;
	p_tyBufferStat2 ACCESS p_Buffer2BffrStat;
	p_tyBufferStat3 ACCESS p_Buffer3BffrStat;
	p_bSelfTest ACCESS p_OpsTravLifULSelfTest;
	p_bPshrConvHvBrd ACCESS p_PshrConvHvBrd;
	
	p_bUIAGVSimulationOn ACCESS p_UIAGVSimulationOn;
	p_tySOTSimulate1 ACCESS p_UISOTSimulationSig1;
	p_tySOTSimulate2 ACCESS p_UISOTSimulationSig2;
	p_tySOTSimulate3 ACCESS p_UISOTSimulationSig3;
	
	p_tyTagFromMes ACCESS p_TagFromMes;
	p_tyDO  ACCESS p_DO;
	p_eULMag ACCESS p_NtParamProjMag;
	p_bRstErrSafetyRlyRst ACCESS p_RstErrSafetyRlyRst;
	
	p_diConvLineAInletSenOnTm ACCESS p_McParamConvLineAInletSenOnTm;
	p_diConvLineAInletSenOffTm ACCESS p_McParamConvLineAInletSenOffTm;
	p_diConvLineBInletSenOnTm ACCESS p_McParamConvLineBInletSenOnTm;
	p_diConvLineBInletSenOffTm ACCESS p_McParamConvLineBInletSenOffTm;
	p_diConvUSWidthChkSenOnTm ACCESS p_McParamUSWidthChkSenOnTm;
	p_diConvUSWidthChkSenOffTm ACCESS p_McParamUSWidthChkSenOffTm;
	
	p_tyNtParamCurr ACCESS p_NtParamCurr;
	p_bMcParamUSWidthChkEn ACCESS p_McParamUSWidthChkEn;
	
	//MagConv IN/OUT
	p_diInMagConvEntSenOnTm ACCESS p_McParamInMagConvEntSenOnTm;
	p_diInMagConvEntSenOffTm ACCESS p_McParamInMagConvEntSenOffTm;
	p_diInMagConvExtSenOnTm ACCESS p_McParamInMagConvExtSenOnTm;
	p_diInMagConvExtSenOffTm ACCESS p_McParamInMagConvExtSenOffTm;
	p_diInMagConvMidSenOnTm ACCESS p_McParamInMagConvMidSenOnTm;
	p_diInMagConvMidSenOffTm ACCESS p_McParamInMagConvMidSenOffTm;
	
	p_diOutMagConvEntSenOnTm ACCESS p_McParamOutMagConvEntSenOnTm;
	p_diOutMagConvEntSenOffTm ACCESS p_McParamOutMagConvEntSenOffTm;
	p_diOutMagConvExtSenOnTm ACCESS p_McParamOutMagConvExtSenOnTm;
	p_diOutMagConvExtSenOffTm ACCESS p_McParamOutMagConvExtSenOffTm;
	p_diOutMagConvMidSenOnTm ACCESS p_McParamOutMagConvMidSenOnTm;
	p_diOutMagConvMidSenOffTm ACCESS p_McParamOutMagConvMidSenOffTm;

	p_diInMagConv2EntSenOnTm ACCESS p_McParamInMagConv2EntSenOnTm;
	p_diInMagConv2EntSenOffTm ACCESS p_McParamInMagConv2EntSenOffTm;
	p_diInMagConv2ExtSenOnTm ACCESS p_McParamInMagConv2ExtSenOnTm;
	p_diInMagConv2ExtSenOffTm ACCESS p_McParamInMagConv2ExtSenOffTm;
	p_diInMagConv2MidSenOnTm ACCESS p_McParamInMagConv2MidSenOnTm;
	p_diInMagConv2MidSenOffTm ACCESS p_McParamInMagConv2MidSenOffTm;
	
	p_diOutMagConv2EntSenOnTm ACCESS p_McParamOutMagConv2EntSenOnTm;
	p_diOutMagConv2EntSenOffTm ACCESS p_McParamOutMagConv2EntSenOffTm;
	p_diOutMagConv2ExtSenOnTm ACCESS p_McParamOutMagConv2ExtSenOnTm;
	p_diOutMagConv2ExtSenOffTm ACCESS p_McParamOutMagConv2ExtSenOffTm;
	p_diOutMagConv2MidSenOnTm ACCESS p_McParamOutMagConv2MidSenOnTm;
	p_diOutMagConv2MidSenOffTm ACCESS p_McParamOutMagConv2MidSenOffTm;
	
	p_bRstCurtainSen ACCESS p_UISafetyCurtainReset;
	p_bManual ACCESS p_UIMnlMod;

	p_eMidSenNcNoType ACCESS p_NtParamMidSenNcNo;
	

	(* Always Change If Project Change *)
	
END_ACTION
