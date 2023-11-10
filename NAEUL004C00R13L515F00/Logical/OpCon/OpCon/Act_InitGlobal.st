(** 2019-06-28 **)
ACTION Act_InitGlobal:
	
	(* Always Change If Project Change *)
	
	//Pass Data To Link
	p_bLinkStartupRun ACCESS p_StartupRun;
	
	p_eLinkConvDir ACCESS p_NtParamProjConvDir;
	p_bLinkDILeftSen ACCESS p_DIConvLftSen;
	p_bLinkDIRightSen ACCESS p_DIConvRgtSen;
	p_tyLinkAlarmCurrList ACCESS p_AlarmCurrList;
	p_bLinkOpConEn ACCESS p_McParamOpConEn;

	
	//Pass Data To Internal Use
	p_udiRstErr ACCESS p_RstErrReset;
	p_bPrep ACCESS p_NtParamProjOpConPrep;
//	p_bEn ACCESS p_McParamOpConEn;
	p_sIPAddr ACCESS p_HWInfoIPAddr; //client 
	p_sSvrIPAddr ACCESS p_McParamOpConIP;
	p_uiSvrIPPort ACCESS p_McParamOpConPort;
	p_tyDTStructure ACCESS p_TimeCurrDTStruct;
	p_dtCurrDT ACCESS p_TimeCurrDT;
	
	p_sRecipeNm ACCESS p_ProdRcpCurrRcp0Nm;
	p_diWidthInUM ACCESS p_ProdRcpCurrRcp0Width;
	p_bOpsRun ACCESS p_OpsRun;
	p_bNtSettingsLoadDone ACCESS p_StartupNtSettingsLoadDone;
	pa_tyProdRcpList ACCESS p_ProdRcpCurrList;
	p_tyProdRcpCurrRcp ACCESS p_ProdRcpCurrRcp0;
	
	p_tyOpConLocation ACCESS p_McParamOpConParam;
	p_bOpsTravLifULExitBrd ACCESS p_OpsTravLifULExitBrd;
	p_tyOpsTravLifULMsgReq ACCESS p_OpsTravLifULMsgReq;
	p_sOpsTravLifULBarcode ACCESS p_OpsTravLifULBarcode;
	p_tyOpsTravLifULPartProcessItms ACCESS p_OpsTravLifULPartProcessItms; //new
	pas_OpsTravLifULMagEntered ACCESS p_OpsTravLifULMagEntered;
	p_tyOpsMagConvUL1MsgReq ACCESS p_OpsMagConvUL1MsgReq;
	(* Always Change If Project Change *)
	
END_ACTION
