(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_bLinkUIBypsInitConv ACCESS p_UIOpsBypsInitConv;
	p_bLinkDISafetyRlySig ACCESS p_DISafetyRlySig;
	p_bLinkDIRgtSen ACCESS p_DIConvRgtSen;
	p_bLinkDIClrSen ACCESS p_DIConvClrSen;
//	p_usiLinkMcParamProdSelMcMod ACCESS p_ProdRcpCurrRcp1McMod;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	p_eLinkMcParamUSCommAMod ACCESS p_McParamUSCommAMod;
	p_eLinkMcParamUSCommBMod ACCESS p_McParamUSCommBMod;
	p_bLinkPshrRetSen ACCESS p_DIPusherRetRS;
	p_bLinkPshrRetSlwSen ACCESS p_DIPusherRetSlwSen;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_bOnDirMod ACCESS p_NtParamPshrConvOnDirMod;
	p_diInitTm ACCESS p_McParamConvInitTm;
	p_tMtrOffDlyTm ACCESS p_NtParamPshrConvMtrOffDlyTm;
	p_diTxInTimeOut ACCESS p_McParamTranInErrDlyTm;
	p_eDirection ACCESS p_NtParamProjConvDir;
	p_sProgNm ACCESS p_NtParamPshrConvProgNm;
	p_tPshrExtTO ACCESS p_NtParamPshrConvPshrExtTO;
	p_tPshrRetTO ACCESS p_NtParamPshrConvPshrRetTO;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bMiddleSen ACCESS p_DIConvMidSen;
	p_bPshrExtSen ACCESS p_DIPusherExtRS;
//	p_bPshrRetSen ACCESS p_DIPusherRetSlwSen;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	
	p_bSelfTest ACCESS p_OpsTravLifULSelfTest;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	(* Always Change If Project Change *)
	
END_ACTION
