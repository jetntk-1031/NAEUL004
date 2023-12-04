(** 2019-06-27 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_bLinkPshrConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bLinkOpsTravLifULInitDone ACCESS p_OpsTravLifULInitDone;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	p_sMcNm ACCESS p_McParamMcNm;
	p_bUSWidthChkPrep ACCESS p_NtParamUSWidthChkPrep;
	p_bUSWidthChkEn ACCESS p_McParamUSWidthChkEn;
	p_bUSWidthChkSen ACCESS p_DIUSWidthChkSen;
	p_tyCurrProdRcp ACCESS p_ProdRcpCurrRcp1;
	p_tyInternalReqProdRcp ACCESS p_ProdRcpCurrRcp0;	//Follower 1 Assign With Default Recipe
	p_sProgNm ACCESS p_NtParamFollower1ProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bWidth2Prep ACCESS p_NtParamLFWidth2Prep;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy;
	(* Always Change If Project Change *)
	
END_ACTION
