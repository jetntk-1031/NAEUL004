(** 2019-06-12 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_eLinkNtParamProjMag ACCESS p_NtParamProjMag;
	p_bLinkNtParamProjMagConv1Prep ACCESS p_NtParamProjMag1ConvPrep;
	p_bLinkNtParamProjMagConv2Prep ACCESS p_NtParamProjMag2ConvPrep;
	p_bLinkNtParamProjMagConv3Prep ACCESS p_NtParamProjMag3ConvPrep;
	p_bLinkBffr1MagRemoved ACCESS p_Buffer1MagRemoved;
	p_bLinkBffr2MagRemoved ACCESS p_Buffer2MagRemoved;
	p_bLinkBffr3MagRemoved ACCESS p_Buffer3MagRemoved;
//	p_bLinkOpsMagUL1InitDone ACCESS p_OpsMagUL1InitDone;
//	p_bLinkOpsMagUL2InitDone ACCESS p_OpsMagUL2InitDone;
//	p_bLinkOpsMagUL3InitDone ACCESS p_OpsMagUL3InitDone;
	p_bLinkOpsMagConvUL1InitDone ACCESS p_OpsMagConvUL1InitDone;
	p_bLinkOpsMagConvUL2InitDone ACCESS p_OpsMagConvUL2InitDone;
	p_bLinkOpsMagConvUL3InitDone ACCESS p_OpsMagConvUL3InitDone;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp2;
	p_tyInternalReqProdRcp ACCESS p_Follower1UpdtProdRcp;	//Follower 2 Assign With Follower 1 Recipe
	p_sProgNm ACCESS p_NtParamFollower2ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bWidth2Prep ACCESS p_NtParamLFWidth2Prep;
	
	p_bCustomizedWidthPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_bNtParamAutoRcpF1ArbitraryType ACCESS p_NtParamAutoRcpF1ArbitraryType;
//	p_bPrep ACCESS ;
	(* Always Change If Project Change *)
	
END_ACTION
