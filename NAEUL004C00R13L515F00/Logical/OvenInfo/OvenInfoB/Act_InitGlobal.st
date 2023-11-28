(** 2019-04-04 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkNtParamPrepB ACCESS p_NtParamProjLaneBPrep;
	p_bLinkNtParamOvenInfoPrep ACCESS p_NtParamOvenInfoPrep;
	p_bLinkOpsStatusRun ACCESS p_OpsStatusRun;
//	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp2McMod;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	p_eLinkConvStat ACCESS p_PshrConvStat;
	p_bLinkConvHvBrd ACCESS p_PshrConvHvBrd;
	
	//Pass Data To Internal Use
	p_eAct ACCESS p_UIOvenInfoBAct;
	p_bEn ACCESS p_McParamOvenEn;
	p_bPrepExtdd ACCESS p_NtParamOvenInfoExtdPrep;
	p_bEnExtdd ACCESS p_McParamExtdOvenEn;
	p_bManual ACCESS p_UIMnlMod;
	p_diBffrMtySlt ACCESS p_BufferMagBBffrMtySlt;
//	p_diMinBffr ACCESS p_ProdRcpCurrRcp2MinReqFreeBffr;
	p_diAddBffr ACCESS p_McParamOvenMaxBffr;
	p_diSetBrdInOven ACCESS p_UIOvenInfoSetBrdInOvenB;
	p_bCntUp ACCESS p_DIOvenInfeedSigB;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;

	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	(* Always Change If Project Change *)
	
END_ACTION
