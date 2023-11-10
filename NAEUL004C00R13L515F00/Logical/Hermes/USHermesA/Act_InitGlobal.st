(** 2021-08-01 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	p_eLinkMcParamUSCommMod ACCESS p_McParamUSCommAMod;
	
	//p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_bLinkDILeftSen ACCESS p_DIConvLftSen;
	//p_bLinkDIRightSen ACCESS p_DIConvRgtSen;

	p_eLinkTravLifULPosGo ACCESS p_OpsTravLifULPosGo;
	p_bLinkOpsTravLifULUSComm ACCESS p_OpsTravLifULUSComm;
	
//	p_bLinkOpsGConv1HvBrd ACCESS p_ConvHvBrd;
//	p_bLinkOpsGConv2HvBrd ACCESS p_OpsGConv2HvBrd; //Zone 2 and so on.
//	p_bLinkOpsGConv1StepChkInitDone ACCESS p_OpsConvStepChkInit;
//	p_bLinkOpsGConv2StepChkInitDone ACCESS p_OpsGConv2StepChkInitDone;  //Zone 2 and so on.
//	p_bLinkDIPresentSen ACCESS p_DIBrdStackPresentSen;

	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamHermesPrep;
	p_tyParam ACCESS p_HermesUSParam1;
	p_sIPAddr ACCESS p_HWInfoIPAddr;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	p_sMcId ACCESS p_McParamMcNm;
//	p_sRecipeNm ACCESS p_ProdRcpCurrRcp0Nm;
//	p_diWidthInUM ACCESS p_ProdRcpCurrRcp0Width;
	p_udiAliveIdleTimeInSec ACCESS p_NtParamUSHermesAAliveTmInSec;
	p_tConnTimeOut ACCESS p_NtParamUSHermesAConnTO;
	p_diTransferInTO ACCESS p_McParamTranInErrDlyTm;
	p_bInterruptSen ACCESS p_DIConvLftSen;
	p_bOpsRun ACCESS p_OpsRun;
	p_udiFileKeepDay ACCESS p_NtParamUSHermesAFileKeepDay;
	p_sProgNm ACCESS p_NtParamUSHermesAProgNm;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
//	p_bAccDataRdy ACCESS p_USHermesUSRdy;
	p_bRmtPrep ACCESS p_NtParamHermesRmtPrep;
	p_bRmtEn ACCESS p_McParamHermesRmtEn;
	p_bSvyPrep ACCESS p_NtParamHermesSvyPrep; 
	p_bSvyEn ACCESS p_McParamHermesSvyEn;
	pa_tyProdRcpList ACCESS p_ProdRcpCurrList;
	p_tyProdRcpCurrRcp ACCESS p_ProdRcpCurrRcp0;
	p_bMcParamMnlAccData ACCESS p_McParamMnlAccDat;
	p_bOpsGConv1HvBrd ACCESS p_PshrConvHvBrd;//p_ConvHvBrd; //Take Zone 1's Have Board
	//p_bManualInsertZoneHvBrd ACCESS p_ConvHvBrd; //Take Manual Insesrt Zone's Have Board
	//p_bManualInsertEndSen ACCESS p_DIConvRgtSen; //Manual insert sensor position, for example exit sensor of attached output conveyor, or Last Zone conveyor exit sensor
	p_bUIAccData ACCESS p_UIProdAccData;
	p_bQueryBoardInfo ACCESS p_UIQueryBoardInfo;
	p_sTopBarcode ACCESS p_UITravLifTopBarcode; 
	p_sBottomBarcode ACCESS p_UITravLifBottomBarcode; 
	p_tyHermesConfiguration ACCESS p_HermesConfiguration; 
	//p_bTransportFinished ACCESS p_DSHermesTransportFinishedSnd; //used to reset bManuallInsertLastZone
	
	
	p_bSiemensMcModeChgPrep ACCESS p_McParamSiemensPrep;          //ADD   Include ReplyWorkOrderID & Machine mode changeover
	p_usiLinkProdRcpCurrRcpMcMod ACCESS p_ProdRcpCurrRcp0McMod;      //Add
	p_bNewIncomingBoard ACCESS p_NewIncomingBoard;
	p_bQueryBypassWorkOrder ACCESS p_QueryBypassWorkOrder;
	
	p_bNtParamAutoRcpPrep ACCESS p_NtParamAutoRcpPrep;
	p_bMcParamAutoRcpDis  ACCESS p_McParamAutoRcpDisable;
	p_eNtParamAutoRcpPrecededBy ACCESS p_NtParamAutoRcpPrecededBy; 
	(* Always Change If Project Change *)
END_ACTION
