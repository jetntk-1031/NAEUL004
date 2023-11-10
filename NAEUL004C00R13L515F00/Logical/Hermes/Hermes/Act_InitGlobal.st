(** 2021-08-01 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	pa_tyLinkXMLTableDataBrdAvl1 ACCESS p_USHermesATableDataBrdAvl; //lane 1 B.A
	p_iLinkXMLTableDataBrdAvlTtlIdx1 ACCESS p_USHermesATableDataBrdAvlTtlIdx; //lane 1 B.A
//	pa_tyLinkXMLTableDataBrdAvl2 ACCESS p_USHermesTableDataBrdAvl2; //lane 2 B.A
//	p_iLinkXMLTableDataBrdAvlTtlIdx2 ACCESS p_USHermesTableDataBrdAvlTtlIdx2; //lane 2 B.A
//	pa_tyLinkXMLTableDataBrdAvl3 ACCESS p_USHermesTableDataBrdAvl3; //lane 3 B.A
//	p_iLinkXMLTableDataBrdAvlTtlIdx3 ACCESS p_USHermesTableDataBrdAvlTtlIdx3; //lane 3 B.A
//	pa_tyLinkXMLTableDataBrdAvl4 ACCESS p_USHermesTableDataBrdAvl4; //lane 4 B.A
//	p_iLinkXMLTableDataBrdAvlTtlIdx4 ACCESS p_USHermesTableDataBrdAvlTtlIdx4; //lane 4 B.A
	p_eLinkTravLifULPosGo ACCESS p_OpsTravLifULPosGo;
	p_bLinkOpsTravLifULInitDone ACCESS p_OpsTravLifULInitDone; //p_OpsInitConvStepInitDone;
//	p_bLinkOpsInitGConv1MidHvBrd ACCESS p_OpsInitConvMidHvBrd;
	p_bLinkOpsTravLifULEntBrd ACCESS p_OpsTravLifULEntBrd;
	p_bLinkOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;
	p_bLinkConvHvBrd ACCESS p_PshrConvHvBrd; //p_ConvHvBrd
	
	p_bLinkUSHermesTransporting ACCESS p_USHermesATransporting;
	p_bLinkUSSMEMATransporting ACCESS p_USSMEMAATransporting;
//	p_bLinkOpsGConv1StepEntBrd ACCESS p_OpsTravLifULEntBrd;// p_OpsConvStepEntBrd;
//	p_bLinkOpsInitGConv2StepInitDone ACCESS p_OpsInitGConv2StepInitDone;  //Zone2
//	p_bLinkOpsInitGConv2MidHvBrd ACCESS p_OpsInitGConv2MidHvBrd;  //Zone2
//	p_bLinkOpsInitGConv2EndHvBrd ACCESS p_OpsInitGConv2EndHvBrd;  //Zone2
//	p_bLinkOpsGConv2HvBrd ACCESS p_OpsGConv2HvBrd;  //Zone2
//	p_bLinkOpsGConv2StepEntBrd ACCESS p_OpsGConv2StepEntBrd;  //Zone2
//	p_bLinkUSSMEMA2Transporting ACCESS p_USSMEMA2Transporting;  //Zone2
	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamHermesPrep;
	pa_tyUSParam ACCESS p_UIHermesUSParamWr; //HMI US Configure from UI
	//pa_tyDSParam ACCESS p_UIHermesDSParamWr; //HMI DS Configure from UI
	p_tySvyParam ACCESS p_UIHermesSvyParamWr; //HMI Svy Configure from UI
	p_tyRmtSetConfiguration ACCESS p_RmtHermesSetConfiguration; //US,DS SetConfigure from RmtHermes
	p_tySvySetConfiguration ACCESS p_SvyHermesSetConfiguration; //US,DS SetConfigure from SvyHermes
	p_bRmtPrep ACCESS p_NtParamHermesRmtPrep;
	p_bRmtEn ACCESS p_McParamHermesRmtEn;
	p_bSvyPrep ACCESS p_NtParamHermesSvyPrep; 
	p_bSvyEn ACCESS p_McParamHermesSvyEn; 
	p_sRetainFileName1 ACCESS p_NtParamHermesRetainFileNm; //lane 1
//	p_sRetainFileName2 ACCESS p_NtParamHermesRetainFileNm2; //lane 2, rename to HermesL2.dat
//	p_sRetainFileName3 ACCESS p_NtParamHermesRetainFileNm3; //lane 3, rename to HermesL3.dat 
//	p_sRetainFileName4 ACCESS p_NtParamHermesRetainFileNm4; //lane 4, rename to HermesL4.dat 
	p_sConfigFileName ACCESS p_NtParamHermesConfigFileNm;
	p_sProgNm ACCESS p_NtParamHermesProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	p_bRmtHermesWriteConfig ACCESS p_RmtHermesWriteConfig; 
	p_bSvyHermesWriteConfig ACCESS p_SvyHermesWriteConfig; 
	p_bUISaveHMIConfigure ACCESS p_UISaveHMIConfigure; 
	p_bUISaveHMISvyConfig ACCESS p_UISaveHMISvyConfig; 
	p_sMcId ACCESS p_McParamMcNm;
	
	p_bRmtFoundIndexUS1 ACCESS p_RmtHermesFoundIndexUS1; 
	p_bRmtFoundIndexUS2 ACCESS p_RmtHermesFoundIndexUS2; 
	p_bRmtFoundIndexUS3 ACCESS p_RmtHermesFoundIndexUS3; 
	p_bRmtFoundIndexUS4 ACCESS p_RmtHermesFoundIndexUS4;
	p_bRmtFoundIndexDS1 ACCESS p_RmtHermesFoundIndexDS1; 
	p_bRmtFoundIndexDS2 ACCESS p_RmtHermesFoundIndexDS2; 
	p_bRmtFoundIndexDS3 ACCESS p_RmtHermesFoundIndexDS3; 
	p_bRmtFoundIndexDS4 ACCESS p_RmtHermesFoundIndexDS4;
	p_udiRmtIndexUS1 ACCESS p_RmtHermesIndexUS1; 
	p_udiRmtIndexUS2 ACCESS p_RmtHermesIndexUS2; 
	p_udiRmtIndexUS3 ACCESS p_RmtHermesIndexUS3; 
	p_udiRmtIndexUS4 ACCESS p_RmtHermesIndexUS4;
	p_udiRmtIndexDS1 ACCESS p_RmtHermesIndexDS1; 
	p_udiRmtIndexDS2 ACCESS p_RmtHermesIndexDS2; 
	p_udiRmtIndexDS3 ACCESS p_RmtHermesIndexDS3; 
	p_udiRmtIndexDS4 ACCESS p_RmtHermesIndexDS4;
	
	p_bSvyFoundIndexUS1 ACCESS p_SvyHermesFoundIndexUS1; 
	p_bSvyFoundIndexUS2 ACCESS p_SvyHermesFoundIndexUS2; 
	p_bSvyFoundIndexUS3 ACCESS p_SvyHermesFoundIndexUS3; 
	p_bSvyFoundIndexUS4 ACCESS p_SvyHermesFoundIndexUS4;
	p_bSvyFoundIndexDS1 ACCESS p_SvyHermesFoundIndexDS1; 
	p_bSvyFoundIndexDS2 ACCESS p_SvyHermesFoundIndexDS2; 
	p_bSvyFoundIndexDS3 ACCESS p_SvyHermesFoundIndexDS3; 
	p_bSvyFoundIndexDS4 ACCESS p_SvyHermesFoundIndexDS4;
	p_udiSvyIndexUS1 ACCESS p_SvyHermesIndexUS1; 
	p_udiSvyIndexUS2 ACCESS p_SvyHermesIndexUS2; 
	p_udiSvyIndexUS3 ACCESS p_SvyHermesIndexUS3; 
	p_udiSvyIndexUS4 ACCESS p_SvyHermesIndexUS4;
	p_udiSvyIndexDS1 ACCESS p_SvyHermesIndexDS1; 
	p_udiSvyIndexDS2 ACCESS p_SvyHermesIndexDS2; 
	p_udiSvyIndexDS3 ACCESS p_SvyHermesIndexDS3; 
	p_udiSvyIndexDS4 ACCESS p_SvyHermesIndexDS4;
	
	
	p_eLinkMcParamUSACommMod ACCESS p_McParamUSCommAMod;
	p_eLinkMcParamUSBCommMod ACCESS p_McParamUSCommBMod;
	
	p_bLinkDIRightSen ACCESS p_DIConvRgtSen;
	p_bLinkDIClrSen ACCESS p_DIConvClrSen;
	
	
	(* Always Change If Project Change *)
END_ACTION
