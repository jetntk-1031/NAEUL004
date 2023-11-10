(** 2019-04-09 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkOpsRun ACCESS p_OpsRun;
	
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_eLinkOpsTravLifPosGo ACCESS p_OpsTravLifULPosGo;
	p_bLinkConvHvBrd ACCESS p_PshrConvHvBrd;
	p_bLinkNtParamUSWidthChkPrep ACCESS p_NtParamUSWidthChkPrep;
	p_bLinkMcParamUSWidthChkEn ACCESS p_McParamUSWidthChkEn;
	p_bLinkDIUSWidthChkSen ACCESS p_DIUSWidthChkSen;
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bManual ACCESS p_UIMnlMod;
	p_tyParam ACCESS p_McParamUSSMEMAAParam;
	p_diTransferInTO ACCESS p_McParamTranInErrDlyTm;
	p_bLeftSen ACCESS p_DIConvLftSen;
	p_bRightSen ACCESS p_DIConvRgtSen;
	p_bUBA ACCESS p_DIUBAA;
	p_bUBAStat ACCESS p_DIUBAAStat;
	p_bVirtualEn ACCESS p_UIVSMEMAUSAEn;
	p_bUBAVirtual ACCESS p_UIVSMEMAUBAA;
	p_bUBAStatVirtual ACCESS p_UIVSMEMAUBAAStat;
	p_tRstDlyTm ACCESS p_NtParamUSSMEMAARstDlyTm;
	p_tSigInChkTm ACCESS p_NtParamUSSMEMAASigInChkTm;
	p_sProgNm ACCESS p_NtParamUSSMEMAAProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bLinkOpsTravLifULUSComm ACCESS p_OpsTravLifULUSComm;
	(* Always Change If Project Change *)
	
END_ACTION
